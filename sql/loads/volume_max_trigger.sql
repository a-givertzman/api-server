-- Заполнение поля максимального объема в таблице по грузам в трюмах и цистернах 

CREATE OR REPLACE FUNCTION update_compartment_curve_volume_max () 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
DECLARE 
    mviews RECORD;
    r_max compartment_curve%rowtype;
BEGIN 
    RAISE NOTICE 'update_compartment_curve_volume_max begin';

    FOR mviews IN 
        SELECT DISTINCT n.ship_id as ship_id, n.space_id as space_id FROM new_table n
    LOOP
        RAISE NOTICE 'update_compartment_curve_volume_max LOOP begin ship_id:[%] space_id:[%]', mviews.ship_id, mviews.space_id;
        SELECT *
        INTO r_max
        FROM new_table t
        WHERE t.ship_id = ship_id AND t.space_id = space_id
        ORDER BY t.volume DESC LIMIT 1;
    RAISE NOTICE 'update_compartment_curve_volume_max LOOP begin volume_max:[%]', r_max.volume;
        UPDATE compartment as c
        SET volume_max = r_max.volume
        WHERE c.ship_id = r_max.ship_id AND c.space_id = r_max.space_id;
    END LOOP;

    RAISE NOTICE 'update_compartment_curve_volume_max OK';

    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER check_insert_compartment_curve_volume_max
    AFTER INSERT
    ON compartment_curve
    REFERENCING NEW TABLE AS new_table
    FOR EACH STATEMENT
    EXECUTE FUNCTION update_compartment_curve_volume_max();

CREATE OR REPLACE TRIGGER check_update_compartment_curve_volume_max
    AFTER UPDATE 
    ON compartment_curve
    REFERENCING NEW TABLE AS new_table
    FOR EACH STATEMENT
    EXECUTE FUNCTION update_compartment_curve_volume_max();


CREATE OR REPLACE FUNCTION update_compartment_volume_max () 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
DECLARE 
    r_max compartment_curve%rowtype;
BEGIN 
    RAISE NOTICE 'update_compartment_volume_max begin, NEW:[%]', NEW;

    if NEW.volume_max IS NOT NULL THEN 
        RAISE NOTICE 'SKIP update_compartment_volume_max, NEW.volume_max IS NOT NULL, RETURN';
        RETURN NEW;
    END IF;

    SELECT *
    INTO r_max
    FROM compartment_curve t
    WHERE t.ship_id = NEW.ship_id AND t.space_id = NEW.space_id
    ORDER BY t.volume DESC LIMIT 1;
    NEW.volume_max = r_max.volume;

    RAISE NOTICE 'update_compartment_volume_max OK, NEW:[%]', NEW;

    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER check_update_compartment_volume_max
    BEFORE INSERT OR UPDATE ON compartment
    FOR EACH ROW 
    EXECUTE FUNCTION update_compartment_volume_max();





