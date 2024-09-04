-- Резальтаты расчета заглубления винтов
-- имя | процент заглубления, %
DROP TABLE IF EXISTS screw_result CASCADE;

CREATE TABLE if not exists screw_result (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT screw_result_pk PRIMARY KEY (id),
  CONSTRAINT screw_result_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT screw_result_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, value)
);