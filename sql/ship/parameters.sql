DROP TABLE IF EXISTS ship_parameters CASCADE;

CREATE TABLE if not exists ship_parameters (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  unit_id INT,
  CONSTRAINT ship_parameters_pk PRIMARY KEY (id),
  CONSTRAINT ship_parameters_ship_fk FOREIGN KEY (ship_id) REFERENCES ship (id),
  CONSTRAINT ship_parameters_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT ship_parameters_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_parameters_unit_fk FOREIGN KEY (unit_id) REFERENCES unit (id)
);

