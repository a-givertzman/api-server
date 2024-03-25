-- Безразмерный множитель Х_2 в зависимости от 
-- коэфициента общей полноты судна C_b
-- Табл. 2.1.5.1-2
CREATE TABLE if not exists multipler_x2 (
  id INT GENERATED ALWAYS AS IDENTITY,
  c_b FLOAT8 NOT NULL,
  x2 FLOAT8 NOT NULL,
  CONSTRAINT multipler_x2_pk PRIMARY KEY (id),
  CONSTRAINT multipler_x2_c_b_unique UNIQUE (c_b),
  CONSTRAINT multipler_x2_c_b_non_negative CHECK (c_b > 0),
  CONSTRAINT multipler_x2_x2_negative CHECK (x2 >= 0)
);

INSERT INTO multipler_x2
  (c_b, x2)
VALUES
  (0.45, 0.75),
  (0.5, 0.82),
  (0.55, 0.89),
  (0.6, 0.95),
  (0.65, 0.97),
  (0.7, 1.0);