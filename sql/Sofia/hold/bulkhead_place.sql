DELETE FROM bulkhead_place WHERE ship_id=2;

INSERT INTO bulkhead_place
  (id, ship_id, space_id, code, name_rus, name_engl, hold_group_id, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z)
VALUES
  (0, 2, 1110, 'SP101', 'Трюм 1.  По-походному ', 'Hold 1.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1001), 73.358, 75.988, 74.673, 0.000, 6.530),
  (1, 2, 1111, 'P101', 'Трюм 1. Шп. 105 ', 'Hold 1. Fr. 105 ', (SELECT id FROM hold_group WHERE space_id=1001), 105.180, 105.920, 105.50, 0.00, 6.502),
  (2, 2, 1112, 'P102', 'Трюм 1. Шп. 97', 'Hold 1. Fr. 97', (SELECT id FROM hold_group WHERE space_id=1001), 96.300, 97.040, 96.88, 0.00, 6.502),
  (3, 2, 1113, 'P103', 'Трюм 1. Шп. 93', 'Hold 1. Fr. 93', (SELECT id FROM hold_group WHERE space_id=1001), 92.600, 93.340, 92.92, 0.00, 6.502),
  (4, 2, 1210, 'SP201', 'Трюм №2.  По-походному ', 'Hold 2.Stowage Position', (SELECT id FROM hold_group WHERE space_id=1002), 18.600, 21.230, 19.91, 0.00, 6.530),
  (5, 2, 1211, 'P201', 'Трюм 2. Шп. 58', 'Hold 2. Fr. 58', (SELECT id FROM hold_group WHERE space_id=1002), 57.820, 58.560, 58.08, 0.00, 6.502),
  (6, 2, 1212, 'P202', 'Трюм 2. Шп. 54', 'Hold 2. Fr. 54', (SELECT id FROM hold_group WHERE space_id=1002), 54.120, 54.860, 54.28, 0.00, 6.502),
  (7, 2, 1213, 'P203', 'Трюм 2. Шп. 42', 'Hold 2. Fr. 42', (SELECT id FROM hold_group WHERE space_id=1002), 41.540, 42.280, 41.86, 0.00, 6.502),
  (8, 2, 1214, 'P204', 'Трюм 2. Шп. 31', 'Hold 2. Fr. 31', (SELECT id FROM hold_group WHERE space_id=1002), 31.180, 31.920, 31.50, 0.00, 6.502),
  (9, 2, 1215, 'P205', 'Трюм 2. Шп. 26', 'Hold 2. Fr. 26', (SELECT id FROM hold_group WHERE space_id=1002), 25.260, 26.000, 25.58, 0.00, 6.502);