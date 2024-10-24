-- Площадь ватерлинии
-- зависимость от дифферента и объемного водоизмещения
-- Trim, m | V, м3 | S, м^2
DROP TABLE IF EXISTS waterline_area CASCADE;

CREATE TABLE if not exists waterline_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  volume FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT waterline_area_pk PRIMARY KEY (id), 
  CONSTRAINT waterline_area_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, volume),
  CONSTRAINT waterline_area_volume_check CHECK(volume >= 0)
);
