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
  (16, 'Поправка от цистерн запаса'),
  (17, 'Поправка от балласта'),
  (21, 'Поправка от цистерн запаса'),
  (22, 'Поправка от балласта');

INSERT INTO parameter_head
  (id, title_rus, unit_rus, unit_eng)
VALUES
  (1, 'Аппликата центра тяжести исправленная', 'м', 'm'),
  (2, 'Водоизмещение', 'т', 't'),
  (3, 'Осадка средняя', 'м', 'm'),
  (4, 'Осадка на носовом перпендикуляре', 'м', 'm'),
  (5, 'Осадка на кормовом перпендикуляре', 'м', 'm'),
  (6, 'Дифферент', 'град', 'deg'),
  (7, 'Крен', 'град', 'deg'),
  (8, 'Число тон на 1 см осадки', 'т', 't'),
  (9, 'Момент кренящий на 1 градус', 'т∙м', 't∙m'),
  (10, 'Момент дифферентующий на 1 см осадки ', 'т∙м/см', 't∙m/sm'),
  (11, 'Аппликата центра величины', 'м', 'm'),
  (12, 'Аппликата центра тяжести', 'м', 'm'),
  (13, 'Поперечный метацентрический радиус', 'м', 'm'),
  (14, 'Аппликата поперечного метацентра', 'м', 'm'),
  (15, 'Поперечная метацентрическая высота', 'м', 'm'),
  (18, 'Поперечная метацентрическая высота исправленная', 'м', 'm'),
  (19, 'Аппликата продольного метацентра', 'м', 'm'),  
  (20, 'Продольная метацентрическая высота', 'м', 'm'),  
  (23, 'Продольная метацентрическая высота исправленная', 'м', 'm');
