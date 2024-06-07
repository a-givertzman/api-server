-- протокол 66
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 1;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 2;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 3;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 4;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 5;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 6;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 7;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 8;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 9;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 10;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 11;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 12;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 13;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 14;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 15;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 16;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 17;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 18;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 19;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 20;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 21;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 22;
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 23;
UPDATE compartment SET mass = 5.51 WHERE ship_id = 1 AND space_id = 24;  -- Цистерна расходного топлива 1 ЛБ
UPDATE compartment SET mass = 5.51 WHERE ship_id = 1 AND space_id = 25;  -- Цистерна расходного топлива 2 ЛБ
UPDATE compartment SET mass = 34.98 WHERE ship_id = 1 AND space_id = 26; -- Цистерна запасного топлива 1 Пр.Б
UPDATE compartment SET mass = 35.10 WHERE ship_id = 1 AND space_id = 27; -- Цистерна запасного топлива 2 ЛБ
UPDATE compartment SET mass = 53.42 WHERE ship_id = 1 AND space_id = 28;-- Цистерна запасного топлива 3 Пр.Б
UPDATE compartment SET mass = 53.42 WHERE ship_id = 1 AND space_id = 29;-- Цистерна запасного топлива 3 ЛБ
UPDATE compartment SET mass = 0.00 WHERE ship_id = 1 AND space_id = 30;  -- Цистерна переливная ДП
UPDATE compartment SET mass = 1.06 WHERE ship_id = 1 AND space_id = 31;  -- Цистерна расходного топлива АДГ Пр.Б
UPDATE compartment SET mass = 45.09 WHERE ship_id = 1 AND space_id = 32; -- Цистерна пресной воды 1 ДП (носовая)
UPDATE compartment SET mass = 3.94 WHERE ship_id = 1 AND space_id = 33;  -- Цистерна пресной воды 2 Пр.Б (кормовая)
UPDATE compartment SET mass = 3.71 WHERE ship_id = 1 AND space_id = 34;  -- Цистерна питьевой воды 1 ЛБ
UPDATE compartment SET mass = 3.71 WHERE ship_id = 1 AND space_id = 35;  -- Цистерна питьевой воды 2 ЛБ
UPDATE compartment SET mass = 2.49 WHERE ship_id = 1 AND space_id = 36;  -- Цистерна запасного масла ГД
UPDATE compartment SET mass = 2.49 WHERE ship_id = 1 AND space_id = 37;  -- Цистерна запасного масла ДГ
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 38;     -- Цистерна отработанного масла ЛБ
UPDATE compartment SET mass = 32.84 WHERE ship_id = 1 AND space_id = 39; -- Цистерна мочевины ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 40; -- Цистерна нефтеостатков ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 41; -- Шламовая цистерна Пр.Б
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 41; -- Сточная цистерна 1 ДП
UPDATE compartment SET mass = 0 WHERE ship_id = 1 AND space_id = 43; -- Сточная цистерна 2 ЛБ

UPDATE compartment SET mass = 1.80 WHERE ship_id = 1 AND space_id = 47;  -- Экипаж и багаж
UPDATE compartment SET mass = 1.2 WHERE ship_id = 1 AND space_id = 48;   -- Провизия 

TRUNCATE TABLE cargo;