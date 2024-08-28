-- Ширина судна по ватерлинии
-- в зависимости от осадки
-- d, м | z, м
DROP TABLE IF EXISTS waterline_breadth CASCADE;

CREATE TABLE if not exists waterline_breadth (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT waterline_breadth_pk PRIMARY KEY (id),
  CONSTRAINT waterline_breadth_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key),
  CONSTRAINT waterline_breadth_key_check CHECK(key >= 0)
);

INSERT INTO waterline_breadth
  (ship_id, key, value)
VALUES
    (1, 0.5, 13.4),
    (1, 1, 13.4),
    (1, 1.5, 13.4),
    (1, 2, 13.4),
    (1, 2.5, 13.4),
    (1, 3, 13.4),
    (1, 3.5, 13.4),
    (1, 4, 13.4),
    (1, 4.5, 13.4),
    (1, 5, 13.4),
    (1, 5.5, 13.4),
    (1, 6, 13.4),
    (1, 6.5, 13.4),
    (1, 6.8, 13.4);