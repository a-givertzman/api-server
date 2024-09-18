-- Результат расчета остойчивости
DROP TABLE IF EXISTS criterion_values;

CREATE TABLE IF NOT EXISTS criterion_values (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  -- ID of criterion for criterion_values;
  criterion_id INT NOT NULL,
  -- Actual calculated value for specific criterion;
  actual_value FLOAT8,
  -- Limit value for specific criterion (either constant or calculated);
  limit_value FLOAT8,
  -- Zg value for specific criterion;
  zg_value FLOAT8,
  -- TODO: add documentation comments for column below
  error_message TEXT,
  CONSTRAINT criterion_values_pk PRIMARY KEY (id),
  CONSTRAINT criterion_values_criterions_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, criterion_id),
  CONSTRAINT criterion_values_criterion_fk FOREIGN KEY (criterion_id) REFERENCES criterion (id),
  CONSTRAINT criterion_values_check_description CHECK(char_length(error_message) <= 1000)
);
