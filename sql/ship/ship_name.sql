DROP TABLE IF EXISTS ship_name CASCADE;

CREATE TABLE if not exists ship_name (
  id INT GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  project TEXT,
  year_of_built INT,
  place_of_built TEXT,
  IMO INT,
  MMSI INT,
  CONSTRAINT ship_name_pk PRIMARY KEY (id),
  CONSTRAINT ship_name_unique UNIQUE NULLS NOT DISTINCT (name, project, year_of_built, place_of_built, IMO, MMSI),
  CONSTRAINT ship_name_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT ship_name_project_check CHECK(char_length(project) > 0 AND char_length(project) <= 50),
  CONSTRAINT ship_name_year_of_built_check CHECK(year_of_built > 1800 AND year_of_built <= 2200),
  CONSTRAINT ship_name_place_check CHECK(char_length(place_of_built) > 0 AND char_length(place_of_built) <= 50),
  CONSTRAINT ship_name_imo_check CHECK(IMO > 999999 AND IMO <= 99999999),
  CONSTRAINT ship_name_mmsi_check CHECK(MMSI > 99999999 AND MMSI <= 999999999)
);
