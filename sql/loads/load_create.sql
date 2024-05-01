DROP TABLE IF EXISTS load_space;

CREATE TABLE if not exists load_space (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT load_space_pk PRIMARY KEY (id),
  CONSTRAINT load_space_key_unique UNIQUE (ship_id, space_id, key),
  CONSTRAINT load_space_value_check CHECK(char_length(value) <= 50),
  CONSTRAINT load_space_type_check CHECK(char_length(value_type) <= 10),
  CONSTRAINT load_space_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT load_space_unit_check CHECK(char_length(unit) <= 10)
);
