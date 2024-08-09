--
-- Bulkhead that can be used to divide holds;
--
DROP TABLE IF EXISTS bulkhead CASCADE;

CREATE TABLE IF NOT EXISTS bulkhead (
    id INT,
    -- ID of project for this hold_part;
    project_id INT,
    -- ID of ship for this hold_part;
    ship_id INT NOT NULL,
    -- Name of bulkhead;
    name TEXT NOT NULL,
    -- Mass of bulkhead, measured in tons;
    mass FLOAT8 NOT NULL,
    CONSTRAINT bulkhead_pk PRIMARY KEY (id),
    CONSTRAINT bulkhead_mass_check CHECK (mass >= 0.0)
);