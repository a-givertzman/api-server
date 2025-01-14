-- Relation to store voyage information
DROP TABLE IF EXISTS voyage CASCADE;

CREATE TABLE IF NOT EXISTS voyage (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    ship_id INT NOT NULL, -- ID of the ship of the voyage
    project_id INT, -- ID of the project of the voyage
    name TEXT, -- Name of the voyage
    code TEXT, -- Code of the voyage
    description TEXT, -- Description of the voyage
    density FLOAT8 NOT NULL DEFAULT 1.025, -- Seawater density t/m^3
    operational_speed FLOAT8 NOT NULL, -- Operational speed, knot
    wetting_timber FLOAT8 NOT NULL DEFAULT 10, -- Wetting of deck timber, %
    icing_type_id INT NOT NULL DEFAULT 1,
    icing_timber_type_id INT NOT NULL DEFAULT 1,
    water_area_id INT NOT NULL DEFAULT 1,
    load_line_id INT NOT NULL DEFAULT 1, 
    CONSTRAINT voyage_pk PRIMARY KEY (id),
    CONSTRAINT voyage_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 250),
    CONSTRAINT voyage_description_check CHECK(char_length(description) <= 1000),
    CONSTRAINT voyage_density_check CHECK(density > 0.9 AND density < 1.3),
    CONSTRAINT voyage_type_icing_type_fk FOREIGN KEY (icing_type_id) REFERENCES ship_icing (id),
    CONSTRAINT voyage_type_icing_timber_type_fk FOREIGN KEY (icing_timber_type_id) REFERENCES ship_icing_timber (id),
    CONSTRAINT voyage_type_water_area_type_fk FOREIGN KEY (water_area_id) REFERENCES ship_water_area (id),
    CONSTRAINT voyage_load_line_type_fk FOREIGN KEY (load_line_id) REFERENCES load_line_type (id)
);