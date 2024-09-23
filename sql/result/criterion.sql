-- Результат расчета остойчивости
DROP TABLE IF EXISTS criterion CASCADE;

DROP TYPE IF EXISTS math_relation CASCADE;
DROP TYPE IF EXISTS unit_eng_stability CASCADE;
DROP TYPE IF EXISTS unit_rus_stability CASCADE;

CREATE TYPE math_relation as enum ('<=', '>=');

CREATE TABLE IF NOT EXISTS criterion (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
  title_eng TEXT NOT NULL,
  math_relation math_relation,
  unit_id INT,
  category_id INT NOT NULL,
  CONSTRAINT criterion_pk PRIMARY KEY (id),
  CONSTRAINT criterion_unit_fk FOREIGN KEY (unit_id) REFERENCES unit (id),
  CONSTRAINT criterion_category_fk FOREIGN KEY (category_id) REFERENCES criterion_category (id),
  CONSTRAINT criterion_check_title_rus CHECK(char_length(title_rus) <= 100),
  CONSTRAINT criterion_check_ttitle_eng CHECK(char_length(title_eng) <= 100)
);

TRUNCATE TABLE criterion;

INSERT INTO criterion
  (id, title_rus, title_eng, math_relation, category_id)
VALUES
  (1, 'Критерий погоды', 'Weather criterion', '>=', 1),
  (13, 'Критерий ускорения', 'Acceleration criterion', '>=', 1);

INSERT INTO criterion
  (id, title_rus, title_eng, math_relation, unit_id, category_id)
VALUES
  (2, 'Статический крен от ветра', 'Wind static heel', '<=', 1, 1),
  (3, 'Площадь ДСО до 30°', 'Area of LC up to 30°', '>=', 5, 1),
  (4, 'Площадь ДСО до 40°', 'Area of LC up to 40°', '>=', 5, 1),
  (5, 'Площадь ДСО до θₗₘₐₓ', 'Area of LC up to θₗₘₐₓ', '>=', 5, 1),
  (6, 'Площадь ДСО от 30° до 40°', 'Area of LC between 30° & 40°', '>=', 5, 1),
  (7, 'Максимальное плечо ДСО', 'Maximum LC', '>=', 2, 1),
  (8, 'Максимальное плечо ДСО для лесовоза', 'Maximum LC with timber', '>=', 2, 1),
  (9, 'Максимальное плечо ДСО при обледенении', 'Maximum LC with icing', '>=', 2, 1),
  (10, 'Максимальный угол ДСО', 'Heel with maximum LC', '>=', 1, 1),  
  (11, 'Первый максимум ДСО', 'Heel with first maximum LC', '>=', 1, 1),  
  (12, 'Исправленная метацентрическая высота', 'Min. metacentric height', '>=', 2, 1),
  (14, 'Крен на циркуляции', 'Heel on turning', '>=', 1, 1),
  (15, 'Крен от смещения зерна', 'Heel from grain displacement', '<=', 1, 1),
  (16, 'Площадь ДСО при смещении зерна', 'Area of LC from grain displacement', '>=', 5, 1),
  (17, 'Минимальная метацентрическая высота деления на отсеки', 'Min. metacentric height due to subdivision index', '>=', 2, 1),
-- Критерии посадки
  (101,	'Осадка по Л ГВЛ ПрБ', 'LL draft S SB', '<=', 2, 2), 
  (102, 'Осадка по Л ГВЛ ЛБ', 'LL draft S PS', '<=', 2, 2),
  (103, 'Осадка по З ГВЛ ПрБ', 'LL draft W SB', '<=', 2, 2),
  (104, 'Осадка по З ГВЛ ЛБ', 'LL draft W PS', '<=', 2, 2),
  (105, 'Осадка по ЗСА ГВЛ ПрБ', 'LL draft WNA SB', '<=', 2, 2),
  (106, 'Осадка по ЗСА ГВЛ ЛБ', 'LL draft WNA PS', '<=', 2, 2),
  (107, 'Осадка по Т ГВЛ ПрБ', 'LL draft T SB', '<=', 2, 2),
  (108, 'Осадка по Т ГВЛ ЛБ', 'LL draft T PS', '<=', 2, 2),
  (109, 'Осадка по П ГВЛ ПрБ', 'LL draft F SB', '<=', 2, 2),
  (110, 'Осадка по П ГВЛ ЛБ', 'LL draft F PS', '<=', 2, 2),
  (111, 'Осадка по ТП ГВЛ ПрБ', 'LL draft TF SB', '<=', 2, 2),
  (112, 'Осадка по ТП ГВЛ ЛБ', 'LL draft TF PS', '<=', 2, 2),
  (113, 'Осадка по ЛЛ ГВЛ ПрБ', 'LL draft LS SB', '<=', 2, 2),
  (114, 'Осадка по ЛЛ ГВЛ ЛБ', 'LL draft LS PS', '<=', 2, 2),
  (115, 'Осадка по ЛЗ ГВЛ ПрБ', 'LL draft LW SB', '<=', 2, 2),
  (116, 'Осадка по ЛЗ ГВЛ ЛБ', 'LL draft LW PS', '<=', 2, 2),
  (117, 'Осадка по ЛЗСА ГВЛ ПрБ', 'LL draft LWNA SB', '<=', 2, 2),
  (118, 'Осадка по ЛЗСА ГВЛ ЛБ', 'LL draft LWNA PS', '<=', 2, 2),
  (119, 'Осадка по ЛТ ГВЛ ПрБ', 'LL draft LT SB', '<=', 2, 2),
  (120, 'Осадка по ЛТ ГВЛ ЛБ', 'LL draft LT PS', '<=', 2, 2),
  (121, 'Осадка по ЛП ГВЛ ПрБ', 'LL draft LF SB', '<=', 2, 2),
  (122, 'Осадка по ЛП ГВЛ ЛБ', 'LL draft LF PS', '<=', 2, 2),
  (123, 'Осадка по ЛТП ГВЛ ПрБ', 'LL draft LTF SB', '<=', 2, 2),
  (124, 'Осадка по ЛТП ГВЛ ЛБ', 'LL draft LTF PS', '<=', 2, 2),
  (125, 'Осадка по ГВЛ Р1 (резерв)', 'LL draft SI1 (reserve)', '<=', 2, 2),
  (140, 'Осадка по ГВЛ Р16 (резерв)', 'LL draft SI16 (reserve)', '<=', 2, 2),
  (141,	'Максимальный дифферент на нос', 'Maximum forward trim', '<=', 2, 2),
  (142,	'Максимальный дифферент на корму', 'Maximum aft trim', '<=', 2, 2),
  (143,	'Высота на носовом перпендикуляре ПрБ', 'Depth at forward perpendicular SB', '>=', 2, 2),
  (144,	'Высота на носовом перпендикуляре ЛБ', 'Depth at forward perpendicular PS', '>=', 2, 2),
  (145,	'Заглубление винта ДП', 'Screw immersion CL', '>=', 13, 2),
  (146,	'Заглубление винта ПрБ', 'Screw immersion SB', '>=', 13, 2),
  (147,	'Заглубление винта ЛБ', 'Screw immersion PS', '>=', 13, 2),
  (148,	'Заглубление винта (резерв)', 'Screw immersion (reserve)', '>=', 13, 2),
  (149,	'Заглубление винта (резерв)', 'Screw immersion (reserve)', '>=', 13, 2),
  (150,	'Запас плавучести в носу', 'Reserve buoyncy in bow', '>=', 3, 2);

