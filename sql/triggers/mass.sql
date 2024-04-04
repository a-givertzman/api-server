-- Расчет общей массы судна

CREATE OR REPLACE FUNCTION update_mass() RETURNS TRIGGER 
AS $update_mass$
DECLARE 
    changed_ship_id int;
    delta_mass real;
    summ_mass real;
BEGIN 
-- Ищем судно которое изменилось и изменение веса
    IF (TG_OP = 'DELETE') THEN
        changed_ship_id = OLD.ship_id;
        delta_mass = OLD.value::DECIMAL;
    ELSIF (TG_OP = 'UPDATE') THEN
        changed_ship_id = NEW.ship_id;
        delta_mass = NEW.value::DECIMAL - OLD.value::DECIMAL;
    ELSIF (TG_OP = 'INSERT') THEN
        changed_ship_id = NEW.ship_id;
        delta_mass = NEW.value::DECIMAL;
    ELSE 
-- RAISE NOTICE 'no TG_OP';
        RETURN NULL;
    END IF;

    SELECT
        value
    INTO
        summ_mass        
    FROM
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';

    IF ( summ_mass IS NULL ) 
    THEN
        RAISE NOTICE 'update_mass no mass for ship_id:[%]', changed_ship_id;         
        RETURN NULL;
    END IF;

    summ_mass = summ_mass + delta_mass;

    RAISE NOTICE 'update_mass changed_ship_id:[%] delta_mass:[%] summ_mass:[%]', changed_ship_id, delta_mass, summ_mass;

    UPDATE
        ship s
    SET 
        value = summ_mass
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';

    RETURN NULL;
END;
$update_mass$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER update_mass_after_update_load_space
    AFTER INSERT OR UPDATE ON load_space
    FOR EACH ROW 
    WHEN (NEW.key = 'mass')
    EXECUTE FUNCTION update_mass();

CREATE OR REPLACE TRIGGER update_mass_after_delete_load_space
    AFTER DELETE ON load_space
    FOR EACH ROW 
    WHEN (OLD.key = 'mass')
    EXECUTE FUNCTION update_mass();

CREATE OR REPLACE TRIGGER update_mass_after_update_load_constant
    AFTER INSERT OR UPDATE OR DELETE ON load_constant
    FOR EACH ROW 
    EXECUTE FUNCTION update_mass();


CREATE OR REPLACE FUNCTION check_mass() RETURNS TRIGGER 
AS $check_mass$
DECLARE 
    changed_ship_id int;
    delta_mass real;
    summ_mass real;
BEGIN 
-- Ищем судно которое изменилось и изменение веса
    IF (TG_OP = 'DELETE') THEN
        changed_ship_id = OLD.ship_id;
        delta_mass = OLD.value::DECIMAL;
    ELSIF (TG_OP = 'UPDATE') THEN
        changed_ship_id = NEW.ship_id;
        delta_mass = NEW.value::DECIMAL - OLD.value::DECIMAL;
    ELSIF (TG_OP = 'INSERT') THEN
        changed_ship_id = NEW.ship_id;
        delta_mass = NEW.value::DECIMAL;
    ELSE 
-- RAISE NOTICE 'no TG_OP';
        RETURN NULL;
    END IF;

    SELECT
        value
    INTO
        summ_mass        
    FROM
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'mass';

    IF ( summ_mass IS NULL ) 
    THEN
        RAISE NOTICE 'check_mass no mass for ship_id:[%]', changed_ship_id;
        summ_mass = calculate_mass(changed_ship_id);

        INSERT INTO ship
            (ship_id, key, value, value_type, name, unit)
        VALUES
            (changed_ship_id, 'mass', summ_mass, 'real', 'Whole ship mass', 't');            
    END IF;

    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$check_mass$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_mass_before_update_load_space
    BEFORE INSERT OR UPDATE ON load_space
    FOR EACH ROW 
    WHEN (NEW.key = 'mass')
    EXECUTE FUNCTION check_mass();

CREATE OR REPLACE TRIGGER check_mass_before_delete_load_space
    BEFORE DELETE ON load_space
    FOR EACH ROW 
    WHEN (OLD.key = 'mass')
    EXECUTE FUNCTION check_mass();

CREATE OR REPLACE TRIGGER check_mass_before_update_load_constant
    BEFORE INSERT OR UPDATE OR DELETE ON load_constant
    FOR EACH ROW 
    EXECUTE FUNCTION check_mass();
