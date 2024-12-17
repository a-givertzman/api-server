--
-- Insert initial database checkpoint;
--
INSERT INTO
    custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
VALUES
    ('Sofia', 1, FALSE);