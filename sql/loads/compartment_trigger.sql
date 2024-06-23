-- Выставление флагов активности для отсеков трюма
-- в зависимости от активности зерновых переборок

CREATE OR REPLACE FUNCTION update_compartment_flag () RETURNS TRIGGER 
AS $update_compartment_flag$
DECLARE 
    result compartment%rowtype; 
BEGIN 

    RAISE NOTICE 'update_compartment_flag begin begin OLD:[%] NEW:[%]', OLD, NEW;

    SELECT 
        *
    INTO 
        r2
    FROM 
        compartment_separators c
    WHERE 
        c.ship_id = NEW.ship_id AND c.compartment_space_id = NEW.space_id;


-- Ищем что изменилось и пересчитываем остальное
    IF (TG_OP = 'INSERT') THEN
 --       RAISE NOTICE 'update_compartment_flag INSERT begin';

        if NEW.volume IS NOT NULL THEN 
    --        RAISE NOTICE 'update_compartment_flag INSERT NEW.volume';     
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSIF NEW.mass IS NOT NULL THEN  
    --        RAISE NOTICE 'update_compartment_flag INSERT NEW.mass';   
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.mass/NEW.density);
        ELSIF NEW.level IS NOT NULL THEN 
    --        RAISE NOTICE 'update_compartment_flag INSERT NEW.mass';  
            result = get_compartment_curve_level(NEW.ship_id, NEW.space_id, NEW.level);
        ELSE 
    --        RAISE NOTICE 'update_compartment_flag INSERT no data';  
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, 0);
        END IF;
    ELSIF TG_OP = 'UPDATE' THEN
        RAISE NOTICE 'update_compartment_flag UPDATE begin';
        if (NEW.volume IS NOT NULL AND OLD.volume IS NULL) OR NEW.volume != OLD.volume THEN
    --        RAISE NOTICE 'update_compartment_flag UPDATE NEW.volume != OLD.volume';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSIF (NEW.mass IS NOT NULL AND OLD.mass IS NULL) OR NEW.mass != OLD.mass THEN 
    --        RAISE NOTICE 'update_compartment_flag UPDATE NEW.mass != OLD.mass';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.mass/NEW.density);
        ELSIF (NEW.level IS NOT NULL AND OLD.level IS NULL) OR NEW.level != OLD.level THEN 
    --        RAISE NOTICE 'update_compartment_flag UPDATE NEW.level != OLD.level';
            result = get_compartment_curve_level(NEW.ship_id, NEW.space_id, NEW.level);
        ELSIF (NEW.density IS NOT NULL AND OLD.density IS NULL) OR NEW.density != OLD.density THEN 
    --        RAISE NOTICE 'update_compartment_flag UPDATE NEW.density != OLD.density';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSE 
    --        RAISE NOTICE 'update_compartment_flag UPDATE no new data!';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        END IF;
    ELSE 
        RAISE NOTICE 'update_compartment_flag ERROR: no TG_OP';
        RETURN NEW;
    END IF;

    NEW.level = result.level;
    NEW.volume = result.volume;
    NEW.mass = NEW.volume*NEW.density;
    NEW.mass_shift_x = result.mass_shift_x;
    NEW.mass_shift_y = result.mass_shift_y;
    NEW.mass_shift_z = result.mass_shift_z;
    NEW.m_f_s_y = result.m_f_s_y;
    NEW.m_f_s_x = result.m_f_s_x;

    RAISE NOTICE 'update_compartment_flag OK, NEW:[%]', NEW;

    RETURN NEW;
END;
$update_compartment_flag$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_compartment_flag
    BEFORE INSERT OR UPDATE ON compartment
    FOR EACH ROW 
    WHEN (NEW.active != OLD.active)
    EXECUTE FUNCTION update_compartment_flag();