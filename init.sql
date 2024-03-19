DROP TABLE IF EXISTS ship;

CREATE TABLE if not exists ship (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value DOUBLE PRECISION NOT NULL,
  name TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_pk PRIMARY KEY (id),
  CONSTRAINT ship_unique UNIQUE (ship_id, key),
  CONSTRAINT ship_key_check CHECK(char_length(key) <= 50),
  CONSTRAINT ship_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT ship_unit_check CHECK(char_length(unit) <= 10)
);

INSERT INTO ship
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
  CONSTRAINT cargo_pk PRIMARY KEY (id),
  CONSTRAINT cargo_key_unique UNIQUE (cargo_id, key),
  CONSTRAINT cargo_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT cargo_value_check CHECK(char_length(value) > 0 AND char_length(value) <= 250),
  CONSTRAINT cargo_type_check CHECK(char_length(type) > 0 AND char_length(type) <= 50)
);

-- INSERT INTO cargo_parameters 
--   (ship_id, cargo_id, key, value, type)
-- VALUES
--   (1, 1, 'name', 'CARGO-001', 'string'),
--   (1, 1, 'weight', '0.0', 'real'),
--   (1, 1, 'vcg', '0.0', 'real'),
--   (1, 1, 'lcg', '0.0', 'real'),
--   (1, 1, 'tcg', '0.0', 'real'),
--   (1, 1, 'x_1', '0.0', 'real'),
--   (1, 1, 'x_2', '0.0', 'real'),
--   (1, 2, 'name', 'CARGO-002', 'string'),
--   (1, 2, 'weight', '0.0', 'real'),
--   (1, 2, 'vcg', '0.0', 'real'),
--   (1, 2, 'lcg', '0.0', 'real'),
--   (1, 2, 'tcg', '0.0', 'real'),
--   (1, 2, 'x_1', '0.0', 'real'),
--   (1, 2, 'x_2', '0.0', 'real'),
--   (1, 3, 'name', 'CARGO-003', 'string'),
--   (1, 3, 'weight', '0.0', 'real'),
--   (1, 3, 'vcg', '0.0', 'real'),
--   (1, 3, 'lcg', '0.0', 'real'),
--   (1, 3, 'tcg', '0.0', 'real'),
--   (1, 3, 'x_1', '0.0', 'real'),
--   (1, 3, 'x_2', '0.0', 'real');

INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'name', 'CARGO-' || idx, 'string' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'weight', 0.0, 'real' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'vcg', 0.0, 'real' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'lcg', 0.0, 'real' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'tcg', 0.0, 'real' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'x_1', 0.0, 'real' FROM generate_series(1, 100) as idx;
INSERT INTO cargo_parameters
  (ship_id, cargo_id, key, value, type)
SELECT 1, idx, 'x_2', 0.0, 'real' FROM generate_series(1, 100) as idx;
