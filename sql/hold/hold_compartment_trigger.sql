-- Заполнение данных по грузам в трюмах

CREATE OR REPLACE FUNCTION update_hold_compartment_parameters () RETURNS TRIGGER 
AS $update_hold_compartment_parameters$
DECLARE 
    result hold_compartment_curve%rowtype;
    matter_type cargo_category.matter_type%TYPE;
BEGIN 
    RAISE NOTICE 'update_hold_compartment_parameters begin OLD:[%] NEW:[%]', OLD, NEW;

    if NEW.density IS NULL THEN 
        RAISE NOTICE 'SKIP update_hold_compartment_parameters, NEW.density IS NULL';
        RETURN NEW;
    END IF;

-- Ищем что изменилось и пересчитываем остальное
    IF (TG_OP = 'INSERT') THEN
 --       RAISE NOTICE 'update_hold_compartment_parameters INSERT begin';

        if NEW.volume IS NOT NULL THEN 
            RAISE NOTICE 'update_hold_compartment_parameters INSERT NEW.volume';     
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSIF NEW.mass IS NOT NULL THEN  
            RAISE NOTICE 'update_hold_compartment_parameters INSERT NEW.mass';   
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.mass/NEW.density);
        ELSIF NEW.level IS NOT NULL THEN 
            RAISE NOTICE 'update_hold_compartment_parameters INSERT NEW.mass';  
            result = get_hold_compartment_curve_level(NEW.ship_id, NEW.id, NEW.level);
        ELSE 
            RAISE NOTICE 'update_hold_compartment_parameters INSERT no data';  
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, 0);
        END IF;
    ELSIF TG_OP = 'UPDATE' THEN
        RAISE NOTICE 'update_hold_compartment_parameters UPDATE begin';
        if (NEW.volume IS NOT NULL AND OLD.volume IS NULL) OR NEW.volume != OLD.volume THEN
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.volume != OLD.volume';
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSIF (NEW.mass IS NOT NULL AND OLD.mass IS NULL) OR NEW.mass != OLD.mass THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.mass != OLD.mass';
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.mass/NEW.density);
        ELSIF (NEW.level IS NOT NULL AND OLD.level IS NULL) OR NEW.level != OLD.level THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.level != OLD.level';
            result = get_hold_compartment_curve_level(NEW.ship_id, NEW.id, NEW.level);
        ELSIF (NEW.density IS NOT NULL AND OLD.density IS NULL) OR NEW.density != OLD.density THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.density != OLD.density';
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSE 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE no new data!';
            result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        END IF;
    ELSE 
        RAISE NOTICE 'update_hold_compartment_parameters ERROR: no TG_OP';
        RETURN NEW;
    END IF;

    NEW.level = result.level;
    NEW.volume = result.volume;
    if NEW.volume_max IS NOT NULL THEN 
        NEW.stowage_factor = NEW.volume*100/NEW.volume_max;
    ELSE
        NEW.stowage_factor = NULL;
    END IF;
    NEW.mass = NEW.volume*NEW.density;
    NEW.mass_shift_x = result.buoyancy_x;
    NEW.mass_shift_y = result.buoyancy_y;
    NEW.mass_shift_z = result.buoyancy_z;

    -- Check if new category is of bulk type and then update grain_moment for hold_compartment entry;
    SELECT cc.matter_type INTO matter_type FROM cargo_category AS cc WHERE id = NEW.category_id;
    IF (matter_type = 'bulk') THEN
        NEW.grain_moment = get_hold_grain_moment(NEW.ship_id, NEW.id, NEW.level);
    END IF;

    RAISE NOTICE 'update_hold_compartment_parameters OK, NEW:[%]', NEW;

    RETURN NEW;
END;
$update_hold_compartment_parameters$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS get_hold_compartment_curve_volume CASCADE;
CREATE OR REPLACE FUNCTION get_hold_compartment_curve_volume(src_ship_id INT, src_id INT, src_volume FLOAT8) 
RETURNS SETOF hold_compartment_curve 
AS $get_hold_compartment_curve_volume$
DECLARE 
    r1 hold_compartment_curve%rowtype;
    r2 hold_compartment_curve%rowtype;
    res hold_compartment_curve%rowtype;
    delta FLOAT8;
    coeff1 FLOAT8;
    coeff2 FLOAT8;
BEGIN 
    RAISE NOTICE 'get_hold_compartment_curve_volume ship_id:[%] id:[%] volume:[%]', src_ship_id, src_id, src_volume;

    SELECT 
        *
    INTO 
        r1
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_volume - t.volume) ASC LIMIT 1;

    SELECT 
        *
    INTO 
        r2
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_volume - t.volume) ASC LIMIT 1 OFFSET 1;

    RAISE NOTICE 'get_hold_compartment_curve_volume r1 volume:[%] level:[%]  r2 volume:[%] level:[%] ', r1.volume, r1.level, r2.volume, r2.level;

    IF (r1.volume < src_volume AND r2.volume < r1.volume) THEN
        src_volume = r1.volume;
    END IF;

    IF (r1.volume > src_volume AND r2.volume > r1.volume)THEN
        src_volume = r1.volume;
    END IF;

    IF r1.volume = r2.volume THEN
        coeff1 = 1;
        coeff2 = 0;
    ELSE 
        delta = r1.volume - r2.volume;
        coeff1 = (r1.volume - src_volume) / delta;
        coeff2 = (src_volume - r2.volume) / delta;
    END IF;

    res.level = r2.level*coeff1 + r1.level*coeff2;  
    res.volume = r2.volume*coeff1 + r1.volume*coeff2;
    res.buoyancy_x = r2.buoyancy_x*coeff1 + r1.buoyancy_x*coeff2;
    res.buoyancy_y = r2.buoyancy_y*coeff1 + r1.buoyancy_y*coeff2;
    res.buoyancy_z = r2.buoyancy_z*coeff1 + r1.buoyancy_z*coeff2;

    RAISE NOTICE 'get_hold_compartment_curve_volume OK, res level:[%]  volume:[%]', res.level, res.volume;

    RETURN NEXT res;
END;
$get_hold_compartment_curve_volume$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS get_hold_grain_moment CASCADE;
CREATE OR REPLACE FUNCTION get_hold_grain_moment(src_ship_id INT, src_id INT, src_level FLOAT8) 
RETURNS FLOAT8 
AS $get_hold_grain_moment$
DECLARE 
    r1 hold_grain_moment%rowtype;
    r2 hold_grain_moment%rowtype;
    res_moment FLOAT8;
    delta FLOAT8;
    coeff1 FLOAT8;
    coeff2 FLOAT8;
BEGIN 
    RAISE NOTICE 'get_hold_grain_moment ship_id:[%] id:[%] level:[%]', src_ship_id, src_id, src_level;

    SELECT 
        *
    INTO 
        r1
    FROM hold_grain_moment t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

    SELECT 
        *
    INTO 
        r2
    FROM hold_grain_moment t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 1 OFFSET 1;

    RAISE NOTICE 'get_hold_grain_moment r1 level:[%] moment:[%]  r2 level:[%] moment:[%] ', r1.level, r1.moment, r2.level, r2.moment;


    IF (r1.level < src_level AND r2.level < r1.level) THEN
        src_level = r1.level;
    END IF;

    IF (r1.level > src_level AND r2.level > r1.level)THEN
        src_level = r1.level;
    END IF;

    IF r1.level = r2.level THEN
        coeff1 = 0;
        coeff2 = 1;
    ELSE 
        delta = r1.level - r2.level;
        coeff1 = (r1.level - src_level) / delta;
        coeff2 = (src_level - r2.level) / delta;
    END IF;

    --res.level = r2.level*coeff1 + r1.level*coeff2;  
    res_moment = r2.moment*coeff1 + r1.moment*coeff2;
    
    RAISE NOTICE 'get_hold_grain_moment OK, src_level:[%] res_moment:[%]', src_level, res_moment;

    RETURN res_moment;
END;
$get_hold_grain_moment$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS get_hold_compartment_curve_level CASCADE;
CREATE OR REPLACE FUNCTION get_hold_compartment_curve_level(src_ship_id INT, src_id INT, src_level FLOAT8) 
RETURNS SETOF hold_compartment_curve 
AS $get_hold_compartment_curve_level$
DECLARE 
    r1 hold_compartment_curve%rowtype;
    r2 hold_compartment_curve%rowtype;
    res hold_compartment_curve%rowtype;
    delta FLOAT8;
    coeff1 FLOAT8;
    coeff2 FLOAT8;
BEGIN 
    RAISE NOTICE 'get_hold_compartment_curve_level ship_id:[%] id:[%] level:[%]', src_ship_id, src_id, src_level;

    SELECT 
        *
    INTO 
        r1
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

    SELECT 
        *
    INTO 
        r2
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 1 OFFSET 1;

    RAISE NOTICE 'get_hold_compartment_curve_level res r1 volume:[%] level:[%]  r2 volume:[%] level:[%] ', r1.volume, r1.level, r2.volume, r2.level;


    IF (r1.level < src_level AND r2.level < r1.level) THEN
        src_level = r1.level;
    END IF;

    IF (r1.level > src_level AND r2.level > r1.level)THEN
        src_level = r1.level;
    END IF;

    IF r1.level = r2.level THEN
        coeff1 = 0;
        coeff2 = 1;
    ELSE 
        delta = r1.level - r2.level;
        coeff1 = (r1.level - src_level) / delta;
        coeff2 = (src_level - r2.level) / delta;
    END IF;

    res.level = r2.level*coeff1 + r1.level*coeff2;  
    res.volume = r2.volume*coeff1 + r1.volume*coeff2;
    res.buoyancy_x = r2.buoyancy_x*coeff1 + r1.buoyancy_x*coeff2;
    res.buoyancy_y = r2.buoyancy_y*coeff1 + r1.buoyancy_y*coeff2;
    res.buoyancy_z = r2.buoyancy_z*coeff1 + r1.buoyancy_z*coeff2;
    
    RAISE NOTICE 'get_hold_compartment_curve_level res level:[%]  volume:[%] ', res.level, res.volume;

    RETURN NEXT res;
END;
$get_hold_compartment_curve_level$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_hold_compartment_parameters
    BEFORE INSERT OR UPDATE ON hold_compartment
    FOR EACH ROW 
    EXECUTE FUNCTION update_hold_compartment_parameters();
