-- Резальтаты расчета осадок
-- имя | уровень заглубления марки осадки, м
DROP TABLE IF EXISTS load_line_result CASCADE;

CREATE TABLE if not exists load_line_result (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT load_line_mark_result_pk PRIMARY KEY (id),
  CONSTRAINT load_line_mark_result_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT load_line_mark_result_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, value)
);