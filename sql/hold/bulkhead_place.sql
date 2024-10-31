--
-- Place (aka compartment) in which a bulkhead can be installed
--
DROP TABLE IF EXISTS bulkhead_place CASCADE;

CREATE TABLE IF NOT EXISTS bulkhead_place (
    id INT,
    -- ID of project for this hold_part;
    project_id INT,
    -- ID of ship for this hold_part;
    ship_id INT NOT NULL,
    -- Global compartment identifier; 
    space_id INT,
    -- Global compartment code from documentation; 
    code TEXT,
    -- Name of bulkhead_place;
    name_rus TEXT NOT NULL,
    name_engl TEXT,
    -- ID of bulkhead that is installed at this place;
    -- 1 to 1 relationship;
    bulkhead_id INT,
    -- hold_group ID to which this bulkhead_place belongs;
    hold_group_id INT NOT NULL,
    -- Coordinate of left border of bulkhead_place, measured in meters from midship;
    bound_x1 FLOAT8 NOT NULL,
    -- Coordinate of right border of bulkhead_place, measured in meters from midship;
    bound_x2 FLOAT8 NOT NULL,
    -- Longitudinal center of gravity for bulkhead_place;
    mass_shift_x FLOAT8 NOT NULL,
    -- Transverse center of gravity for bulkhead_place;
    mass_shift_y FLOAT8 NOT NULL,
    -- Vertical center of gravity for bulkhead_place;
    mass_shift_z FLOAT8 NOT NULL,
    CONSTRAINT bulkhead_place_pk PRIMARY KEY (id),
    CONSTRAINT bulkhead_place_bulkhead_fk FOREIGN KEY (bulkhead_id) REFERENCES bulkhead (id),
    CONSTRAINT bulkhead_place_hold_group_fk FOREIGN KEY (hold_group_id) REFERENCES hold_group (id),
    CONSTRAINT bulkhead_place_bound_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT bulkhead_place_mass_shift_x_check CHECK (
        bound_x1 <= mass_shift_x
        AND mass_shift_x <= bound_x2
    ),
    CONSTRAINT bulkhead_place_space_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id),
    CONSTRAINT bulkhead_place_bulkhead_id_unique UNIQUE (project_id, ship_id, bulkhead_id),
    CONSTRAINT bulkhead_place_code_unique UNIQUE (project_id, ship_id, code),
    CONSTRAINT bulkhead_place_code_check CHECK(char_length(code) <= 50),
    CONSTRAINT bulkhead_place_name_rus_unique UNIQUE (project_id, ship_id, name_rus),
    CONSTRAINT bulkhead_place_name_rus_check CHECK(char_length(name_rus) <= 100),
    CONSTRAINT bulkhead_place_name_engl_unique UNIQUE (project_id, ship_id, name_engl),
    CONSTRAINT bulkhead_place_name_engl_check CHECK(char_length(name_engl) <= 100)
);