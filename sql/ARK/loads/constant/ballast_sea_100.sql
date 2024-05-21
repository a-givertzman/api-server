-- Постоянная нагрузка на судно, распределенная по шпациям
-- балласт
INSERT INTO load_constant
  (project_id, ship_id, frame_space_index, key, value)
VALUES
  (NULL, 1, 0, 'ballast', 0),
  (NULL, 1, 1, 'ballast', 0),
  (NULL, 1, 2, 'ballast', 128.5),
  (NULL, 1, 3, 'ballast', 165.2),
  (NULL, 1, 4, 'ballast', 75.3),
  (NULL, 1, 5, 'ballast', 55.1),
  (NULL, 1, 6, 'ballast', 49.6),
  (NULL, 1, 7, 'ballast', 49.6),
  (NULL, 1, 8, 'ballast', 49.6),
  (NULL, 1, 9, 'ballast', 51.2),
  (NULL, 1, 10, 'ballast', 52.6),
  (NULL, 1, 11, 'ballast', 52.6),
  (NULL, 1, 12, 'ballast', 51.6),
  (NULL, 1, 13, 'ballast', 49.6),
  (NULL, 1, 14, 'ballast', 89.1),
  (NULL, 1, 15, 'ballast', 168.1),
  (NULL, 1, 16, 'ballast', 112.1),
  (NULL, 1, 17, 'ballast', 0),
  (NULL, 1, 18, 'ballast', 0),
  (NULL, 1, 19, 'ballast', 120.5);
