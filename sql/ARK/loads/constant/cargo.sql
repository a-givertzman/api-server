-- Постоянная нагрузка на судно, распределенная по шпациям
-- груз + зерновая переборка
INSERT INTO load_constant
  (project_id, ship_id, frame_space_index, key, value)
VALUES
  (NULL, 1, 0, 'cargo', 0),
  (NULL, 1, 1, 'cargo', 0),
  (NULL, 1, 2, 'cargo', 0),
  (NULL, 1, 3, 'cargo', 84.64),
  (NULL, 1, 4, 'cargo', 184.95),
  (NULL, 1, 5, 'cargo', 246.10),
  (NULL, 1, 6, 'cargo', 277.46),
  (NULL, 1, 7, 'cargo', 277.46),
  (NULL, 1, 8, 'cargo', 277.46),
  (NULL, 1, 9, 'cargo', 277.46),
  (NULL, 1, 10, 'cargo', 277.46),
  (NULL, 1, 11, 'cargo', 277.46),
  (NULL, 1, 12, 'cargo', 277.46),
  (NULL, 1, 13, 'cargo', 277.46),
  (NULL, 1, 14, 'cargo', 247.67),
  (NULL, 1, 15, 'cargo', 184.95),
  (NULL, 1, 16, 'cargo', 0),
  (NULL, 1, 17, 'cargo', 0),
  (NULL, 1, 18, 'cargo', 0),
  (NULL, 1, 19, 'cargo', 0),
  (NULL, 1, 2, 'grain bulkhead', 24);
