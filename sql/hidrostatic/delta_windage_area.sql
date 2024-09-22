-- Разница в площадях парусности для текущей осадки и минимальной осадки
-- d, м | delta_А, м
DROP TABLE IF EXISTS delta_windage_area CASCADE;

CREATE TABLE if not exists delta_windage_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT delta_windage_area_pk PRIMARY KEY (id),
  CONSTRAINT delta_windage_area_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT delta_windage_area_key_check CHECK(key >= 0)
);
