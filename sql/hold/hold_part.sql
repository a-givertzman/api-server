--
-- Compartments into which holds are divided when installing bulkheads;
--
DROP TABLE IF EXISTS hold_part CASCADE;

CREATE TABLE IF NOT EXISTS hold_part (
    id INT,
    -- ID of project for this hold_part;
    project_id INT,
    -- ID of ship for this hold_part;
    ship_id INT NOT NULL,
    -- Global compartment identifier; 
    space_id INT NOT NULL,
    -- hold_group ID to which this hold_part belongs;
    group_id INT NOT NULL,
    -- Index of hold_part in corresponding hold_group;
    group_index INT NOT NULL,
    -- TODO: write
    left_bulkhead_place_id INT UNIQUE,
    -- TODO: write
    right_bulkhead_place_id INT UNIQUE,
    -- Coordinate of left border of hold_part, measured in meters from midship;
    bound_x1 FLOAT8 NOT NULL,
    -- Coordinate of right border of hold_part, measured in meters from midship;
    bound_x2 FLOAT8 NOT NULL,
    -- Maximum possible volume of bulk cargo that can be loaded into this part of hold compartment;
    volume_max FLOAT8 NOT NULL,
    -- JSON with svg path elements for projection of hold_part onto 3 main planes; 
    svg_paths TEXT,
    CONSTRAINT hold_part_pk PRIMARY KEY (id),
    CONSTRAINT hold_part_group_fk FOREIGN KEY (group_id) REFERENCES hold_group (id),
    CONSTRAINT hold_part_left_bulkhead_place_fk FOREIGN KEY (left_bulkhead_place_id) REFERENCES bulkhead_place (id),
    CONSTRAINT hold_part_right_bulkhead_place_fk FOREIGN KEY (right_bulkhead_place_id) REFERENCES bulkhead_place (id),
    CONSTRAINT hold_part_group_index_check CHECK (group_index > 0),
    CONSTRAINT hold_group_unique UNIQUE (group_id, group_index),
    CONSTRAINT hold_part_bound_x_check CHECK (bound_x1 <= bound_x2)
);