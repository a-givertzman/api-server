--
-- Place (aka compartment) in which a bulkhead can be installed
--
DROP TABLE IF EXISTS bulkhead_place CASCADE;

CREATE TABLE IF NOT EXISTS bulkhead_place (
    id INT,
    -- Name of bulkhead_place;
    name TEXT NOT NULL,
    -- Coordinate of left border of bulkhead_place, measured in meters from midship;
    bound_x1 FLOAT8 NOT NULL,
    -- Coordinate of right border of bulkhead_place, measured in meters from midship;
    bound_x2 FLOAT8 NOT NULL,
    -- Longitudinal center of gravity for bulkhead_place;
    mass_shif_x FLOAT8 NOT NULL,
    -- Transverse center of gravity for bulkhead_place;
    mass_shif_y FLOAT8 NOT NULL,
    -- Vertical center of gravity for bulkhead_place;
    mass_shif_z FLOAT8 NOT NULL,
    CONSTRAINT bulkhead_place_pk PRIMARY KEY (id),
    CONSTRAINT bulkhead_place_bound_x_check CHECK (bound_x1 <= bound_x2),
    CONSTRAINT bulkhead_place_mass_shift_x_check CHECK (
        bound_x1 <= mass_shif_x
        AND mass_shif_x <= bound_x2
    )
);