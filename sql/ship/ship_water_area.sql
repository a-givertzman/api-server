-- Relations to stores water area of ship
DROP TABLE IF EXISTS ship_water_area CASCADE;

CREATE TABLE IF NOT EXISTS ship_water_area (
    id INT NOT NULL, -- ID of the water area
    name TEXT NOT NULL, -- Name of the water area
    CONSTRAINT ship_water_area_pk PRIMARY KEY (id)
);

INSERT INTO ship_water_area
    (id, name)
VALUES
    (1, 'sea'),
    (2, 'harbor');