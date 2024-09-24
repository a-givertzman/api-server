-- Угол заливания отверстий, зависимость 
-- угла от осадки судна
DROP TABLE IF EXISTS flooding_angle CASCADE;

CREATE TABLE if not exists  flooding_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT flooding_angle_pk PRIMARY KEY (id),
  CONSTRAINT flooding_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);
