-- Угол входа верхней палубы в воду, зависимость 
-- угла от осадки судна
CREATE TABLE if not exists entry_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT entry_angle_pk PRIMARY KEY (id),
  CONSTRAINT entry_angle_unique UNIQUE (ship_id, key)
);

INSERT INTO  entry_angle
    (ship_id, key, value)
VALUES
    (1, 2.3, 36.0),
    (1, 2.5, 34.0),
    (1, 3.0, 30.0),
    (1, 3.5, 27.0),
    (1, 4.0, 22.0),
    (1, 4.5, 18.0);