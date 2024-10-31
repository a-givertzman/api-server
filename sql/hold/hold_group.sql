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
    name_rus TEXT NOT NULL,
    name_engl TEXT,
    CONSTRAINT hold_group_pk PRIMARY KEY (id),
    CONSTRAINT hold_group_name_rus_unique UNIQUE (project_id, ship_id, name_rus),
    CONSTRAINT hold_group_name_rus_check CHECK(char_length(name_rus) <= 100),
    CONSTRAINT hold_group_name_engl_unique UNIQUE (project_id, ship_id, name_engl),
    CONSTRAINT hold_group_name_engl_check CHECK(char_length(name_engl) <= 100)
);