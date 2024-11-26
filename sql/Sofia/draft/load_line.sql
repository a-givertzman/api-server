DELETE FROM load_line WHERE ship_id=2;

INSERT INTO load_line
  (ship_id, criterion_id, name_rus, name_engl, x, y, z)
VALUES
  (2, 102, 'Осадка по летнюю ГВЛ ЛБ', 'Summer LL draft PS', 65.25, -7.935, 8.012),
  (2, 101, 'Осадка по летнюю ГВЛ ПрБ', 'Summer LL draft SB', 65.25, 7.935, 8.012),
  (2, 110, 'Осадка по летнюю ГВЛ в пресной воде ЛБ', 'Fresh water LL draft in summer PS', 65.675, -7.935, 8.189),
  (2, 109, 'Осадка по летнюю ГВЛ в пресной воде ПрБ', 'Fresh water LL draft in summer SB', 65.675, 7.935, 8.189),
  (2, 108, 'Осадка по тропическую ГВЛ ЛБ', 'Tropical LL draft PS', 65.905, -7.935, 8.178),
  (2, 107, 'Осадка по тропическую ГВЛ ПрБ', 'Tropical LL draft SB', 65.905, 7.935, 8.178),
  (2, 112, 'Осадка по тропическую ГВЛ в пресной воде ЛБ', 'Tropical fresh water LL draft PS', 65.675, -7.935, 8.354),
  (2, 111, 'Осадка по тропическую ГВЛ в пресной воде ПрБ', 'Tropical fresh water LL draft SB', 65.675, 7.935, 8.354),
  (2, 104, 'Осадка по зимнюю ГВЛ ЛБ', 'Winter LL draft PS', 65.905, -7.935, 7.846),
  (2, 103, 'Осадка по зимнюю ГВЛ ПрБ', 'Winter LL draft SB', 65.905, 7.935, 7.846),
  (2, 106, 'Осадка по зимнюю ГВЛ в Северной Атлантике ЛБ', 'Winter North Atlantic LL draft PS', 65.905, -7.935, 7.796),
  (2, 105, 'Осадка по зимнюю ГВЛ в Северной Атлантике ПрБ', 'Winter North Atlantic LL draft SB', 65.905, 7.935, 7.796);

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