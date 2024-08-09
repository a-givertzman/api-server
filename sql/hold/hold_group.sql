--
-- Compartments (holds) that can be divided by installing bulkheads;
--
DROP TABLE IF EXISTS hold_group CASCADE;

CREATE TABLE IF NOT EXISTS hold_group (
    id INT,
    -- ID of project for this hold_part;
    project_id INT,
    -- ID of ship for this hold_part;
    ship_id INT NOT NULL,
    -- Global compartment identifier; 
    space_id INT NOT NULL,
    -- Name of hold_group;
    name TEXT NOT NULL UNIQUE,
    CONSTRAINT hold_group_pk PRIMARY KEY (id)
);