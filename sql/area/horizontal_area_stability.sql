-- Площадь горизонтальный поверхностей, m^2

DROP TABLE IF EXISTS horizontal_area_stability;

CREATE TABLE if not exists horizontal_area_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value REAL NOT NULL,
  shift_x REAL NOT NULL,
  shift_y REAL NOT NULL,
  shift_z REAL NOT NULL,
  CONSTRAINT horizontal_area_stability_pk PRIMARY KEY (id),
  CONSTRAINT horizontal_area_stability_key_unique UNIQUE (ship_id, name),
  CONSTRAINT horizontal_area_stability_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT horizontal_area_stability_value_check CHECK(value > 0)
);

INSERT INTO horizontal_area_stability
  (ship_id, name, value, shift_x, shift_y, shift_z)
VALUES
  (1, 'Палуба бака',              135.2,    48.9,  0,     9.5),
  (1, 'Верхняя палуба',           423.4,   -24.5,  0,     6.9),
  (1, 'Крышки люков трюма',       872.7,   -3.3,   0,     8.9),
  (1, 'Комингсы',                 37.8,    -3.6,   0,     8.2),
  (1, 'Палуба ходового мостика',  81.1,     42.0,  0,     12.4), 
  (1, 'Крыша рубки',              116.7,    47.4,  0,     16.0),   
  (1, 'Спасательная шлюпка',      13.9,    -57.9, -4.5,   13.0),  
  (1, 'Посадочная площадка',      4.2,     -57.9, -4.5,   6.8),  
  (1, 'Дежурная шлюпка',          6.6,      39.0,  0.0,   13.2),  
  (1, 'Дымовые трубы',            12.1,    -51.0,  0.0,   15.6);
