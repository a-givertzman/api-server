DROP TABLE IF EXISTS ship CASCADE;

CREATE TABLE if not exists ship (
  id INT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  project TEXT,
  year_of_built INT,
  place_of_built TEXT,
  IMO INT,
  MMSI INT,
  ship_type INT,
  CONSTRAINT ship_pk PRIMARY KEY (id),
  CONSTRAINT ship_unique UNIQUE NULLS NOT DISTINCT (name, project, year_of_built, place_of_built, IMO, MMSI),
  CONSTRAINT ship_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT ship_project_check CHECK(char_length(project) > 0 AND char_length(project) <= 50),
  CONSTRAINT ship_year_of_built_check CHECK(year_of_built > 1800 AND year_of_built <= 2200),
  CONSTRAINT ship_place_check CHECK(char_length(place_of_built) > 0 AND char_length(place_of_built) <= 50),
  CONSTRAINT ship_imo_check CHECK(IMO > 999999 AND IMO <= 99999999),
  CONSTRAINT ship_mmsi_check CHECK(MMSI > 99999999 AND MMSI <= 999999999),
  CONSTRAINT ship_type_general_fk FOREIGN KEY (ship_type) REFERENCES ship_type (id)
);
