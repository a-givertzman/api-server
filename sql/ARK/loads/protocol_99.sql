-- протокол 99
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 2;      -- Форпик Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 3;      -- Форпик ЛБ
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 4;      -- Балласт 1 Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 5;      -- Балласт 1 ЛБ
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 6;      -- Балласт 2 Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 7;      -- Балласт 2 ЛБ
UPDATE compartment SET mass = 99.2 WHERE ship_id = 1 AND space_id = 8;      -- Балласт 2 ДД
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 9;      -- Балласт 3 Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 10;     -- Балласт 3 ЛБ
UPDATE compartment SET mass = 99.2 WHERE ship_id = 1 AND space_id = 11;     -- Балласт 3 ДД
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 12;     -- Балласт 4 Пр.Б
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 13;     -- Балласт 4 ЛБ
UPDATE compartment SET mass = 159.8 WHERE ship_id = 1 AND space_id = 14;     -- Балласт 4 ДД
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 15;     -- Балласт 5 Пр.Б
UPDATE compartment SET mass = 190.9 WHERE ship_id = 1 AND space_id = 16;     -- Балласт 5 ЛБ
UPDATE compartment SET mass = 159.8 WHERE ship_id = 1 AND space_id = 17;     -- Балласт 5 ДД
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 18;     -- Балласт 6 Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 19;     -- Балласт 6 ЛБ
UPDATE compartment SET mass = 104.8 WHERE ship_id = 1 AND space_id = 20;     -- Балласт 6 ДД
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 21;     -- Балласт 7 Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 22;     -- Балласт 7 ЛБ
UPDATE compartment SET mass = 97.5 WHERE ship_id = 1 AND space_id = 23;     -- Балласт 7 ДД

UPDATE compartment SET mass = 0.55 WHERE ship_id = 1 AND space_id = 24;
UPDATE compartment SET mass = 0.55 WHERE ship_id = 1 AND space_id = 25;
UPDATE compartment SET mass = 3.5 WHERE ship_id = 1 AND space_id = 26;
UPDATE compartment SET mass = 3.51 WHERE ship_id = 1 AND space_id = 27;
UPDATE compartment SET mass = 5.34 WHERE ship_id = 1 AND space_id = 28;
UPDATE compartment SET mass = 5.34 WHERE ship_id = 1 AND space_id = 29;
UPDATE compartment SET mass = 0.00 WHERE ship_id = 1 AND space_id = 30;
UPDATE compartment SET mass = 0.11 WHERE ship_id = 1 AND space_id = 31;
UPDATE compartment SET mass = 4.51 WHERE ship_id = 1 AND space_id = 32;
UPDATE compartment SET mass = 0.39 WHERE ship_id = 1 AND space_id = 33;
UPDATE compartment SET mass = 0.37 WHERE ship_id = 1 AND space_id = 34;
UPDATE compartment SET mass = 0.37 WHERE ship_id = 1 AND space_id = 35;
UPDATE compartment SET mass = 1.42 WHERE ship_id = 1 AND space_id = 36;
UPDATE compartment SET mass = 1.42 WHERE ship_id = 1 AND space_id = 37;
UPDATE compartment SET mass = 2.15 WHERE ship_id = 1 AND space_id = 38;
UPDATE compartment SET mass = 3.28 WHERE ship_id = 1 AND space_id = 39;
UPDATE compartment SET mass = 7.62 WHERE ship_id = 1 AND space_id = 40;
UPDATE compartment SET mass = 1.90 WHERE ship_id = 1 AND space_id = 41;
UPDATE compartment SET mass = 13.78 WHERE ship_id = 1 AND space_id = 42;
UPDATE compartment SET mass = 0.63 WHERE ship_id = 1 AND space_id = 43;

UPDATE compartment SET mass = 1.80 WHERE ship_id = 1 AND space_id = 47;  -- Экипаж и багаж
UPDATE compartment SET mass = 1.2 WHERE ship_id = 1 AND space_id = 48;   -- Провизия 

UPDATE compartment SET mass = 2304 WHERE ship_id = 1 AND space_id = 1;      -- Грузовой трюм
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 51;      -- Отсек 1
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 52;      -- Отсек 2
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 53;      -- Отсек 3
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 54;      -- Отсек 1 + 2
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 55;      -- Отсек 2 + 3

UPDATE compartment SET active = FALSE WHERE ship_id = 1 AND space_id = 61;  -- Зерновая переборка 113 шп
UPDATE compartment SET active = FALSE WHERE ship_id = 1 AND space_id = 62;  -- Зерновая переборка 51 шп
UPDATE compartment SET active = TRUE WHERE ship_id = 1 AND space_id = 63;  -- Зерновая переборка 28 шп
UPDATE compartment SET active = TRUE WHERE ship_id = 1 AND space_id = 64;  -- Зерновая переборка 27 шп

UPDATE compartment SET mass = 864, active = TRUE WHERE ship_id = 1 AND space_id = 71;      -- Палубный груз

TRUNCATE TABLE cargo;

-- INSERT INTO cargo
--  (ship_id, name, mass, timber, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z, loading_type)
-- VALUES    
--  (1, 'Палубный груз',   864,    false, -44.194,     37.656,   0,      0,     10.3, 'cargo');


