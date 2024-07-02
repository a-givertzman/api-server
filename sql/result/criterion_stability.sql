-- Результат расчета остойчивости
DROP TABLE IF EXISTS criterion_stability CASCADE;

DROP TYPE IF EXISTS relation_stability CASCADE;
DROP TYPE IF EXISTS unit_eng_stability CASCADE;
DROP TYPE IF EXISTS unit_rus_stability CASCADE;

CREATE TYPE relation_stability as enum ('<=', '>=');
CREATE TYPE unit_eng_stability as enum ('deg', 'm*rad', 'm', 'm^2', 'm^3', 't', 't∙m', 't∙m/cm', 'Pa', 'kN∙m', 'knot', 's');
CREATE TYPE unit_rus_stability as enum ('град', 'м∙рад', 'м', 'м^2', 'м^3', 'т', 'т∙м', 'т∙м/см', 'Па', 'кН∙м', 'уз', 'с');

CREATE TABLE IF NOT EXISTS criterion_stability (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
  title_eng TEXT NOT NULL,
  relation relation_stability,
  unit_rus unit_rus_stability,
  unit_eng unit_eng_stability,
  CONSTRAINT criterion_stability_pk PRIMARY KEY (id),
  CONSTRAINT criterion_stability_id_unique UNIQUE (id),
  CONSTRAINT criterion_stability_check_title_rus CHECK(char_length(title_rus) <= 100),
  CONSTRAINT criterion_stability_check_ttitle_eng CHECK(char_length(title_eng) <= 100)
);

TRUNCATE TABLE criterion_stability;

INSERT INTO criterion_stability
  (id, title_rus, title_eng, relation)
VALUES
  (1, 'Критерий погоды', 'Weather criterion', '>='),
  (13, 'Критерий ускорения', 'Acceleration criterion', '>=');

INSERT INTO criterion_stability
  (id, title_rus, title_eng, relation, unit_rus, unit_eng)
VALUES
  (2, 'Статический крен от ветра', 'Wind static heel', '<=', 'град', 'deg'),
  (3, 'Площадь ДСО до 30°', 'Area of LC up to 30°', '>=', 'м∙рад', 'm*rad'),
  (4, 'Площадь ДСО до 40°', 'Area of LC up to 40°', '>=', 'м∙рад', 'm*rad'),
  (5, 'Площадь ДСО до θ_lmax', 'Area of LC up to θ_lmax', '>=', 'м∙рад', 'm*rad'),
  (6, 'Площадь ДСО от 30° до 40°', 'Area of LC between 30° & 40°', '>=', 'м∙рад', 'm*rad'),
  (7, 'Максимальное плечо ДСО', 'Maximum LC', '>=', 'м', 'm'),
  (8, 'Максимальное плечо ДСО при перевозке леса', 'Maximum LC with timber', '>=', 'м', 'm'),
  (9, 'Максимальное плечо ДСО при обледенении', 'Maximum LC with icing', '>=', 'м', 'm'),
  (10, 'Максимальный угол ДСО', 'Heel with maximum LC', '>=', 'град', 'deg'),  
  (11, 'Первый максимум ДСО', 'Heel with first maximum LC', '>=', 'град', 'deg'),  
  (12, 'Исправленная метацентрическая высота', 'Min. metacentric height', '>=', 'м', 'm'),
  (14, 'Крен на циркуляции', 'Heel on turning', '>=', 'град', 'deg'),
  (15, 'Крен от смещения зерна', 'Heel from grain displacement', '>=', 'град', 'deg'),
  (16, 'Площадь ДСО при смещении зерна', 'Area of LC from grain displacement', '>=', 'м∙рад', 'm*rad'),
  (17, 'Минимальная метацентрическая высота деления на отсеки', 'Min. metacentric height due to subdivision index', '>=', 'м', 'm');
