DELETE FROM bulkhead_place WHERE ship_id=2;

INSERT INTO bulkhead_place
  (ship_id, code, name_rus, name_engl, hold_group_id, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z)
VALUES
  (2, 'SP101', 'Трюм 1.  По-походному ', 'Hold 1.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1001), 73.358, 74.673, 74.0155, 0, 6.53),
  (2, 'SP102', 'Трюм 1.  По-походному ', 'Hold 1.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1001), 74.673, 75.988, 75.3305, 0, 6.53),
  (2, 'P101', 'Трюм 1. Шп. 136-137', 'Hold 1. Fr. 136-137', (SELECT id FROM hold_group WHERE space_id=1001), 105.18, 105.92, 105.5, 0, 6.502),
  (2, 'P102', 'Трюм 1. Шп. 124-125', 'Hold 1. Fr. 124-125', (SELECT id FROM hold_group WHERE space_id=1001), 96.3, 97.04, 96.883, 0, 6.502),
  (2, 'P103', 'Трюм 1. Шп. 119-120', 'Hold 1. Fr. 119-120', (SELECT id FROM hold_group WHERE space_id=1001), 92.6, 93.34, 92.92, 0, 6.502),
  (2, 'SP201', 'Трюм №2.  По-походному ', 'Hold 2.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1002), 18.6, 19.913, 19.2565, 0, 6.53),
  (2, 'SP202', 'Трюм №2.  По-походному ', 'Hold 2.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1002), 19.913, 21.23, 20.5715, 0, 6.53),
  (2, 'P201', 'Трюм 2. Шп. 81-82', 'Hold 2. Fr. 81-82', (SELECT id FROM hold_group WHERE space_id=1002), 57.82, 58.56, 58.084, 0, 6.502),
  (2, 'P202', 'Трюм 2. Шп. 76-77', 'Hold 2. Fr. 76-77', (SELECT id FROM hold_group WHERE space_id=1002), 54.12, 54.86, 54.276, 0, 6.502),
  (2, 'P203', 'Трюм 2. Шп. 59-60', 'Hold 2. Fr. 59-60', (SELECT id FROM hold_group WHERE space_id=1002), 41.54, 42.28, 41.86, 0, 6.502),
  (2, 'P204', 'Трюм 2. Шп. 45-46', 'Hold 2. Fr. 45-46', (SELECT id FROM hold_group WHERE space_id=1002), 31.18, 31.92, 31.5, 0, 6.502),
  (2, 'P205', 'Трюм 2. Шп. 37-38', 'Hold 2. Fr. 37-38', (SELECT id FROM hold_group WHERE space_id=1002), 25.26, 26, 25.58, 0, 6.502);