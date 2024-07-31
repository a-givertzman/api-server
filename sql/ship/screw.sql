-- Координаты и параметры винтов
DROP TABLE IF EXISTS screw CASCADE;

CREATE TABLE if not exists screw (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  z FLOAT8 NOT NULL,
  d FLOAT8 NOT NULL,
  CONSTRAINT screw_pk PRIMARY KEY (id),
  CONSTRAINT screw_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT screw_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, z),
  CONSTRAINT screw_d_check CHECK(d >= 0)
);