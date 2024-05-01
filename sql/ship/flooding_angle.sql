-- Угол заливания отверстий, зависимость 
-- угла от осадки судна
CREATE TABLE if not exists  flooding_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT flooding_angle_pk PRIMARY KEY (id),
  CONSTRAINT flooding_angle_unique UNIQUE (ship_id, key)
);

INSERT INTO  flooding_angle
    (ship_id, key, value)
VALUES
    (1, 2.3, 89.0),
    (1, 2.5, 84.0),
    (1, 3.0, 73.0),
    (1, 3.5, 61.0),
    (1, 4.0, 52.0),
    (1, 4.5, 44.0);