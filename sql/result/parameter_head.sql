-- Дополнительные результаты расчета остойчивости, 
-- текст и единицы измерения
DROP TABLE IF EXISTS parameter_head CASCADE;

CREATE TABLE IF NOT EXISTS parameter_head (
  id INT NOT NULL,
  title_rus TEXT NOT NULL,
 -- title_eng TEXT NOT NULL,
  unit_rus unit_rus_stability,
  unit_eng unit_eng_stability,
  CONSTRAINT parameter_head_pk PRIMARY KEY (id),
  CONSTRAINT parameter_head_id_unique UNIQUE (id),
  CONSTRAINT parameter_head_check_title_rus CHECK(char_length(title_rus) <= 100)
--  CONSTRAINT parameter_head_check_ttitle_eng CHECK(char_length(title_eng) <= 100)
);

TRUNCATE TABLE parameter_head;

INSERT INTO parameter_head
  (id, title_rus)
VALUES
  (17, 'Поправка от цистерн запаса'),
  (18, 'Поправка от балласта'),
  (22, 'Поправка от цистерн запаса'),
  (23, 'Поправка от балласта');

INSERT INTO parameter_head
  (id, title_rus, unit_rus, unit_eng)
VALUES
  (1, 'Аппликата центра тяжести исправленная', 'м', 'm'),
  (2, 'Допустимые значения возвышения центра тяжести судна', 'м', 'm'),
  (3, 'Водоизмещение', 'т', 't'),
  (4, 'Осадка средняя', 'м', 'm'),
  (5, 'Осадка на носовом перпендикуляре', 'м', 'm'),
  (6, 'Осадка на кормовом перпендикуляре', 'м', 'm'),
  (7, 'Дифферент', 'град', 'deg'),
  (8, 'Крен', 'град', 'deg'),
  (9, 'Чисто тон на 1 см осадки', 'т', 't'),
  (10, 'Момент кренящий на 1 градус', 'т∙м', 't∙m'),
  (11, 'Момент дифферентующий на 1 см осадки ', 'т∙м/см', 't∙m/sm'),
  (12, 'Аппликата центра величины', 'м', 'm'),
  (13, 'Аппликата центра тяжести', 'м', 'm'),
  (14, 'Поперечный метацентрический радиус', 'м', 'm'),
  (15, 'Аппликата поперечного метацентра', 'м', 'm'),
  (16, 'Поперечная метацентрическая высота', 'м', 'm'),
  (19, 'Поперечная метацентрическая высота исправленная', 'м', 'm'),
  (20, 'Аппликата продольного метацентра', 'м', 'm'),  
  (21, 'Продольная метацентрическая высота', 'м', 'm'),  
  (24, 'Продольная метацентрическая высота исправленная', 'м', 'm');
