DROP TABLE IF EXISTS ship_parameters CASCADE;

CREATE TABLE if not exists ship_parameters (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_parameters_pk PRIMARY KEY (id),
  CONSTRAINT ship_parameters_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT ship_parameters_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_parameters_value_check CHECK(char_length(value) > 0),
  CONSTRAINT ship_parameters_type_check CHECK(char_length(value_type) > 0 AND char_length(value_type) <= 10),
  CONSTRAINT ship_parameters_unit_check CHECK(char_length(unit) <= 10)
);

