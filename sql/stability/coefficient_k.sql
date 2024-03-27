-- Коэффициент k для судов, имеющих скуловые кили или 
-- брусковый киль, в зависимости от отношения A_l/L_wlB,
-- A_k - суммарная площадь килей
-- Табл. 2.1.5.2
CREATE TABLE if not exists coefficient_k (
  id INT GENERATED ALWAYS AS IDENTITY,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT coefficient_k_pk PRIMARY KEY (id),
  CONSTRAINT coefficient_k_key_unique UNIQUE (key),
  CONSTRAINT coefficient_k_key_non_negative CHECK (key >= 0),
  CONSTRAINT coefficient_k_value_negative CHECK (value >= 0)
);

INSERT INTO coefficient_k
  (key, value)
VALUES
  (0.0, 1.0),
  (1.0, 0.98),
  (1.5, 0.95),
  (2.0, 0.88),
  (2.5, 0.79),
  (3.0, 0.74),
  (3.5, 0.72),
  (4.0, 0.70);