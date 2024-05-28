DROP TABLE IF EXISTS ship_parameters CASCADE;

CREATE TABLE if not exists ship_parameters (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_parameters_pk PRIMARY KEY (id),
  CONSTRAINT ship_parameters_unique UNIQUE (ship_id, key),
  CONSTRAINT ship_parameters_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_parameters_value_check CHECK(char_length(value) > 0 AND char_length(value) <= 50),
  CONSTRAINT ship_parameters_type_check CHECK(char_length(value_type) > 0 AND char_length(value_type) <= 10),
  CONSTRAINT ship_parameters_unit_check CHECK(char_length(unit) <= 10)
);

INSERT INTO ship_parameters
  (ship_id, key, value, value_type, unit)
VALUES
  (1, 'Name of ship', 'M/V "YURIY ARSHENEVSKIY"', 'text', NULL),
  (1, 'Type of icing', 'none', 'text', NULL),
  (1, 'Type of navigation area', 'R2', 'text', NULL),
  (1, 'Type of ship', 'general dry cargo ship', 'text', NULL),
  (1, 'Ship operating speed', '16', 'real', 'm/s'),
  (1, 'Water Density', '1.025', 'real', 'g/ml'),
  (1, 'Keel area', '24.69', 'real', 'm^2'),
  (1, 'Ship hull length', '118.388', 'real', 'm'),
  (1, 'Ship hull width', '13.40', 'real', 'm'),
  (1, 'Number of Parts', '20', 'int', NULL),
  (1, 'Center of mass shift x', '1.05', 'real', 'm'),
  (1, 'Center of mass shift y', '0', 'real', 'm'),
  (1, 'Center of mass shift z', '5.32', 'real', 'm'),
  (1, 'Total windage area for Dmin', '1037.90', 'real', 'm^2'),
  (1, 'Center of windage area shift x for Dmin', '3.98', 'real', 'm'),
  (1, 'Center of windage area shift z for Dmin', '6.22', 'real', 'm'),
  (1, 'Draught min', '1.40', 'real', 'm');
