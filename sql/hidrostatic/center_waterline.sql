-- Отстояние центра тяжести ватерлинии по длине от миделя
-- (Абсцисса центра тяжести площади ватерлинии)
-- в зависимости от объемного водоизмещения
-- V, м3 | Xf, м
DROP TABLE IF EXISTS center_waterline CASCADE;

CREATE TABLE if not exists center_waterline (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT center_waterline_pk PRIMARY KEY (id),
  CONSTRAINT center_waterline_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);
