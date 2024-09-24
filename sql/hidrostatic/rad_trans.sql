-- Поперечный метацентрический радиус в
-- зависимости от объемного водоизмещения
-- V, м3 | ro, м
DROP TABLE IF EXISTS rad_trans CASCADE;

CREATE TABLE if not exists rad_trans (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT rad_trans_pk PRIMARY KEY (id),
  CONSTRAINT rad_trans_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);
