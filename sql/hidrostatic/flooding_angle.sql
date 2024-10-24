-- Угол заливания отверстий, зависимость 
-- угла от дифферента и осадки судна
DROP TABLE IF EXISTS flooding_angle CASCADE;

CREATE TABLE if not exists  flooding_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  draught FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT flooding_angle_pk PRIMARY KEY (id),
  CONSTRAINT flooding_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, draught),
  CONSTRAINT flooding_angle_draught_check CHECK(draught >= 0)
);
