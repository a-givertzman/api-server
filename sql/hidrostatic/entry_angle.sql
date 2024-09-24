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
