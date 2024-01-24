/*
    PROCESS EVENT
*/
CREATE TABLE IF NOT EXISTS event (
    uid         BIGSERIAL PRIMARY KEY, --'1.000000000000', --COMMENT 'Идентификатор записи',
    timestamp   TIMESTAMP NOT NULL,
    pid         int2 NOT NULL,                      --COMMENT 'Идентификатор тэга.',
    value       int2 NOT NULL,                      --COMMENT 'Значение тэга 0..255, аварийно если >0.',
    status      int2 NOT NULL                       --COMMENT 'DsStatus as 0..255',
); 
comment on table event is 'События. Только тэги дискретных значений, регистрируется 0 - как норма, > 0 - как авария.';
CREATE INDEX idx_event_timestamp ON event (timestamp ASC);

CREATE TABLE
    IF NOT EXISTS event_utils (
        id SERIAL PRIMARY KEY,
        row_count BIGINT,
        row_limit BIGINT,
        purge_batch_size INT,
        purge_shift_size INT,
        is_purge_running BOOLEAN
    );

INSERT INTO
    event_utils (
        row_count,
        row_limit,
        purge_batch_size,
        purge_shift_size,
        is_purge_running
    )
VALUES
    (0, 6000000, 1000, 1000, 'f');

CREATE OR REPLACE FUNCTION event_purge_records()
RETURNS void 
LANGUAGE plpgsql AS $$
DECLARE
    deleted INT;
    to_delete INT;
    batch_size INT;
    is_purge_possible BOOLEAN;
BEGIN
    SELECT (row_count - row_limit + purge_shift_size), purge_batch_size
    FROM event_utils INTO to_delete, batch_size;
    
    WITH upd_result AS (
        UPDATE event_utils SET is_purge_running = true WHERE id = 1 AND is_purge_running = false
        RETURNING *
    ) SELECT count(*) = 1 FROM upd_result INTO is_purge_possible;

    IF is_purge_possible THEN
        deleted := 0;
    
        WHILE (to_delete - deleted) > batch_size LOOP
            WITH del_result AS (
                DELETE FROM event
                WHERE ctid IN (
                    SELECT ctid FROM event
                    ORDER BY timestamp, uid ASC
                    LIMIT batch_size
                ) RETURNING *
            ) SELECT (count(*) + deleted) FROM del_result into deleted;
        END LOOP;

        DELETE FROM event WHERE ctid IN (
            SELECT ctid FROM event
            ORDER BY timestamp, uid ASC
            LIMIT (to_delete - deleted)
        );

        UPDATE event_utils SET is_purge_running = false WHERE id = 1;
    END IF;
END;
$$;

CREATE OR REPLACE FUNCTION event_check_for_purge()
RETURNS void 
LANGUAGE plpgsql
AS $$
DECLARE
    is_purge_needed BOOLEAN;
BEGIN
    SELECT row_count > row_limit FROM event_utils WHERE id = 1 INTO is_purge_needed;
    IF is_purge_needed THEN
        PERFORM event_purge_records();
    END IF;
END;
$$;

CREATE OR REPLACE FUNCTION event_counter_inc()
RETURNS trigger 
LANGUAGE plpgsql
AS $$
DECLARE
add_count INT;
BEGIN
    SELECT count(*) FROM new_tbl INTO add_count;
    UPDATE event_utils SET row_count = COALESCE(row_count, 0) + add_count WHERE id = 1;
    PERFORM event_check_for_purge();
    RETURN new;
END;
$$;

CREATE OR REPLACE TRIGGER event_insert_trigger
AFTER INSERT ON event
REFERENCING NEW TABLE AS new_tbl
FOR EACH STATEMENT
EXECUTE PROCEDURE  event_counter_inc();

CREATE OR REPLACE FUNCTION event_counter_dec()
RETURNS trigger 
LANGUAGE plpgsql
AS $$
DECLARE
    del_count INT;
BEGIN
    SELECT count(*) FROM old_tbl INTO del_count;
    UPDATE event_utils SET row_count = COALESCE(row_count, 0) - del_count WHERE id = 1;
    RETURN new;
END;
$$;

CREATE OR REPLACE TRIGGER event_delete_trigger
AFTER DELETE ON event
REFERENCING OLD TABLE AS old_tbl 
FOR EACH STATEMENT
EXECUTE PROCEDURE  event_counter_dec();