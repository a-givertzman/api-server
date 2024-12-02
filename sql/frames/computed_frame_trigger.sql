-- Инициализация n_parts
CREATE OR REPLACE FUNCTION init_n_parts () RETURNS TRIGGER 
AS $init_n_parts$
DECLARE 
    changed_ship_id int;
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
    stern_x real;
    bow_x real;
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
        pos_x
    INTO 
        stern_x
    FROM (SELECT * FROM physical_frame WHERE ship_id = changed_ship_id ORDER BY pos_x ASC LIMIT 1);

    SELECT 
        pos_x
    INTO 
        bow_x
    FROM (SELECT * FROM physical_frame WHERE ship_id = changed_ship_id ORDER BY pos_x DESC LIMIT 1);

    SELECT 
        value
    INTO 
        n_parts
    FROM 
        ship_parameters s
    WHERE
        s.ship_id = changed_ship_id
        AND key = 'Number of Parts';

    IF ( bow_x IS NULL ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no bow_x for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    IF ( stern_x IS NULL ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no stern_x for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    IF ( n_parts IS NULL OR n_parts <= 0 ) 
    THEN
        RAISE NOTICE 'update_computed_frame_space no n_parts for ship_id:[%]', changed_ship_id;
        RETURN NEW;
    END IF;

    RAISE NOTICE 'update_computed_frame_space calculate frames with n_parts:[%] bow_x:[%] stern_x:[%] for ship_id:[%]', n_parts, bow_x, stern_x, changed_ship_id;

    DELETE FROM 
        computed_frame_space 
    WHERE 
        ship_id = changed_ship_id;

    FOR index in 0..(n_parts-1) LOOP
        INSERT INTO
            computed_frame_space (ship_id, index, start_x, end_x)
        VALUES
            (changed_ship_id, index, (bow_x - stern_x)*index/n_parts, (bow_x - stern_x)*(index+1)/n_parts);
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

