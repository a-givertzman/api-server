-- Осадки

INSERT INTO load_line
  (ship_id, name, x, y, z)
VALUES
  (2, 'LL draft S PS', 65.25,	-7.935,	8.012),
  (2, 'LL draft S SB', 65.25,	7.935,	8.012),
  (2, 'LL draft F PS', 65.675,	-7.935,	8.189),
  (2, 'LL draft F SB', 65.675,	7.935,	8.189),
  (2, 'LL draft T PS', 65.905,	-7.935,	8.178),
  (2, 'LL draft T SB', 65.905,	7.935,	8.178),
  (2, 'LL draft TF PS', 65.675,	-7.935,	8.354),
  (2, 'LL draft TF SB', 65.675,	7.935,	8.354),
  (2, 'LL draft W PS', 65.905,	-7.935,	7.846),
  (2, 'LL draft W SB', 65.905,	7.935,	7.846),
  (2, 'LL draft WNA PS', 65.905, -7.935, 7.796),
  (2, 'LL draft WNA SB', 65.905, 7.935,	7.796);

-- Types of load lines applicable to the ship

INSERT INTO ship_available_load_line_types
    (ship_id, project_id, load_line_type_id, is_active)
VALUES
    -- Summer
    (2, NULL, 1, TRUE),
    -- Fresh water in summer
    (2, NULL, 5, FALSE),
    -- Tropical
    (2, NULL, 4, FALSE),
    -- Tropical fresh water
    (2, NULL, 6, FALSE),
    -- Winter
    (2, NULL, 2, FALSE),
    -- Winter North Atlantic
    (2, NULL, 3, FALSE);