-- Расчет общей массы судна и его объемного водоизмещения
-- Масса получается как сумма постоянной массы по шпациям +
-- масса всех грузов. Водоизмещение получается делением
-- общей массы на плотность воды.

CREATE OR REPLACE FUNCTION calculate_mass_and_volume() RETURNS TRIGGER 
AS $calculate_mass_and_volume$
DECLARE 
    changed_ship_id int;
    loads_mass real;
    const_mass real;
    summ_mass real;
    water_density real;
    volume real;
BEGIN 
-- Ищем судно которое изменилось
    IF (TG_OP = 'DELETE') THEN
        changed_ship_id = OLD.ship_id;
    ELSIF (TG_OP = 'UPDATE') THEN
        changed_ship_id = NEW.ship_id;
    ELSIF (TG_OP = 'INSERT') THEN
        changed_ship_id = NEW.ship_id;
    ELSE 
-- RAISE NOTICE 'no TG_OP';
        RETURN NULL;
    END IF;

-- RAISE NOTICE 'changed_ship_id: [%]', changed_ship_id;

    SELECT
        SUM(value)
    INTO 
        loads_mass
    FROM
        (
            SELECT
                value:: DECIMAL
            FROM
                load_space l
            WHERE
                l.ship_id = changed_ship_id
                AND key = 'mass'
    );

    SELECT
        SUM(value)
    INTO
        const_mass
    FROM
    (
        SELECT
            value
        FROM
            load_constant l
        WHERE
            l.ship_id = changed_ship_id
    );

    SELECT
        value::DECIMAL
    INTO
        water_density        
    FROM
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'water_density';

    summ_mass = loads_mass + const_mass;
    volume = summ_mass/water_density;

--  RAISE NOTICE 'calculate_mass_and_volume ship_id:[%] summ_mass:[%] volume:[%]', changed_ship_id, summ_mass, volume;

    UPDATE
        ship s
    SET 
        value = summ_mass
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';

    UPDATE
        ship s
    SET
        value = volume
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'volume';

    RETURN NULL;
END;
$calculate_mass_and_volume$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_load_space
    AFTER INSERT OR UPDATE ON load_space
    FOR EACH ROW 
    WHEN (NEW.key = 'mass')
    EXECUTE FUNCTION calculate_mass_and_volume();

CREATE OR REPLACE TRIGGER check_delete_load_space
    AFTER DELETE ON load_space
    FOR EACH ROW 
    WHEN (OLD.key = 'mass')
    EXECUTE FUNCTION calculate_mass_and_volume();

CREATE OR REPLACE TRIGGER check_load_constant
    AFTER INSERT OR UPDATE OR DELETE ON load_constant
    FOR EACH ROW 
    EXECUTE FUNCTION calculate_mass_and_volume();



