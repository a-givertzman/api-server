-- Площадь поверхности парусности, m^2

DROP TABLE IF EXISTS vertical_area_strength;

CREATE TABLE if not exists vertical_area_strength (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value REAL NOT NULL,
  shift_z REAL,
  bound_x1 REAL NOT NULL,
  bound_x2 REAL NOT NULL,  
  CONSTRAINT vertical_area_strength_pk PRIMARY KEY (id),
  CONSTRAINT vertical_area_strength_key_unique UNIQUE (ship_id, name),
  CONSTRAINT vertical_area_strength_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT vertical_area_strength_value_check CHECK(value > 0),
  CONSTRAINT vertical_area_strength_bound_check CHECK(bound_x1 < bound_x2)
);

