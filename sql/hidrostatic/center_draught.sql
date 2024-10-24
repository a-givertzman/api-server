-- Отстояние центра величины погруженной части судна в
-- зависимости от дифферента и объемного водоизмещения
-- Trim, m | V, м3 | Xc, м | Yc, м, | Zc, м
DROP TABLE IF EXISTS center_draught CASCADE;

CREATE TABLE if not exists center_draught (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  volume FLOAT8 NOT NULL,
  value_x FLOAT8 NOT NULL,
  value_y FLOAT8 NOT NULL,
  value_z FLOAT8 NOT NULL,
  CONSTRAINT center_draught_pk PRIMARY KEY (id),
  CONSTRAINT center_draught_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, volume)
);
