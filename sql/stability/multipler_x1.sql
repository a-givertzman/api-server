-- Безразмерный множитель Х_1 в зависимости от 
-- отношения ширины к осадке B/d
-- Табл. 2.1.5.1-1
CREATE TABLE if not exists multipler_x1 (
  id INT GENERATED ALWAYS AS IDENTITY,
  b_div_d FLOAT8 NOT NULL,
  x1 FLOAT8 NOT NULL,
  CONSTRAINT multipler_x1_pk PRIMARY KEY (id),
  CONSTRAINT multipler_x1_b_div_d_unique UNIQUE (b_div_d),
  CONSTRAINT multipler_x1_b_div_d_non_negative CHECK (b_div_d > 0),
  CONSTRAINT multipler_x1_x2_negative CHECK (x1 >= 0)
);

INSERT INTO multipler_x1
  (b_div_d, x1)
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