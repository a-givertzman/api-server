--
-- Table for conversion from code to space_id
--
DROP TABLE IF EXISTS hold_part_id CASCADE;

CREATE TABLE IF NOT EXISTS hold_part_id (
    id INT GENERATED ALWAYS AS IDENTITY,
    -- ID of project for this hold_part;
    project_id INT,
    -- ID of ship for this hold_part;
    ship_id INT NOT NULL,
    -- Global compartment code from documentation; 
    code TEXT,
    -- Global compartment identifier;     
    space_id INT NOT NULL,

    CONSTRAINT hold_part_id_pk PRIMARY KEY (id),
    CONSTRAINT hold_part_id_code_unique UNIQUE (project_id, ship_id, code),
    CONSTRAINT hold_part_id_space_id_unique UNIQUE (project_id, ship_id, space_id)
);