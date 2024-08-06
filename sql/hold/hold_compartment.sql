--
-- Hold compartment that is generated based on hold parts and installed bulkheads;
--
DROP TABLE IF EXISTS hold_compartment;

CREATE TABLE IF NOT EXISTS hold_compartment (
    id INT,
    -- hold_group ID to which this hold_compartment belongs;
    group_id INT NOT NULL,
    -- Index of first hold_part in corresponding hold_group;
    group_start_index INT NOT NULL,
    -- Index of last hold_part in corresponding hold_group;
    group_end_index INT NOT NULL,
    -- Coordinate of left border of hold_compartment, measured in meters from midship;
    bound_x1 FLOAT8 NOT NULL,
    -- Coordinate of right border of hold_compartment, measured in meters from midship;
    bound_x2 FLOAT8 NOT NULL,
    -- Longitudinal center of gravity for hold_compartment, measured in meters from midship;
    mass_shif_x FLOAT8 NOT NULL,
    -- Transverse center of gravity for hold_compartment, measured in meters from midship;
    mass_shif_y FLOAT8 NOT NULL,
    -- Vertical center of gravity for hold_compartment, measured in meters from midship;
    mass_shif_z FLOAT8 NOT NULL,
    -- -- Maximum possible volume of bulk cargo that can be loaded into this hold_compartment, measured in cubic meters;
    -- volume_max FLOAT8 NOT NULL,
    -- Mass of bulk cargo loaded into this hold_compartment, measured in tons;
    mass FLOAT8,
    -- Volume of bulk cargo loaded into this hold_compartment, measured in cubic meters;
    volume FLOAT8,
    -- Stowage factor of bulk cargo loaded into this hold_compartment; TODO: add value unit in comment;
    stowage_factor FLOAT8,
    CONSTRAINT hold_compartment_pk PRIMARY KEY (id),
    CONSTRAINT hold_compartment_group_fk FOREIGN KEY (group_id) REFERENCES hold_group (id),
    CONSTRAINT hold_compartment_group_start_fk FOREIGN KEY (group_id, group_start_index) REFERENCES hold_part (group_id, group_index),
    CONSTRAINT hold_compartment_group_end_fk FOREIGN KEY (group_id, group_end_index) REFERENCES hold_part (group_id, group_index),
    CONSTRAINT hold_compartment_group_index_check CHECK (
        group_start_index > 0
        AND group_end_index > 0
        AND group_start_index <= group_end_index
    ),
    CONSTRAINT hold_group_start_unique UNIQUE (group_id, group_start_index),
    CONSTRAINT hold_group_end_unique UNIQUE (group_id, group_end_index),
    CONSTRAINT hold_compartment_bound_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT hold_compartment_mass_shift_x_check CHECK (
        bound_x1 <= mass_shif_x
        AND mass_shif_x <= bound_x2
    )
);