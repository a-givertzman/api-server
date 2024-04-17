DROP TABLE IF EXISTS ship;

CREATE TABLE if not exists ship (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  name TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_pk PRIMARY KEY (id),
  CONSTRAINT ship_unique UNIQUE (ship_id, key),
  CONSTRAINT ship_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_value_check CHECK(char_length(value) > 0 AND char_length(value) <= 50),
  CONSTRAINT ship_type_check CHECK(char_length(value_type) > 0 AND char_length(value_type) <= 10),
  CONSTRAINT ship_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT ship_unit_check CHECK(char_length(unit) <= 10)
);

TRUNCATE TABLE SHIP;

INSERT INTO ship
  (ship_id, key, value, value_type, name, unit)
VALUES
  (1, 'name', 'M/V "YURIY ARSHENEVSKIY"', 'text', 'Name of ship', NULL),
  (1, 'navigation_area', 'R2', 'text', 'Type of navigation area', NULL),
  (1, 'icing_stab', 'full', 'text', 'Type of icing', NULL),
  (1, 'icing_m_timber', '0.032', 'real', 'Mass of icing for timber', 't/m^2'),
  (1, 'icing_m_v_full', '0.015', 'real', 'Mass of icing full vertical', 't/m^2'),
  (1, 'icing_m_v_half', '0.0075', 'real', 'Mass of icing half vertical', 't/m^2'),
  (1, 'icing_m_h_full', '0.03', 'real', 'Mass of icing full horizontal', 't/m^2'),
  (1, 'icing_m_h_half', '0.015', 'real', 'Mass of icing half horizontal', 't/m^2'),
  (1, 'icing_coef_v_area_full', '0.1', 'real', 'Coef of full icing for wind area', '-'),
  (1, 'icing_coef_v_area_half', '0.075', 'real', 'Coef of half icing for wind area', '-'),
  (1, 'icing_coef_v_area_zero', '0.05', 'real', 'Coef without icing for wind area', '-'),
  (1, 'icing_coef_v_moment_full', '0.2', 'real', 'Coef of full icing for static moment', '-'),
  (1, 'icing_coef_v_moment_half', '0.15', 'real', 'Coef of half icing for static moment', '-'),
  (1, 'icing_coef_v_moment_zero', '0.1', 'real', 'Coef without icing for static moment', '-'),
  (1, 'water_density', '1.025', 'real', 'Water Density', 'g/ml'),
  (1, 'keel_area', '24.69', 'real', 'Keel area', 'm^2'),
  (1, 'length', '118.388', 'real', 'Ship hull length', 'm'),
  (1, 'breadth', '13.40', 'real', 'Ship hull width', 'm'),
  (1, 'n_parts', '20', 'int', 'Number of Parts', NULL),
  (1, 'const_mass_shift_x', '1.05', 'real', 'Center of mass shift x', 'm'),
  (1, 'const_mass_shift_y', '0', 'real', 'Center of mass shift y', 'm'),
  (1, 'const_mass_shift_z', '5.32', 'real', 'Center of mass shift z', 'm'),
  (1, 'windage_area', '1037.90', 'real', 'Total windage area for Dmin', 'm^2'),
  (1, 'windage_shift_x', '3.98', 'real', 'Center of windage area shift x for Dmin', 'm'),
  (1, 'windage_shift_z', '6.22', 'real', 'Center of windage area shift z for Dmin', 'm'),
  (1, 'draught_min', '1.40', 'real', 'Draught min', 'm');
