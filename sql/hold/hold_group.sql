--
-- Compartments (holds) that can be divided by installing bulkheads;
--
DROP TABLE IF EXISTS hold_group CASCADE;

CREATE TABLE IF NOT EXISTS hold_group (
    id INT,
    -- Global compartment identifier; 
    space_id INT NOT NULL,
    -- Name of hold_group;
    name TEXT NOT NULL UNIQUE,
    CONSTRAINT hold_group_pk PRIMARY KEY (id)
);