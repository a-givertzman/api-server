-- Угол входа верхней палубы в воду, зависимость 
-- угла от осадки судна
DROP TABLE IF EXISTS entry_angle CASCADE;

CREATE TABLE if not exists entry_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT entry_angle_pk PRIMARY KEY (id),
  CONSTRAINT entry_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT entry_angle_key_check CHECK(key >= 0),
  CONSTRAINT entry_angle_value_check CHECK(value >= 0)
);

INSERT INTO  entry_angle
    (ship_id, key, value)
VALUES
    (1, 2.3, 36.3),
    (1, 2.5, 34.2),
    (1, 3.0, 29.8),
    (1, 3.5, 25.8),
    (1, 4.0, 21.9),
    (1, 4.6, 16.7);