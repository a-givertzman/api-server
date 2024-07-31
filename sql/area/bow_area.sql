-- Cуммарая площадь проекции на диаметральную плоскость от осадки, м^2
-- d [m] | A bow 0,15L [m2]

DROP TABLE IF EXISTS bow_area;

CREATE TABLE if not exists bow_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key REAL NOT NULL,
  value REAL NOT NULL,
  CONSTRAINT bow_area_pk PRIMARY KEY (id),
  CONSTRAINT bow_area_key_check CHECK(key >= 0),
  CONSTRAINT bow_area_value_check CHECK(value >= 0)
);