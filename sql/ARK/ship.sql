INSERT INTO ship
  (ship_id, key, value, value_type, name, unit)
VALUES
  (1, 'name', 'M/V "YURIY ARSHENEVSKIY"', 'text', 'Name of ship', NULL),
  (1, 'icing_stab', 'full', 'text', 'Type of icing', NULL),
  (1, 'navigation_area', 'R2', 'text', 'Type of navigation area', NULL),
  (1, 'ship_type', 'general dry cargo ship', 'text', 'Type of ship', NULL),
  (1, 'velocity', '16', 'real', 'Ship operating speed', 'm/s'),
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
