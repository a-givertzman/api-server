DROP TABLE IF EXISTS icing_area;

TRUNCATE TABLE icing_area;

CREATE TABLE if not exists icing_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  area_type TEXT NOT NULL,
  area_value REAL NOT NULL,
  bound_x1 TEXT NOT NULL,
  bound_x2 TEXT NOT NULL,  
  bound_type TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT icing_area_pk PRIMARY KEY (id),
  CONSTRAINT icing_area_key_unique UNIQUE (ship_id, name),
  CONSTRAINT icing_area_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT icing_area_type_check CHECK(char_length(area_type) <= 50),
  CONSTRAINT icing_area_value_check CHECK(area_value > 0),
  CONSTRAINT icing_area_x1_check CHECK(char_length(bound_x1) <= 50),
  CONSTRAINT icing_area_x2_check CHECK(char_length(bound_x2) <= 50),
  CONSTRAINT icing_area_bound_type_check CHECK(char_length(bound_type) <= 50),
  CONSTRAINT icing_area_unit_check CHECK(char_length(unit) <= 10)
);
