-- Relation to store voyage information
DROP TABLE IF EXISTS voyage CASCADE;

CREATE TABLE IF NOT EXISTS voyage (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    ship_id INT NOT NULL, -- ID of the ship of the voyage
    project_id INT, -- ID of the project of the voyage
    name TEXT, -- Name of the voyage
    code TEXT, -- Code of the voyage
    description TEXT, -- Description of the voyage
    CONSTRAINT voyage_pk PRIMARY KEY (id),
    CONSTRAINT voyage_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 250),
    CONSTRAINT voyage_description_check CHECK(char_length(description) <= 1000)
);