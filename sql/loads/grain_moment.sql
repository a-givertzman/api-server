-- Кренящий момент от смещения сыпучего груза
DROP TABLE IF EXISTS grain_moment CASCADE;

CREATE TABLE if not exists grain_moment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  level FLOAT8 NOT NULL,
  moment FLOAT8 NOT NULL,
  CONSTRAINT grain_moment_pk PRIMARY KEY (id),
  CONSTRAINT grain_moment_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id, level)
);
