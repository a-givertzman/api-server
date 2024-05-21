-- протокол 99UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 2;      -- Форпик Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 3;      -- Форпик ЛБ
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 4;      -- Балласт 1 Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 5;      -- Балласт 1 ЛБ
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 6;      -- Балласт 2 Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 7;      -- Балласт 2 ЛБ
UPDATE load_space SET mass = 99.2 WHERE ship_id = 1 AND space_id = 8;      -- Балласт 2 ДД
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 9;      -- Балласт 3 Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 10;     -- Балласт 3 ЛБ
UPDATE load_space SET mass = 99.2 WHERE ship_id = 1 AND space_id = 11;     -- Балласт 3 ДД
UPDATE load_space SET mass = 190.9 WHERE ship_id = 1 AND space_id = 12;     -- Балласт 4 Пр.Б
UPDATE load_space SET mass = 190.9 WHERE ship_id = 1 AND space_id = 13;     -- Балласт 4 ЛБ
UPDATE load_space SET mass = 159.8 WHERE ship_id = 1 AND space_id = 14;     -- Балласт 4 ДД
UPDATE load_space SET mass = 190.9 WHERE ship_id = 1 AND space_id = 15;     -- Балласт 5 Пр.Б
UPDATE load_space SET mass = 190.9 WHERE ship_id = 1 AND space_id = 16;     -- Балласт 5 ЛБ
UPDATE load_space SET mass = 159.8 WHERE ship_id = 1 AND space_id = 17;     -- Балласт 5 ДД
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 18;     -- Балласт 6 Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 19;     -- Балласт 6 ЛБ
UPDATE load_space SET mass = 104.8 WHERE ship_id = 1 AND space_id = 20;     -- Балласт 6 ДД
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 21;     -- Балласт 7 Пр.Б
UPDATE load_space SET mass = 0 WHERE ship_id = 1 AND space_id = 22;     -- Балласт 7 ЛБ
UPDATE load_space SET mass = 97.5 WHERE ship_id = 1 AND space_id = 23;     -- Балласт 7 ДД

UPDATE load_space SET mass = 0.55 WHERE ship_id = 1 AND space_id = 24;
UPDATE load_space SET mass = 0.55 WHERE ship_id = 1 AND space_id = 25;
UPDATE load_space SET mass = 3.5 WHERE ship_id = 1 AND space_id = 26;
UPDATE load_space SET mass = 3.51 WHERE ship_id = 1 AND space_id = 27;
UPDATE load_space SET mass = 5.34 WHERE ship_id = 1 AND space_id = 28;
UPDATE load_space SET mass = 5.34 WHERE ship_id = 1 AND space_id = 29;
UPDATE load_space SET mass = 0.00 WHERE ship_id = 1 AND space_id = 30;
UPDATE load_space SET mass = 0.11 WHERE ship_id = 1 AND space_id = 31;
UPDATE load_space SET mass = 4.51 WHERE ship_id = 1 AND space_id = 32;
UPDATE load_space SET mass = 0.39 WHERE ship_id = 1 AND space_id = 33;
UPDATE load_space SET mass = 0.37 WHERE ship_id = 1 AND space_id = 34;
UPDATE load_space SET mass = 0.37 WHERE ship_id = 1 AND space_id = 35;
UPDATE load_space SET mass = 1.42 WHERE ship_id = 1 AND space_id = 36;
UPDATE load_space SET mass = 1.42 WHERE ship_id = 1 AND space_id = 37;
UPDATE load_space SET mass = 2.15 WHERE ship_id = 1 AND space_id = 38;
UPDATE load_space SET mass = 3.28 WHERE ship_id = 1 AND space_id = 39;
UPDATE load_space SET mass = 7.62 WHERE ship_id = 1 AND space_id = 40;
UPDATE load_space SET mass = 1.90 WHERE ship_id = 1 AND space_id = 41;
UPDATE load_space SET mass = 13.78 WHERE ship_id = 1 AND space_id = 42;
UPDATE load_space SET mass = 0.63 WHERE ship_id = 1 AND space_id = 43;

UPDATE load_space SET mass = 1.80 WHERE ship_id = 1 AND space_id = 47;
UPDATE load_space SET mass = 0.12 WHERE ship_id = 1 AND space_id = 48;

UPDATE load_space SET mass = 24.0 WHERE ship_id = 1 AND space_id = 49;  -- Зерновая переборка

UPDATE load_space SET   mass = 2304, 
                        bound_x1 = 34, 
                        bound_x2 = 147,
                        mass_shift_x = -1.5, 
                        mass_shift_y = 0, 
                        mass_shift_z = 3.4
WHERE ship_id = 1 AND space_id = 1;   -- Грузовой трюм

UPDATE load_space SET   mass = 2304, 
                        bound_x1 = 34, 
                        bound_x2 = 147,
                        mass_shift_x = -1.5, 
                        mass_shift_y = 0, 
                        mass_shift_z = 3.4
WHERE ship_id = 1 AND space_id = 50;   -- Грузовой трюм

UPDATE load_space SET   mass = 864,
                        bound_x1 = 31, 
                        bound_x2 = 135,
                        mass_shift_x = 0, 
                        mass_shift_y = 0, 
                        mass_shift_z = 10.3
WHERE ship_id = 1 AND space_id = 50;  -- Палубный груз
