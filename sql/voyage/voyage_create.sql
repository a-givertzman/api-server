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
    wave_length FLOAT8 NOT NULL DEFAULT 56.16, -- Length of wave, m
    course_angle FLOAT8 NOT NULL DEFAULT 270.0, -- Angle of vessel course in northeastern coordinate's, degrees
    wave_angle FLOAT8 NOT NULL DEFAULT 1.0, -- Wave heading angle in northeastern coordinate's, degrees // betta
    current_speed FLOAT8 NOT NULL DEFAULT 1.0, -- Current speed of vessel, m
    CONSTRAINT voyage_pk PRIMARY KEY (id),
    CONSTRAINT voyage_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 250),
    CONSTRAINT voyage_description_check CHECK(char_length(description) <= 1000),
    CONSTRAINT voyage_density_check CHECK(density > 0.9 AND density < 1.3),
    CONSTRAINT voyage_type_icing_type_fk FOREIGN KEY (icing_type_id) REFERENCES ship_icing (id),
    CONSTRAINT voyage_type_icing_timber_type_fk FOREIGN KEY (icing_timber_type_id) REFERENCES ship_icing_timber (id),
    CONSTRAINT voyage_type_water_area_type_fk FOREIGN KEY (water_area_id) REFERENCES ship_water_area (id),
    CONSTRAINT voyage_load_line_type_fk FOREIGN KEY (load_line_id) REFERENCES load_line_type (id),
    CONSTRAINT wave_length_check CHECK (wave_length > 1.6 AND wave_length < 351.0),
    CONSTRAINT course_angle_check CHECK (course_angle > 0.0 AND course_angle < 360.0),
    CONSTRAINT wave_angle_check CHECK (wave_angle > 0.0 AND wave_angle < 360.0),
    CONSTRAINT current_speed_check CHECK (current_speed > 1.0 AND current_speed < 15.0)
);
