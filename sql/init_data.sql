--
-- Insert checkpoints with tests for Sofia 
--

-- Test 1
\i ./sql/Sofia/test/SSS_Sofia_test1.sql
INSERT INTO
    custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
VALUES
    ('Test 1', 1, FALSE);
UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- Test 2
\i ./sql/Sofia/test/SSS_Sofia_test2.sql
INSERT INTO
    custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
VALUES
    ('Test 2', 1, FALSE);
UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- Test 3
\i ./sql/Sofia/test/SSS_Sofia_test3.sql
INSERT INTO
    custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
VALUES
    ('Test 3', 1, FALSE);
UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- Test 4
\i ./sql/Sofia/test/SSS_Sofia_test4.sql
INSERT INTO
    custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
VALUES
    ('Test 4', 1, FALSE);
UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- Test 5, as default loading
\i ./sql/Sofia/test/SSS_Sofia_test5.sql
-- INSERT INTO
--     custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
-- VALUES
--     ('Test 5', 1, FALSE);
-- UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- -- Test 6
-- \i ./sql/Sofia/test/SSS_Sofia_test6.sql
-- INSERT INTO
--     custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
-- VALUES
--     ('Test 6', 1, FALSE);
-- UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';

-- -- Test 7
-- \i ./sql/Sofia/test/SSS_Sofia_test7.sql
-- INSERT INTO
--     custom_metadata.db_checkpoint (name, database_info_id, is_deletable)
-- VALUES
--     ('Test 7', 1, FALSE);
-- UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Empty';


-- Load default data for Sofia
-- UPDATE custom_metadata.db_checkpoint SET is_active = TRUE WHERE name = 'Test 5';