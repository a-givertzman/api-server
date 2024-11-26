-- Осадки

INSERT INTO load_line
  (ship_id, criterion_id, name_engl, x, y, z)
VALUES
  (1, 102, 'Summer LL draft PS', 0, -6.7, 4.6),
  (1, 101, ' Summer LL draft SB', 0, 6.7, 4.6),
  (1, 110, ' Fresh water LL draft in summer PS', 0.425, -6.7, 4.708),
  (1, 109, 'Fresh water LL draft in summer SB', 0.425, 6.7, 4.708);

-- Types of load lines applicable to the ship

INSERT INTO ship_available_load_line_types
    (ship_id, project_id, load_line_type_id, is_active)
VALUES
    -- Summer
    (1, NULL, 1, TRUE),
    -- Fresh water in summer 
    (1, NULL, 5, FALSE);