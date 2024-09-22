-- Давление ветра p_v и добавка на порывистость m 
-- в зависимости от района плавания судна,
-- Табл. 2.1.4.1
DROP TABLE IF EXISTS navigation_area CASCADE;

CREATE TABLE if not exists navigation_area (
  id INT NOT NULL,
  area TEXT NOT NULL,
  p_v FLOAT8 NOT NULL,
  m FLOAT8 NOT NULL,
  CONSTRAINT navigation_area_pk PRIMARY KEY (id),
  CONSTRAINT navigation_area_unique UNIQUE (area),
  CONSTRAINT navigation_area_area_check CHECK(char_length(area) <= 50),
  CONSTRAINT navigation_area_p_v_non_negative CHECK (p_v > 0),
  CONSTRAINT navigation_area_m_non_negative CHECK (m >= 0)
);

INSERT INTO navigation_area
  (id, area, p_v, m)
VALUES
  (1, 'Unlimited', 504, 0.5),
  (2, 'R1', 353, 0.5),
  (3, 'R2', 252, 0.52),
  (4, 'R2-RSN', 252, 0.52),
  (5, 'R2-RSN(4,5)', 166, 0.54),
  (6, 'R3-RSN', 119, 0.55);