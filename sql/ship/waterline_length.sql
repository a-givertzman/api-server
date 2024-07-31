-- Длинна судна по ватерлинии
-- в зависимости от осадки
-- d, м | z, м
DROP TABLE IF EXISTS waterline_length CASCADE;

CREATE TABLE if not exists waterline_length (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT waterline_length_pk PRIMARY KEY (id),
  CONSTRAINT waterline_length_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT waterline_length_key_check CHECK(key >= 0)
);

INSERT INTO waterline_length
  (ship_id, key, value)
VALUES
    (1, 0.5, 106.29),
    (1, 1, 109.53),
    (1, 1.5, 112.11),
    (1, 2, 114.47),
    (1, 2.5, 116.71),
    (1, 3, 118.88),
    (1, 3.5, 119.11),
    (1, 4, 119.30),
    (1, 4.5, 119.47),
    (1, 5, 119.60),
    (1, 5.5, 119.74),
    (1, 6, 119.81),
    (1, 6.5, 119.85),
    (1, 6.8, 119.85);