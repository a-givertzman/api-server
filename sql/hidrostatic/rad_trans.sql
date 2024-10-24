-- Поперечный метацентрический радиус в
-- зависимости от дифферента и объемного водоизмещения
-- Trim, m | V, м3 | ro, м
DROP TABLE IF EXISTS rad_trans CASCADE;

CREATE TABLE if not exists rad_trans (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  draught FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT rad_trans_pk PRIMARY KEY (id),
  CONSTRAINT rad_trans_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, draught),
  CONSTRAINT rad_trans_draught_check CHECK(draught >= 0)
);
