-- Коэффициент, учитывающий особенности качки судов смешанного типа для
-- расчета ускорения
-- Табл. 2.1.5.2
CREATE TABLE if not exists coefficient_k_theta (
  id INT GENERATED ALWAYS AS IDENTITY,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT coefficient_k_theta_pk PRIMARY KEY (id),
  CONSTRAINT coefficient_k_theta_key_unique UNIQUE (key),
  CONSTRAINT coefficient_k_theta_key_non_negative CHECK (key >= 0),
  CONSTRAINT coefficient_k_theta_value_negative CHECK (value >= 0)
);

INSERT INTO coefficient_k_theta
  (key, value)
VALUES
  (2.5, 1),
  (3.0, 1.08),
  (3.5, 1.11),
  (4.0, 1.11),
  (4.5, 1.2),
  (5.0, 1.3),
  (5.5, 1.45),
  (6.0, 1.56),
  (6.5, 1.61);