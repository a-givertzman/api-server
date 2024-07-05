-- Координаты отметок заглубления на корпусе судна 
-- относительно центра, м
-- Z | X | Y
DROP TABLE IF EXISTS draft_mark CASCADE;

CREATE TABLE if not exists draft_mark (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  z FLOAT8 NOT NULL,
  CONSTRAINT draft_mark_pk PRIMARY KEY (id),
  CONSTRAINT draft_mark_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT draft_mark_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, z)
);

-- Резальтаты расчета марок заглубления, м
DROP TABLE IF EXISTS draft_mark_result CASCADE;

CREATE TABLE if not exists draft_mark_result (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  draft_value FLOAT8 NOT NULL,
  CONSTRAINT draft_mark_result_pk PRIMARY KEY (id),
  CONSTRAINT draft_mark_result_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT draft_mark_result_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, draft_value)
);
