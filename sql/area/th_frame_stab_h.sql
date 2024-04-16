-- Площадь горизонтальный поверхностей, m^2

DROP TABLE IF EXISTS horizontal_area_stability;

CREATE TABLE if not exists horizontal_area_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  area_value REAL NOT NULL,
  shift_x REAL NOT NULL,
  shift_y REAL NOT NULL,
  shift_z REAL NOT NULL,
  bound_x1 REAL NOT NULL,
  bound_x2 REAL NOT NULL,  
  bound_type TEXT NOT NULL,
  CONSTRAINT horizontal_area_stability_pk PRIMARY KEY (id),
  CONSTRAINT horizontal_area_stability_key_unique UNIQUE (ship_id, name),
  CONSTRAINT horizontal_area_stability_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT horizontal_area_stability_value_check CHECK(area_value > 0),
  CONSTRAINT horizontal_area_stability_bound_type_check CHECK(char_length(bound_type) <= 50)
);

INSERT INTO horizontal_area_stability
  (ship_id, name, area_value, shift_x, shift_y, shift_z, bound_x1, bound_x2, bound_type)
VALUES
  (1, 'Палуба бака',              135.2,    48.9,  0,     9.5,    150,  187,  'frame'),
  (1, 'Верхняя палуба',           423.4,   -24.5   0      6.9     -2,   13,   'frame'),
  (1, 'Крышки люков трюма',       872.7,   -3.3,   0,     8.9,    2,    150,  'frame'),
  (1, 'Комингсы',                 37.8,    -3.6,   0,     8.2,    2,    250,  'frame'),
  (1, 'Палуба ходового мостика',  81.1,     42.0,  0,     12.4,   150,  175,  'frame'), 
  (1, 'Крыша рубки',              116,7,    47.4,  0,     16.0,   160,  175,  'frame'),   
  (1, 'Спасательная шлюпка',      13.9,    -57.9, -4.5,   13.0,   2,    10,   'frame'),  
  (1, 'Посадочная площадка',      4.2,     -57.9, -4.5,   6.8,   -2,    5,    'frame'),  
  (1, 'Дежурная шлюпка',          6.6,      39.0,  0.0,   13.2,   152,  155,  'frame'),  
  (1, 'Дымовые трубы',            12.1,    -51.0,  0.0,   15.6,   12,   16,   'frame');
