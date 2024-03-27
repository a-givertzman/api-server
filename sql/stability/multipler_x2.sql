-- Безразмерный множитель Х_2 в зависимости от 
-- коэфициента общей полноты судна C_b
-- Табл. 2.1.5.1-2
CREATE TABLE if not exists multipler_x2 (
  id INT GENERATED ALWAYS AS IDENTITY,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT multipler_x2_pk PRIMARY KEY (id),
  CONSTRAINT multipler_x2_key_unique UNIQUE (key),
  CONSTRAINT multipler_x2_key_non_negative CHECK (key > 0),
  CONSTRAINT multipler_x2_value_negative CHECK (value >= 0)
);

INSERT INTO multipler_x2
  (key, value)
VALUES
  (0.45, 0.75),
  (0.5, 0.82),
  (0.55, 0.89),
  (0.6, 0.95),
  (0.65, 0.97),
  (0.7, 1.0);