-- Запасы судна, 100% море отход
UPDATE load_space SET value = '5.51' WHERE ship_id = 1 AND space_id = 24 AND key = 'mass';
UPDATE load_space SET value = '0.34' WHERE ship_id = 1 AND space_id = 24 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.4' WHERE ship_id = 1 AND space_id = 24 AND key = 'm_f_s_x';
UPDATE load_space SET value = '5.51' WHERE ship_id = 1 AND space_id = 25 AND key = 'mass';
UPDATE load_space SET value = '0.34' WHERE ship_id = 1 AND space_id = 25 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.4' WHERE ship_id = 1 AND space_id = 25 AND key = 'm_f_s_x';
UPDATE load_space SET value = '34.98' WHERE ship_id = 1 AND space_id = 26 AND key = 'mass';
UPDATE load_space SET value = '11.70' WHERE ship_id = 1 AND space_id = 26 AND key = 'm_f_s_y';
UPDATE load_space SET value = '13.60' WHERE ship_id = 1 AND space_id = 26 AND key = 'm_f_s_x';
UPDATE load_space SET value = '35.10' WHERE ship_id = 1 AND space_id = 27 AND key = 'mass';
UPDATE load_space SET value = '11.70' WHERE ship_id = 1 AND space_id = 27 AND key = 'm_f_s_y';
UPDATE load_space SET value = '13.60' WHERE ship_id = 1 AND space_id = 27 AND key = 'm_f_s_x';
UPDATE load_space SET value = '53.4243' WHERE ship_id = 1 AND space_id = 28 AND key = 'mass';
UPDATE load_space SET value = '87.81' WHERE ship_id = 1 AND space_id = 28 AND key = 'm_f_s_y';
UPDATE load_space SET value = '102.10' WHERE ship_id = 1 AND space_id = 28 AND key = 'm_f_s_x';
UPDATE load_space SET value = '53.4243' WHERE ship_id = 1 AND space_id = 29 AND key = 'mass';
UPDATE load_space SET value = '87.81' WHERE ship_id = 1 AND space_id = 29 AND key = 'm_f_s_y';
UPDATE load_space SET value = '102.10' WHERE ship_id = 1 AND space_id = 29 AND key = 'm_f_s_x';
UPDATE load_space SET value = '1.06' WHERE ship_id = 1 AND space_id = 31 AND key = 'mass';
UPDATE load_space SET value = '45.09' WHERE ship_id = 1 AND space_id = 32 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 32 AND key = 'm_f_s_y';
UPDATE load_space SET value = '53.30' WHERE ship_id = 1 AND space_id = 32 AND key = 'm_f_s_x';
UPDATE load_space SET value = '3.94' WHERE ship_id = 1 AND space_id = 33 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 33 AND key = 'm_f_s_y';
UPDATE load_space SET value = '1.30' WHERE ship_id = 1 AND space_id = 33 AND key = 'm_f_s_x';
UPDATE load_space SET value = '3.71' WHERE ship_id = 1 AND space_id = 34 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 34 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.1' WHERE ship_id = 1 AND space_id = 34 AND key = 'm_f_s_x';
UPDATE load_space SET value = '3.71' WHERE ship_id = 1 AND space_id = 35 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 35 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.1' WHERE ship_id = 1 AND space_id = 35 AND key = 'm_f_s_x';
UPDATE load_space SET value = '2.49' WHERE ship_id = 1 AND space_id = 36 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 36 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.10' WHERE ship_id = 1 AND space_id = 36 AND key = 'm_f_s_x';
UPDATE load_space SET value = '2.49' WHERE ship_id = 1 AND space_id = 37 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 37 AND key = 'm_f_s_y';
UPDATE load_space SET value = '0.10' WHERE ship_id = 1 AND space_id = 37 AND key = 'm_f_s_x';
UPDATE load_space SET value = '32.84' WHERE ship_id = 1 AND space_id = 39 AND key = 'mass';
UPDATE load_space SET value = '0' WHERE ship_id = 1 AND space_id = 39 AND key = 'm_f_s_y';
UPDATE load_space SET value = '14.80' WHERE ship_id = 1 AND space_id = 39 AND key = 'm_f_s_x';


INSERT INTO load_space
  (ship_id, space_id, key, value, value_type, unit)
VALUES  
  (1, 47, 'name', 'Экипаж и багаж', 'text', NULL),
  (1, 47, 'mass', '1.80', 'real', 't'),
  (1, 47, 'bound_x1', '44.31', 'real', 'm'),
  (1, 47, 'bound_x2', '46.31', 'real', 'm'),
  (1, 47, 'mass_shift_x', '45.31', 'real', 'm'),
  (1, 47, 'mass_shift_y', '-4.46', 'real', 'm'),
  (1, 47, 'mass_shift_z', '7.70', 'real', 'm'),
  (1, 47, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 47, 'm_f_s_x', '0', 'real', 'm'),
  (1, 48, 'name', 'Провизия', 'text', NULL),
  (1, 48, 'mass', '1.2', 'real', 't'),
  (1, 48, 'bound_x1', '40.21', 'real', 'm'),
  (1, 48, 'bound_x2', '42.21', 'real', 'm'),
  (1, 48, 'mass_shift_x', '41.21', 'real', 'm'),
  (1, 48, 'mass_shift_y', '4.60', 'real', 'm'),
  (1, 48, 'mass_shift_z', '8.15', 'real', 'm'),
  (1, 48, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 48, 'm_f_s_x', '0', 'real', 'm'),
  (1, 49, 'name', 'Зерновая переборка', 'text', NULL),
  (1, 49, 'mass', '24.0', 'real', 't'),
  (1, 49, 'bound_x1', '-44.0', 'real', 'm'),
  (1, 49, 'bound_x2', '-40.8', 'real', 'm'),
  (1, 49, 'mass_shift_x', '-42.64', 'real', 'm'),
  (1, 49, 'mass_shift_y', '0', 'real', 'm'),
  (1, 49, 'mass_shift_z', '4.53', 'real', 'm'),
  (1, 49, 'm_f_s_y', '0', 'real', 'm'),  
  (1, 49, 'm_f_s_x', '0', 'real', 'm');
