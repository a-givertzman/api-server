--
-- Schema for storing custom metadata
--
DROP SCHEMA IF EXISTS custom_metadata CASCADE;

CREATE SCHEMA custom_metadata;
--
-- Relation for storing a database related information;
--
DROP TABLE IF EXISTS custom_metadata.db_info CASCADE;

CREATE TABLE
    custom_metadata.db_info (
        id INT NOT NULL,
        database_name TEXT NOT NULL, -- Name of the database;
        database_owner TEXT NOT NULL, -- User name of the database owner;
        data_schema_name TEXT NOT NULL, -- Name of the database schema used for storing common data;
        backups_base_path TEXT NOT NULL, -- Base path for storing database backups;
        CONSTRAINT metadata_db_info_pk PRIMARY KEY (id),
        CONSTRAINT metadata_db_info_database_name_unique UNIQUE (database_name)
    );
--
-- Relation for storing a list of database checkpoints
--
DROP TABLE IF EXISTS custom_metadata.db_checkpoint CASCADE;

CREATE TABLE
    custom_metadata.db_checkpoint (
        id INT GENERATED ALWAYS AS IDENTITY, -- ID of checkpoint;
        name TEXT NOT NULL, -- Name to identify checkpoint in human-readable way;
        database_info_id INT NOT NULL, -- ID of database related info;
        dump_path TEXT NOT NULL, -- Path to database dump file for checkpoint;
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Time when checkpoint was created;
        last_loaded_at TIMESTAMP, -- Time when checkpoint was loaded;
        is_active BOOLEAN NOT NULL DEFAULT FALSE, -- Either checkpoint is source of the current state of the database or it is not, creating of new checkpoint will override the current one;
        CONSTRAINT metadata_db_checkpoint_pk PRIMARY KEY (id),
        CONSTRAINT metadata_db_checkpoint_database_info_id_fk FOREIGN KEY (database_info_id) REFERENCES custom_metadata.db_info (id)
    );
--
-- Function to validate checkpoint name
--
CREATE OR REPLACE FUNCTION custom_metadata.validate_checkpoint_name(checkpoint_name TEXT)
RETURNS VOID
LANGUAGE plpgsql AS $$
BEGIN
    IF checkpoint_name IS NULL THEN
        RAISE EXCEPTION 'Checkpoint name cannot be NULL';
    END IF;
    
    IF EXISTS (SELECT 1 FROM custom_metadata.db_checkpoint WHERE name = checkpoint_name) THEN
        RAISE EXCEPTION 'Checkpoint with name % already exists', checkpoint_name;
    END IF;
END; $$;
--
-- Function for creating a new database checkpoint
-- 
CREATE OR REPLACE FUNCTION custom_metadata.create_db_checkpoint()
RETURNS TRIGGER
LANGUAGE plpgsql AS $$
DECLARE
    dump_path TEXT;
    database_name TEXT;
    database_owner TEXT;
    data_schema_name TEXT;
BEGIN
    -- Check correctness of updated data;
    PERFORM custom_metadata.validate_checkpoint_name(NEW.name);

    -- Get database information, and generate dump path in format: <backups_base_path>/<uuid>.<database_name>.<schema_name>.dump;
    SELECT 
        di.backups_base_path || '/' || gen_random_uuid() || '.' || di.database_name || '.' || di.data_schema_name || '.dump',
        di.database_name,
        di.database_owner,
        di.data_schema_name
    INTO
        dump_path,
        database_name,
        database_owner,
        data_schema_name
    FROM
        custom_metadata.db_info as di
    WHERE
        di.id = NEW.database_info_id;
    
    -- Save checkpoint at generated dump path;
    EXECUTE format('COPY (SELECT 1) TO PROGRAM ''/bin/pg_dump -U %s -d %s -Fc --schema=%s --file=%s'' ', database_owner, database_name, data_schema_name, dump_path);
    
    -- Mark previous checkpoint as inactive;
    UPDATE custom_metadata.db_checkpoint SET is_active = FALSE WHERE is_active = TRUE;
    
    -- Set data for new checkpoint;
    NEW.is_active = TRUE; -- New checkpoint is active;
    -- NEW.is_data_changed = FALSE; -- New checkpoint has actual data;
    NEW.created_at = CURRENT_TIMESTAMP;
    NEW.last_loaded_at = CURRENT_TIMESTAMP;
    NEW.dump_path = dump_path;

    RETURN NEW;

EXCEPTION
        WHEN others THEN
            IF dump_path IS NOT NULL THEN
                EXECUTE format('COPY (SELECT 1) TO PROGRAM ''rm -f %s'' ', dump_path);
            END IF;
            RAISE EXCEPTION 'Error: %', SQLERRM;
END; $$;
--
-- Function for delete database checkpoint
-- 
CREATE OR REPLACE FUNCTION custom_metadata.delete_db_checkpoint()
RETURNS TRIGGER
LANGUAGE plpgsql AS $$
BEGIN
    -- Delete dump file;
    EXECUTE format('COPY (SELECT 1) TO PROGRAM ''rm -f %s'' ', OLD.dump_path);
    
    RETURN OLD;
END; $$;
--
-- Function for updating database checkpoint;
--
CREATE OR REPLACE FUNCTION custom_metadata.update_db_checkpoint()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    database_name TEXT;
    database_owner TEXT;
    data_schema_name TEXT;
BEGIN
    -- Check correctness of updated data;
    CASE
        WHEN OLD.database_info_id != NEW.database_info_id THEN
            RAISE EXCEPTION 'Updating database_info_id is not allowed';
        WHEN OLD.dump_path != NEW.dump_path THEN
            RAISE EXCEPTION 'Updating dump_path is not allowed';
        WHEN OLD.created_at != NEW.created_at THEN
            RAISE EXCEPTION 'Updating created_at is not allowed';
        WHEN OLD.last_loaded_at != NEW.last_loaded_at THEN
            RAISE EXCEPTION 'Updating last_loaded_at is not allowed';
        WHEN OLD.name != NEW.name THEN
            PERFORM custom_metadata.validate_checkpoint_name(NEW.name);
        ELSE
            -- do nothing
    END CASE;
    
    -- Get database info data;
    SELECT 
        di.database_name,
        di.database_owner,
        di.data_schema_name
    INTO
        database_name,
        database_owner,
        data_schema_name
    FROM
        custom_metadata.db_info as di
    WHERE
        di.id = NEW.database_info_id;
    
    -- Load checkpoint;
    IF OLD.is_active = FALSE AND NEW.is_active = TRUE THEN
        -- Restore database from dump file;
        EXECUTE format('COPY (SELECT 1) TO PROGRAM ''/bin/pg_restore -U %s -d %s --clean --single-transaction --exclude-schema=custom_metadata -Fc %s'' ', database_owner, database_name, NEW.dump_path);
        -- Mark previous checkpoint as inactive;
        UPDATE custom_metadata.db_checkpoint SET is_active = FALSE WHERE is_active = TRUE;
        -- Update last_loaded_at for current checkpoint;
        NEW.last_loaded_at = CURRENT_TIMESTAMP;
    END IF;

    RETURN NEW;
END; $$;
--
-- Trigger for creating a new database checkpoint on inserting new row in db_checkpoint
--
DROP TRIGGER IF EXISTS create_db_checkpoint_trigger ON custom_metadata.db_checkpoint CASCADE;

CREATE TRIGGER create_db_checkpoint_trigger BEFORE
INSERT ON custom_metadata.db_checkpoint FOR EACH ROW EXECUTE PROCEDURE custom_metadata.create_db_checkpoint();
--
-- Trigger for deleting database checkpoint on deleting row from db_checkpoint
--
DROP TRIGGER IF EXISTS delete_db_checkpoint_trigger ON custom_metadata.db_checkpoint CASCADE;

CREATE TRIGGER delete_db_checkpoint_trigger BEFORE
DELETE ON custom_metadata.db_checkpoint FOR EACH ROW EXECUTE PROCEDURE custom_metadata.delete_db_checkpoint();
--
-- Trigger for updating database checkpoint on updating row in db_checkpoint
--
DROP TRIGGER IF EXISTS update_db_checkpoint_trigger ON custom_metadata.db_checkpoint CASCADE;

CREATE TRIGGER update_db_checkpoint_trigger BEFORE
UPDATE ON custom_metadata.db_checkpoint FOR EACH ROW EXECUTE PROCEDURE custom_metadata.update_db_checkpoint();
--
-- Insert database info;
--
INSERT INTO
    custom_metadata.db_info (id, database_name, data_schema_name, database_owner, backups_base_path)
VALUES
    (1, 'sss-computing', 'public', 'test', '/tmp');