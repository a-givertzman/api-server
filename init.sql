DROP TABLE IF EXISTS ship_parameters;

CREATE TABLE if not exists ship_parameters (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value DOUBLE PRECISION NOT NULL,
  name TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_parameters_pk PRIMARY KEY (id),
  CONSTRAINT ship_parameters_unique UNIQUE (ship_id, key),
  CONSTRAINT ship_parameters_key_check CHECK(char_length(key) <= 50),
  CONSTRAINT ship_parameters_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT ship_parameters_unit_check CHECK(char_length(unit) <= 10)
);

INSERT INTO ship_parameters
  (ship_id, key, value, name, unit)
VALUES
  (1, 'ship_length', 200, 'Ship Length', 'm'),
  (1, 'water_density', 1.025, 'Water Density', 'g/ml'),
  (1, 'n_parts', 20, 'Number of Parts', NULL);

DROP TABLE IF EXISTS cargo_parameters;
CREATE TABLE if not exists cargo_parameters (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  cargo_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  type TEXT NOT NULL,
  CONSTRAINT cargo_parameters_pk PRIMARY KEY (id),
  CONSTRAINT cargo_parameters_key_unique UNIQUE (cargo_id, key),
  CONSTRAINT cargo_parameters_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT cargo_parameters_value_check CHECK(char_length(value) > 0 AND char_length(value) <= 250),
  CONSTRAINT cargo_parameters_type_check CHECK(char_length(type) > 0 AND char_length(type) <= 50)
);

DO $$
  DECLARE cargo_fill_num INTEGER = 10;
BEGIN
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'name', 'CARGO-' || idx, 'string' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'weight', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'vcg', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'lcg', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'tcg', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'x_1', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'x_2', 0.0, 'real' FROM generate_series(1, cargo_fill_num) as idx;
END $$;
