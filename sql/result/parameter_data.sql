-- Дополнительные результаты расчета остойчивости, 
-- значения
DROP TABLE IF EXISTS parameter_data;

CREATE TABLE IF NOT EXISTS parameter_data (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  parameter_id INT NOT NULL,
  result FLOAT8,
  error_message TEXT,
  CONSTRAINT parameter_data_pk PRIMARY KEY (id),
  CONSTRAINT parameter_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, parameter_id),
  CONSTRAINT parameter_data_check_description CHECK(char_length(error_message) <= 1000)
);
