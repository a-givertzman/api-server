-- Площадь горизонтальный поверхностей, m^2

DROP TABLE IF EXISTS horizontal_area_stability;

CREATE TABLE if not exists horizontal_area_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value REAL NOT NULL,
  shift_x REAL NOT NULL,
  shift_y REAL NOT NULL,
  shift_z REAL NOT NULL,
  CONSTRAINT horizontal_area_stability_pk PRIMARY KEY (id),
  CONSTRAINT horizontal_area_stability_key_unique UNIQUE (ship_id, name),
  CONSTRAINT horizontal_area_stability_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT horizontal_area_stability_value_check CHECK(value > 0)
);
