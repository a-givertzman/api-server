-- Безразмерный множитель Х_1 в зависимости от 
-- отношения ширины к осадке B/d
-- Табл. 2.1.5.1-1
CREATE TABLE if not exists multipler_x1 (
  id INT GENERATED ALWAYS AS IDENTITY,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT multipler_x1_pk PRIMARY KEY (id),
  CONSTRAINT multipler_x1_key_unique UNIQUE (key),
  CONSTRAINT multipler_x1_key_non_negative CHECK (key > 0),
  CONSTRAINT multipler_x1_value_negative CHECK (value >= 0)
);

INSERT INTO multipler_x1
  (key, value)
VALUES
  (2.4, 1.0),
  (2.6, 0.96),
  (2.8, 0.93),
  (3.0, 0.9),
  (3.2, 0.86),
  (3.4, 0.82),
  (3.5, 0.8),
  (3.6, 0.79),
  (4.0, 0.78),
  (4.5, 0.76),
  (5.0, 0.72),
  (5.5, 0.68),
  (6.0, 0.64),
  (6.5, 0.62);