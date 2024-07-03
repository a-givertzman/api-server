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
        ship_parameters
    WHERE NOT ship_id IN (
        SELECT
            ship_id
        FROM 
            ship_parameters
        WHERE
            key='Number of Parts'
    ); 

    IF ( changed_ship_id IS NOT NULL )
    THEN
        RAISE NOTICE 'init_n_parts ship_id:[%], set n_parts = 20', changed_ship_id;
        n_parts = 20;
        INSERT INTO ship_parameters
            (ship_id, key, value, value_type, unit)
        VALUES
            (changed_ship_id, 'Number of Parts', n_parts, 'int', NULL);
    ELSE
        RAISE NOTICE 'init_n_parts no ship_id without n_parts';
    END IF;

    RETURN NEW;
END;
$init_n_parts$ LANGUAGE plpgsql;


-- Инициализация данных computed_frame_space
CREATE OR REPLACE FUNCTION update_computed_frame_space () RETURNS TRIGGER 
AS $update_computed_frame_space$
DECLARE 
    changed_ship_id int;
    length real;
    n_parts real;
    middle_x real;
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
        ship_parameters s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'L.O.A';

    SELECT 
        value
    INTO 
        n_parts
    FROM 
        ship_parameters s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'Number of Parts';

    SELECT 
        value
    INTO 
        middle_x
    FROM 
        ship_parameters s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'Length middle from stern';

    IF ( length IS NULL ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no length for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    IF ( n_parts IS NULL OR n_parts <= 0 ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no n_parts for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    IF ( midship IS NULL OR midship <= 0 ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no midship for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    RAISE NOTICE 'update_computed_frame_space calculate frames with n_parts:[%] for ship_id:[%]', n_parts, changed_ship_id;

    DELETE FROM 
        computed_frame_space 
    WHERE 
        ship_id = changed_ship_id;

    FOR index in 0..(n_parts-1) LOOP
        INSERT INTO
            computed_frame_space (ship_id, index, start_x, end_x)
        VALUES
            (changed_ship_id, index, length*index/n_parts - middle_x, length*(index+1)/n_parts - middle_x);
    END LOOP;

    RETURN NEW;
END;
$update_computed_frame_space$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_init_n_parts
    AFTER INSERT ON ship_parameters
    EXECUTE FUNCTION init_n_parts();

CREATE OR REPLACE TRIGGER check_delete_n_parts
    AFTER DELETE ON ship_parameters
    EXECUTE FUNCTION init_n_parts();

CREATE OR REPLACE TRIGGER check_update_n_parts
    AFTER INSERT OR UPDATE ON ship_parameters
    FOR EACH ROW 
    WHEN (NEW.key = 'Number of Parts' OR NEW.key = 'L.O.A')
    EXECUTE FUNCTION update_computed_frame_space();

