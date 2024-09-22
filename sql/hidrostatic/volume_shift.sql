-- Отстояние по вертикали центра площади проекции 
-- подводной части корпуса на диаметральную плоскость 
-- в прямом положении судна на спокойной воде 
-- в зависимости от осадки
-- d, м | z, м
DROP TABLE IF EXISTS volume_shift CASCADE;

CREATE TABLE if not exists volume_shift (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT volume_shift_pk PRIMARY KEY (id),
  CONSTRAINT volume_shift_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT volume_shift_key_check CHECK(key >= 0)
);
