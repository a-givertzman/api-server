DROP TABLE IF EXISTS icing CASCADE;

CREATE TABLE if not exists icing (
  id INT GENERATED ALWAYS AS IDENTITY,
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT icing_pk PRIMARY KEY (id),
  CONSTRAINT icing_unique UNIQUE (key),
  CONSTRAINT icing_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT icing_value_negative CHECK (value >= 0)
);

INSERT INTO icing
  (key, value)
VALUES
  ('icing_m_timber', 0.032),
  ('icing_m_v_full', 0.015),
  ('icing_m_v_half', 0.0075),
  ('icing_m_h_full', 0.03),
  ('icing_m_h_half', 0.015),
  ('icing_coef_v_area_full', 0.1),
  ('icing_coef_v_area_half', 0.075),
  ('icing_coef_v_area_zero', 0.05),
  ('icing_coef_v_moment_full', 0.2),
  ('icing_coef_v_moment_half', 0.15),
  ('icing_coef_v_moment_zero', 0.1);
