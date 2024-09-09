-- Осадки
DROP TABLE IF EXISTS load_line CASCADE;

CREATE TABLE if not exists  load_line (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  z FLOAT8 NOT NULL,
  CONSTRAINT load_line_pk PRIMARY KEY (id),
  CONSTRAINT load_line_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT load_line_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, z)
);
