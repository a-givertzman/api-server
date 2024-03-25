-- Коэффициент k для судов, имеющих скуловые кили или 
-- брусковый киль, в зависимости от отношения A_l/L_wlB,
-- A_k - суммарная площадь килей
-- Табл. 2.1.5.2
CREATE TABLE if not exists coefficient_k (
  id INT GENERATED ALWAYS AS IDENTITY,
  a_div_l FLOAT8 NOT NULL,
  k FLOAT8 NOT NULL,
  CONSTRAINT coefficient_k_pk PRIMARY KEY (id),
  CONSTRAINT coefficient_k_a_div_l_unique UNIQUE (a_div_l),
  CONSTRAINT coefficient_k_a_div_l_non_negative CHECK (a_div_l >= 0),
  CONSTRAINT coefficient_k_x2_negative CHECK (k >= 0)
);

INSERT INTO coefficient_k
  (a_div_l, k)
VALUES
  (0.0, 1.0),
  (1.0, 0.98),
  (1.5, 0.95),
  (2.0, 0.88),
  (2.5, 0.79),
  (3.0, 0.74),
  (3.5, 0.72),
  (4.0, 0.70);