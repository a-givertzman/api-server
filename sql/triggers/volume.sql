-- Расчет объемного водоизмещения судна

CREATE OR REPLACE FUNCTION update_volume () RETURNS TRIGGER 
AS $update_volume$
DECLARE 
    changed_ship_id int;
    mass real;
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

    SELECT
        value
    INTO
        water_density        
    FROM
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'water_density';

    SELECT
        value
    INTO
        mass        
    FROM
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';    

    volume = mass/water_density;

--  RAISE NOTICE 'water_density:[%] mass:[%] volume:[%]', water_density, mass, volume;

    UPDATE
        ship s
    SET 
        value = volume
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'volume';

    RETURN NULL;
END;
$update_volume$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_ship
    AFTER INSERT OR UPDATE ON ship
    FOR EACH ROW 
    WHEN (NEW.key = 'mass' OR NEW.key = 'water_density')
    EXECUTE FUNCTION update_volume();

CREATE OR REPLACE TRIGGER check_delete_load_space
    AFTER DELETE ON load_space
    FOR EACH ROW 
    WHEN (OLD.key = 'mass' OR OLD.key = 'water_density')
    EXECUTE FUNCTION update_volume();



