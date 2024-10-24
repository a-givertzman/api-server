-- Длинна судна по ватерлинии
-- в зависимости от дифферента и осадки
-- Trim, m | d, м | z, м
DROP TABLE IF EXISTS waterline_length CASCADE;

CREATE TABLE if not exists waterline_length (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  draught FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT waterline_length_pk PRIMARY KEY (id),
  CONSTRAINT waterline_length_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, draught),
  CONSTRAINT waterline_length_draught_check CHECK(draught >= 0)
);
