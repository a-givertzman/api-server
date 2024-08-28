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

INSERT INTO delta_windage_area
  (ship_id, key, value)
VALUES
    (1, 0.5, -98.3),
    (1, 1, -44.2),
    (1, 1.5, 11.186),
    (1, 2, 67.8),
    (1, 2.5, 125.6),
    (1, 3, 184.5),
    (1, 3.5, 244),
    (1, 4, 303.6),
    (1, 4.5, 363.334),
    (1, 5, 423),
    (1, 5.5, 482.9),
    (1, 6, 542.846),
    (1, 6.5, 602.762),
    (1, 6.8, 638.716);