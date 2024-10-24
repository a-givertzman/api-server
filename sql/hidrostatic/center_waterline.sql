-- Отстояние центра тяжести ватерлинии по длине от миделя
-- (Абсцисса центра тяжести площади ватерлинии)
-- в зависимости от дифферента и объемного водоизмещения
-- Trim, m | V, м3 | Xf, м
DROP TABLE IF EXISTS center_waterline CASCADE;

CREATE TABLE if not exists center_waterline (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0,  
  volume FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT center_waterline_pk PRIMARY KEY (id),
  CONSTRAINT center_waterline_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, volume),
  CONSTRAINT center_waterline_volume_check CHECK(volume >= 0)
);
