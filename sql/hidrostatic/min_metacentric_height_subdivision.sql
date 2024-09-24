-- Минимальная метацентрическая высота деления на отсеки в
-- зависимости от средней осадки
-- D, м | h, м
DROP TABLE IF EXISTS min_metacentric_height_subdivision CASCADE;

CREATE TABLE if not exists min_metacentric_height_subdivision (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT min_metacentric_height_subdivision_pk PRIMARY KEY (id),
  CONSTRAINT min_metacentric_height_subdivision_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);
