-- Площадь поверхности парусности, m^2

DROP TABLE IF EXISTS vertical_area;

CREATE TABLE if not exists vertical_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value REAL NOT NULL,
  shift_z REAL,
  bound_x1 REAL NOT NULL,
  bound_x2 REAL NOT NULL,  
  bound_type TEXT NOT NULL,
  CONSTRAINT vertical_area_pk PRIMARY KEY (id),
  CONSTRAINT vertical_area_key_unique UNIQUE (ship_id, name),
  CONSTRAINT vertical_area_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT vertical_area_value_check CHECK(value > 0),
  CONSTRAINT vertical_area_bound_type_check CHECK(char_length(bound_type) <= 50)
);

INSERT INTO vertical_area
  (ship_id, name, shift_z, value, bound_x1, bound_x2, bound_type)
VALUES
  (1, 'Надводный борт',         4.13,  637.5,   -3,   187,  'frame'),
  (1, 'Кормовая часть',         9.34,  38.39,   10,   19,   'frame'),
  (1, 'Бак c фальшборотом',     8.23,  59.59,   150,  187,  'frame'),
  (1, 'Комингсы',               7.47,  107.9,   25,   149,  'frame'),
  (1, 'Крышки люков',           8.51,  59.70,   144,  150,  'frame'),
  (1, 'Кран для люковых крышек',12.14, 13.53,   -3,   187,  'frame'),
  (1, 'Нос',                    12.58, 101.14,  151,  176,  'frame'),
  (1, 'Корма',                  10.13, 18.04,   -3,   10,   'frame'),
  (1, 'Мачта носовая',          18.92, 0.86,    158,  175,  'frame'),
  (1, 'Мачта кормовая',         18.22, 1.25,    15,   18,   'frame');
