
-- Инициализация n_parts
CREATE OR REPLACE FUNCTION init_n_parts () RETURNS TRIGGER 
AS $init_n_parts$
DECLARE 
    changed_ship_id int;
    length real;
    n_parts real;
BEGIN 
-- Ищем судно для которого отсутствует распределение 
-- для расчета эпюров и добавляем ее значение
    SELECT 
        ship_id
    INTO 
        changed_ship_id
    FROM 
        ship
    WHERE NOT ship_id IN (
        SELECT DISTINCT
            ship_id
        FROM 
            ship
        WHERE
            key='n_parts'
    ); 

    IF ( changed_ship_id IS NOT NULL )
    THEN
        RAISE NOTICE 'init_n_parts ship_id:[%], set n_parts = 20', changed_ship_id;
        n_parts = 20;
        INSERT INTO ship
            (ship_id, key, value, value_type, name, unit)
        VALUES
            (changed_ship_id, 'n_parts', n_parts, 'int', 'Number of Parts', NULL);
    ELSE
        RAISE NOTICE 'init_n_parts no ship_id without n_parts';
    END IF;

    RETURN NULL;
END;
$init_n_parts$ LANGUAGE plpgsql;


-- Инициализация данных computed_frame
CREATE OR REPLACE FUNCTION update_computed_frame () RETURNS TRIGGER 
AS $update_computed_frame$
DECLARE 
    changed_ship_id int;
    length real;
    n_parts real;
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
        length
    FROM 
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'length';

    SELECT 
        value
    INTO 
        n_parts
    FROM 
        ship s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'n_parts';

    IF ( length IS NULL ) 
    THEN
        RAISE NOTICE 'update_computed_frame no length for ship_id:[%]', changed_ship_id;
        RETURN NULL;
    END IF;

    IF ( n_parts IS NULL OR n_parts <= 0 ) 
    THEN
        RAISE NOTICE 'update_computed_frame no n_parts for ship_id:[%]', changed_ship_id;
        RETURN NULL;
    END IF;

    RAISE NOTICE 'update_computed_frame calculate frames with n_parts:[%] for ship_id:[%]', n_parts, changed_ship_id;

    DELETE FROM 
        computed_frame 
    WHERE 
        ship_id = changed_ship_id;

    FOR index in 0..n_parts LOOP
        INSERT INTO
            computed_frame (ship_id, index, key, value)
        VALUES
            (changed_ship_id, index, 'shift_x', length*(index/n_parts));
    END LOOP;

    RETURN NULL;
END;
$update_computed_frame$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_init_n_parts
    AFTER INSERT ON ship
    EXECUTE FUNCTION init_n_parts();

CREATE OR REPLACE TRIGGER check_delete_n_parts
    AFTER DELETE ON ship
    EXECUTE FUNCTION init_n_parts();

CREATE OR REPLACE TRIGGER check_update_n_parts
    AFTER INSERT OR UPDATE ON ship
    FOR EACH ROW 
    WHEN (NEW.key = 'n_parts' OR NEW.key = 'length')
    EXECUTE FUNCTION update_computed_frame();
