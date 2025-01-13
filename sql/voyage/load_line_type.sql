-- Relation to store load line types
DROP TABLE IF EXISTS load_line_type CASCADE;

CREATE TABLE IF NOT EXISTS load_line_type (
    id INT NOT NULL, -- ID of the 
    name TEXT NOT NULL, -- Name of the 
    CONSTRAINT load_line_type_pk PRIMARY KEY (id)
);

INSERT INTO load_line_type
    (id, name)
VALUES
    (1, 'Summer'),
    (2, 'Winter'),
    (3, 'Winter North Atlantic'),
    (4, 'Tropical'),
    (5, 'Fresh water in summer'),
    (6, 'Tropical fresh water'),
    (7, 'Summer timber'),
    (8, 'Winter timber'),
    (9, 'Winter North Atlantic timber'),
    (10, 'Tropical timber'),
    (11, 'Fresh water in summer timber'),
    (12, 'Tropical fresh water timber'),
    (13, 'Subdivision LL');

-- Relations to store which load lines are on the ship in the current project
DROP TABLE IF EXISTS ship_available_load_line_types;

CREATE TABLE IF NOT EXISTS ship_available_load_line_types (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    ship_id INT NOT NULL, -- ID of the ship
    project_id INT, -- ID of the project
    load_line_type_id INT NOT NULL, -- ID of the load line type available on the ship
    is_active BOOLEAN NOT NULL DEFAULT FALSE, -- Either load line is currently applied or not
    CONSTRAINT ship_available_load_line_types_pk PRIMARY KEY (id),
    CONSTRAINT ship_available_load_line_types_fk FOREIGN KEY (load_line_type_id) REFERENCES load_line_type(id)
);