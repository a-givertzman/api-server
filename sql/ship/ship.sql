DROP TABLE IF EXISTS ship CASCADE;

-- TODO: doc
CREATE TABLE IF NOT EXISTS ship (
  id INT NOT NULL,
  name TEXT NOT NULL,
  project TEXT,
  year_of_built INT, -- TODO: fix (incorrect translation, better 'year_of_build' or 'year_of_construction')
  place_of_built TEXT, -- TODO: fix (same as above)
  yard_of_build TEXT, -- Yard of build of the ship
  ship_builder_name TEXT, -- Builder of the ship
  ship_builder_hull_number TEXT, -- Ship builder hull number
  IMO INT,
  MMSI INT,
  call_sign TEXT, -- Call sign of the ship
  port_of_registry TEXT, -- Port of registration of the ship
  classification_society TEXT, -- Classification society of the ship
  registration_number TEXT, -- Registration number of the ship
  flag_state TEXT, -- State of flag of the ship
  ship_owner TEXT, -- Owner of the ship
  ship_owner_code TEXT, -- Code of owner of the ship
  ship_master TEXT, -- Captain of the ship
  ship_chief_mate TEXT, -- Assistant of captain of the ship
  ship_type_id INT NOT NULL,
  navigation_area_id INT NOT NULL DEFAULT 1,
  freeboard_type TEXT NOT NULL DEFAULT 'B',
  geometry_id INT NOT NULL,
  CONSTRAINT ship_pk PRIMARY KEY (id),
  CONSTRAINT ship_unique UNIQUE NULLS NOT DISTINCT (name, project, year_of_built, place_of_built, IMO, MMSI),
  CONSTRAINT ship_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT ship_project_check CHECK(char_length(project) > 0 AND char_length(project) <= 50),
  CONSTRAINT ship_year_of_built_check CHECK(year_of_built > 1800 AND year_of_built <= 2200),
  CONSTRAINT ship_place_check CHECK(char_length(place_of_built) > 0 AND char_length(place_of_built) <= 50),
  CONSTRAINT ship_imo_check CHECK(IMO > 999999 AND IMO <= 99999999),
  CONSTRAINT ship_mmsi_check CHECK(MMSI > 99999999 AND MMSI <= 999999999),
  CONSTRAINT ship_type_general_fk FOREIGN KEY (ship_type_id) REFERENCES ship_type (id),
  CONSTRAINT ship_type_navigation_area_type_fk FOREIGN KEY (navigation_area_id) REFERENCES navigation_area (id),
  CONSTRAINT ship_type_freeboard_type_check CHECK (char_length(freeboard_type) > 0 AND char_length(freeboard_type) < 10 ),
  CONSTRAINT ship_parameters_geometry_fk FOREIGN KEY (geometry_id) REFERENCES ship_geometry (id)
);