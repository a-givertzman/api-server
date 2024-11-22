-- Осадки

INSERT INTO load_line
  (ship_id, name, x, y, z)
VALUES
  (1, 'LL draft S PS', 0, -6.7, 4.6),
  (1, 'LL draft S SB', 0, 6.7, 4.6),
  (1, 'LL draft F PS', 0.425, -6.7, 4.708),
  (1, 'LL draft F SB', 0.425, 6.7, 4.708);

-- Types of load lines applicable to the ship

INSERT INTO ship_available_load_line_types
    (ship_id, project_id, load_line_type_id, is_active)
VALUES
    -- Summer
    (1, NULL, 1, TRUE),
    -- Fresh water in summer 
    (1, NULL, 5, FALSE);