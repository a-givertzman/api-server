-- Результат расчета остойчивости
DROP TABLE IF EXISTS result_stability;

CREATE TABLE IF NOT EXISTS result_stability (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
  title_eng TEXT NOT NULL,
  value1 FLOAT8,
  value2 FLOAT8,
  relation TEXT,
  unit_rus TEXT,
  unit_eng TEXT,
  description TEXT,
  CONSTRAINT result_stability_pk PRIMARY KEY (id),
  CONSTRAINT result_stability_id_unique UNIQUE (id),
  CONSTRAINT result_stability_check_title_rus CHECK(char_length(title_rus) <= 100),
  CONSTRAINT result_stability_check_ttitle_eng CHECK(char_length(title_eng) <= 100),
  CONSTRAINT result_stability_check_relation CHECK(char_length(relation) <= 50),
  CONSTRAINT result_stability_check_unit_rus CHECK(char_length(unit_rus) <= 50),
  CONSTRAINT result_stability_check_unit_eng CHECK(char_length(unit_eng) <= 50),
  CONSTRAINT result_stability_check_description CHECK(char_length(description) <= 1000)
);

TRUNCATE TABLE result_stability;

INSERT INTO result_stability
  (id, title_rus, title_eng, relation)
VALUES
  (1, 'Критерий погоды', 'Weather criterion', '>='),
  (11, 'Критерий ускорения', 'Acceleration criterion', '>=');

INSERT INTO result_stability
  (id, title_rus, title_eng, relation, unit_rus, unit_eng)
VALUES
  (2, 'Статический крен от ветра', 'Wind static heel', '<=', 'град', 'deg'),
  (3, 'Площадь ДСО до 30°', 'Area of LC up to 30°', '>=', 'м∙рад', 'm*rad'),
  (4, 'Площадь ДСО до 40°', 'Area of LC up to 40°', '>=', 'м∙рад', 'm*rad'),
  (5, 'Площадь ДСО от 30° до 40°', 'Area of LC between 30° & 40°', '>=', 'м∙рад', 'm*rad'),
  (6, 'Максимальное плечо ДСО', 'Maximum LC', '>=', 'м', 'm'),
  (7, 'Максимальное плечо ДСО при перевозке леса', 'Maximum LC with timber', '>=', 'м', 'm'),
  (8, 'Максимальное плечо ДСО при обледенении', 'Maximum LC with icing', '>=', 'м', 'm'),
  (9, 'Максимальный угол ДСО', 'Heel with maximum LC', '>=', 'м', 'm'),  
  (10, 'Исправленная метацентрическая высота', 'Correction metacentric hight', '>=', 'м', 'm'),
  (12, 'Крен на циркуляции', 'Heel on turning', '>=', 'град', 'deg'),
  (13, 'Крен от смещения зерна', 'Heel from grain displacement', '>=', 'град', 'deg'),
  (14, 'Площадь ДСО при смещении зерна', 'Area of LC from grain displacement', '>=', 'м∙рад', 'm*rad');
