-- Результат расчета остойчивости
DROP TABLE IF EXISTS result_stability;

CREATE TABLE IF NOT EXISTS result_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  criterion_id INT NOT NULL,
  result FLOAT8,
  target FLOAT8,
  error_message TEXT,
  CONSTRAINT result_stability_pk PRIMARY KEY (id),
  CONSTRAINT result_stability_id_unique UNIQUE (criterion_id),
  CONSTRAINT result_stability_criterions_id_unique UNIQUE (project_id, ship_id, criterion_id),
  CONSTRAINT result_stability_check_description CHECK(char_length(error_message) <= 1000)
);
