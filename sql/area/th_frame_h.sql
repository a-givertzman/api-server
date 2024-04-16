-- Площадь горизонтальный поверхностей, m^2

DROP TABLE IF EXISTS horizontal_area;

CREATE TABLE if not exists horizontal_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  area_value REAL NOT NULL,
  shift_z REAL,
  bound_x1 REAL NOT NULL,
  bound_x2 REAL NOT NULL,  
  bound_type TEXT NOT NULL,
  CONSTRAINT horizontal_area_pk PRIMARY KEY (id),
  CONSTRAINT horizontal_area_key_unique UNIQUE (ship_id, name),
  CONSTRAINT horizontal_area_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT horizontal_area_value_check CHECK(area_value > 0),
  CONSTRAINT horizontal_area_bound_type_check CHECK(char_length(bound_type) <= 50)
);

INSERT INTO horizontal_area
  (ship_id, name, shift_z, area_value, bound_x1, bound_x2, bound_type)
VALUES
  (1, 'Палуба бака 17 шпация',   31.52, 94.7104,  100.6298, 'real'),
  (1, 'Палуба бака 18 шпация',   18.01, 100.6298, 106.5494, 'real'),
  (1, 'Палуба бака 19 шпация',   25.05, 106.5494, 112.4686, 'real'),
  (1, 'Палуба бака 20 шпация',   60.62, 112.4686, 118.388, 'real'),
  (1, 'Верхняя палуба',          1334,  -3,       153,  'frame'), 
  (1, 'Палуба ходового мостика', 197.8, 150,      175,  'frame'), 
  (1, 'Спасательная шлюпка',     13.9,  -2,       10,   'frame'),  
  (1, 'Посадочная площадка',     4.2,   -2,       5,    'frame'),  
  (1, 'Дежурная шлюпка',         6.6,   152,      155,  'frame'),  
  (1, 'Дымовые трубы',           12.1,  12,       16,   'frame');
