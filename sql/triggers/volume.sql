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

    IF ( water_density IS NULL )
    THEN
        RAISE NOTICE 'update_volume no water_density for ship_id:[%]', changed_ship_id;
        RETURN NULL;
    END IF;

    SELECT 
        value
    INTO 
        mass
    FROM 
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';

    IF ( mass IS NULL )
    THEN
        RAISE NOTICE 'update_volume no mass for ship_id:[%]', changed_ship_id;
        RETURN NULL;
    END IF;  

    volume = mass/water_density;

    RAISE NOTICE 'update_volume ship_id:[%] water_density:[%] mass:[%] volume:[%]', changed_ship_id, water_density, mass, volume;

    IF (
        EXISTS (
            SELECT
                ship_id
            FROM
                ship s
            WHERE 
                s.ship_id = changed_ship_id 
                AND key = 'volume' 
        ) )
    THEN
        RAISE NOTICE 'update_volume update volume:[%]', volume;
        UPDATE
            ship s
        SET 
            value = volume
        WHERE
            s.ship_id = changed_ship_id
            AND key = 'volume';
        RETURN NULL;
    ELSE
        RAISE NOTICE 'update_volume insert volume:[%]', volume;
        INSERT INTO ship
            (ship_id, key, value, value_type, name, unit)
        VALUES
            (changed_ship_id, 'volume', volume, 'real', 'Volume of ship displacement', 'm^3'); 
    END IF; 

    RETURN NULL;
END;
$update_volume$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_ship
    AFTER INSERT OR UPDATE ON ship
    FOR EACH ROW 
    WHEN (NEW.key = 'mass' OR NEW.key = 'water_density')
    EXECUTE FUNCTION update_volume();

CREATE OR REPLACE TRIGGER check_delete_ship
    AFTER DELETE ON ship
    FOR EACH ROW 
    WHEN (OLD.key = 'mass')
    EXECUTE FUNCTION update_volume();
