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

INSERT INTO  flooding_angle
    (ship_id, key, value)
VALUES
    (1, 2.3, 88.9),
    (1, 2.5, 84.2),
    (1, 3.0, 72.9),
    (1, 3.5, 61.7),
    (1, 4.0, 52.2),
    (1, 4.6, 44.0);