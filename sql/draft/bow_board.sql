-- Высота борта на носовом перпендикуляре
DROP TABLE IF EXISTS bow_board CASCADE;

CREATE TABLE if not exists bow_board (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  criterion_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  z FLOAT8 NOT NULL,
  CONSTRAINT bow_board_pk PRIMARY KEY (id),
  CONSTRAINT bow_board_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT bow_board_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, z)
);
