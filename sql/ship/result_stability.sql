-- Результат расчета остойчивости
DROP TABLE IF EXISTS result_stability;

CREATE TABLE if not exists result_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  title TEXT NOT NULL,
  value1 FLOAT8,
  value2 FLOAT8,
  relationship TEXT NOT NULL,
  unit TEXT,
  comment TEXT,
  CONSTRAINT result_stability_pk PRIMARY KEY (id),
  CONSTRAINT result_stability_check_title CHECK(char_length(title) <= 100),
  CONSTRAINT result_stability_check_relationship CHECK(char_length(relationship) <= 50),
  CONSTRAINT result_stability_check_unit CHECK(char_length(unit) <= 50),
  CONSTRAINT result_stability_check_comment CHECK(char_length(comment) <= 1000),
);

TRUNCATE TABLE result_stability;

INSERT INTO result_stability
  (title, value1, value2, relationship)
VALUES
  ('Критерий погоды K', 3.6, 1, '>=');

INSERT INTO result_stability
  (title, value1, value2, relationship, unit)
VALUES
  ('Статическй угол крена θ𝑤1', 11.3, 16.0, '<=', 'deg'),
  ('Площадь DSO 0-30', 0.1, 0.055, '>=', 'm*rad'),
  ('Площадь DSO 0-40', 0.2, 0.09, '>=', 'm*rad'),
  ('Площадь DSO 30-40', 0.05, 0.03, '>=', 'm*rad'),
  ('Макс. плечо DSO', 1.5, 0.25, '>=', 'm'),
  ('Угол соотв. макс. DSO', 35.0, 30, '>=', 'deg'),
  ('Исп. метацентрическая высота h', 0.5, 0.15, '>=', 'm'),
  ('Критерий ускорения 𝐾∗', 35.0, '>=', 30),
  ('Крен на циркуляции', 35.0, 30, '>=', 'deg'),
  ('Смещение зерна, А', 0.1, 0.075, '>=', 'm*rad');