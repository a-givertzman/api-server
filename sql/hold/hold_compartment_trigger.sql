-- Заполнение данных по грузам в трюмах

CREATE OR REPLACE FUNCTION update_hold_compartment_parameters () RETURNS TRIGGER 
AS $update_hold_compartment_parameters$
DECLARE 
    part_space_id INT;
    compartment_curve_result compartment%rowtype;
    hold_compartment_curve_result hold_compartment_curve%rowtype;
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
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSIF NEW.mass IS NOT NULL THEN  
            RAISE NOTICE 'update_hold_compartment_parameters INSERT NEW.mass';   
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.mass/NEW.density);
        ELSIF NEW.level IS NOT NULL THEN 
            RAISE NOTICE 'update_hold_compartment_parameters INSERT NEW.mass';  
            hold_compartment_curve_result = get_hold_compartment_curve_level(NEW.ship_id, NEW.id, NEW.level);
        ELSE 
            RAISE NOTICE 'update_hold_compartment_parameters INSERT no data';  
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, 0);
        END IF;
    ELSIF TG_OP = 'UPDATE' THEN
        RAISE NOTICE 'update_hold_compartment_parameters UPDATE begin';
        if (NEW.volume IS NOT NULL AND OLD.volume IS NULL) OR NEW.volume != OLD.volume THEN
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.volume != OLD.volume';
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSIF (NEW.mass IS NOT NULL AND OLD.mass IS NULL) OR NEW.mass != OLD.mass THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.mass != OLD.mass';
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.mass/NEW.density);
        ELSIF (NEW.level IS NOT NULL AND OLD.level IS NULL) OR NEW.level != OLD.level THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.level != OLD.level';
            hold_compartment_curve_result = get_hold_compartment_curve_level(NEW.ship_id, NEW.id, NEW.level);
        ELSIF (NEW.density IS NOT NULL AND OLD.density IS NULL) OR NEW.density != OLD.density THEN 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE NEW.density != OLD.density';
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        ELSE 
            RAISE NOTICE 'update_hold_compartment_parameters UPDATE no new data!';
            hold_compartment_curve_result = get_hold_compartment_curve_volume(NEW.ship_id, NEW.id, NEW.volume);
        END IF;
    ELSE 
        RAISE NOTICE 'update_hold_compartment_parameters ERROR: no TG_OP';
        RETURN NEW;
    END IF;

    NEW.level = hold_compartment_curve_result.level;
    NEW.volume = hold_compartment_curve_result.volume;
    if NEW.volume_max IS NOT NULL THEN 
        NEW.stowage_factor = NEW.volume*100/NEW.volume_max;
    ELSE
        NEW.stowage_factor = NULL;
    END IF;
    NEW.mass = NEW.volume*NEW.density;
    NEW.mass_shift_x = hold_compartment_curve_result.buoyancy_x;
    NEW.mass_shift_y = hold_compartment_curve_result.buoyancy_y;
    NEW.mass_shift_z = hold_compartment_curve_result.buoyancy_z;

    -- Check if new category is of bulk type and then update grain_moment for hold_compartment entry;
    SELECT cc.matter_type INTO matter_type FROM cargo_category AS cc WHERE id = NEW.category_id;
    IF (matter_type = 'bulk') THEN
        NEW.grain_moment = get_hold_grain_moment(NEW.ship_id, NEW.id, NEW.level);
    END IF;

    RAISE NOTICE 'update_hold_compartment_parameters OK, NEW:[%]', NEW;


    FOR index in NEW.group_start_index..NEW.group_end_index LOOP
        RAISE NOTICE 'update_hold_compartment_parameters update part, index:[%]', index;
        
        SELECT space_id 
        INTO part_space_id
        FROM hold_part 
        WHERE ship_id=NEW.ship_id AND group_id=NEW.group_id AND group_index=index;

        if NEW.level IS NOT NULL THEN 
            compartment_curve_result = get_compartment_curve_level(NEW.ship_id, part_space_id, NEW.level);
            RAISE NOTICE 'update_hold_compartment_parameters part result mass:[%], shift x:[%] y:[%] z:[%]', compartment_curve_result.volume*NEW.density, compartment_curve_result.mass_shift_x, compartment_curve_result.mass_shift_y, compartment_curve_result.mass_shift_z; 
        ELSE 
            RAISE NOTICE 'update_hold_compartment_parameters part error: no level';  
            compartment_curve_result = get_compartment_curve_level(NEW.ship_id, part_space_id, 0);
        END IF;

        UPDATE 
            hold_part 
        SET 
            mass = compartment_curve_result.volume*NEW.density,
            volume = compartment_curve_result.volume,
            mass_shift_x = compartment_curve_result.mass_shift_x,
            mass_shift_y = compartment_curve_result.mass_shift_y,
            mass_shift_z = compartment_curve_result.mass_shift_z
        WHERE 
            ship_id = NEW.ship_id AND space_id = part_space_id;

        RAISE NOTICE 'update_hold_compartment_parameters part cargo type:[%]', matter_type; 
        -- Check if new category is of bulk type and then update grain_moment for compartment entry;
        IF (matter_type = 'bulk') THEN
            RAISE NOTICE 'update_hold_compartment_parameters part bulk'; 
            UPDATE 
                hold_part 
            SET 
                grain_moment = get_grain_moment(NEW.ship_id, part_space_id, NEW.level)
            WHERE 
                ship_id = NEW.ship_id AND space_id = part_space_id;
        END IF;
    END LOOP;

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
        res
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_volume = volume;

    -- если нашли точное значение возвращаем его
    if res IS NULL THEN -- если не нашли ищем два ближайших и интерполируем
        SELECT 
            *
        INTO 
            r1
        FROM hold_compartment_curve t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_volume < volume
        ORDER BY ABS(src_volume - t.volume) ASC LIMIT 1;

        SELECT 
            *
        INTO 
            r2
        FROM hold_compartment_curve t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_volume > volume
        ORDER BY ABS(src_volume - t.volume) ASC LIMIT 1;

        RAISE NOTICE 'get_hold_compartment_curve_volume r1 volume:[%] level:[%]  r2 volume:[%] level:[%] ', r1.volume, r1.level, r2.volume, r2.level;

        IF r2 IS NULL THEN
            res = r1;
        ELSIF r1 IS NULL THEN
            res = r2;
        ELSE
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
        END IF;
    END IF;

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
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level = level;

    -- если нашли точное значение возвращаем его
    if r1 IS NOT NULL THEN 
        res_moment = r1.moment;
    ELSE-- если не нашли ищем два ближайших и интерполируем       
        SELECT 
            *
        INTO 
            r1
        FROM hold_grain_moment t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level < level
        ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

        SELECT 
            *
        INTO 
            r2
        FROM hold_grain_moment t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level > level
        ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

        RAISE NOTICE 'get_hold_grain_moment r1 level:[%] moment:[%]  r2 level:[%] moment:[%] ', r1.level, r1.moment, r2.level, r2.moment;

        IF r2 IS NULL THEN
            res_moment = r1.moment;
        ELSIF r1 IS NULL THEN
            res_moment = r2.moment;
        ELSE
            IF r1.level = r2.level THEN
                coeff1 = 0;
                coeff2 = 1;
            ELSE 
                delta = r1.level - r2.level;
                coeff1 = (r1.level - src_level) / delta;
                coeff2 = (src_level - r2.level) / delta;
            END IF;
        END IF;

        res_moment = r2.moment*coeff1 + r1.moment*coeff2;
    END IF;
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
        res
    FROM hold_compartment_curve t
    WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level = level;

    -- если нашли точное значение возвращаем его
    if res IS NULL THEN -- если не нашли ищем два ближайших и интерполируем
        SELECT 
            *
        INTO 
            r1
        FROM hold_compartment_curve t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level < level
        ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

        SELECT 
            *
        INTO 
            r2
        FROM hold_compartment_curve t
        WHERE ship_id = src_ship_id AND hold_compartment_id = src_id AND src_level > level
        ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

        RAISE NOTICE 'get_hold_compartment_curve_level res r1 volume:[%] level:[%]  r2 volume:[%] level:[%] ', r1.volume, r1.level, r2.volume, r2.level;

        IF r2 IS NULL THEN
            res = r1;
        ELSIF r1 IS NULL THEN
            res = r2;
        ELSE
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
        END IF;
    END IF;
    RAISE NOTICE 'get_hold_compartment_curve_level res level:[%]  volume:[%] ', res.level, res.volume;

    RETURN NEXT res;
END;
$get_hold_compartment_curve_level$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_hold_compartment_parameters
    BEFORE INSERT OR UPDATE ON hold_compartment
    FOR EACH ROW 
    EXECUTE FUNCTION update_hold_compartment_parameters();



