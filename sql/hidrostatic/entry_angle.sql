-- Угол входа верхней палубы в воду, зависимость 
-- угла от дифферента и осадки судна
DROP TABLE IF EXISTS entry_angle CASCADE;

CREATE TABLE if not exists entry_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  draught FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT entry_angle_pk PRIMARY KEY (id),
  CONSTRAINT entry_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, draught),
  CONSTRAINT entry_angle_draught_check CHECK(draught >= 0),
  CONSTRAINT entry_angle_value_check CHECK(value >= 0)
);
