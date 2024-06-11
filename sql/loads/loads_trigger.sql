-- Заполнение данных по грузам в трюмах и цистернах 

CREATE OR REPLACE FUNCTION update_compartment () RETURNS TRIGGER 
AS $update_compartment$
DECLARE 
    result compartment%rowtype; 
BEGIN 

--    RAISE NOTICE 'update_compartment begin begin OLD:[%] NEW:[%]', OLD, NEW;

    if NEW.density IS NULL THEN 
  --      RAISE NOTICE 'SKIP update_compartment, NEW.density IS NULL';
        RETURN NEW;
    END IF;

-- Ищем что изменилось и пересчитываем остальное
    IF (TG_OP = 'INSERT') THEN
 --       RAISE NOTICE 'update_compartment INSERT begin';

        if NEW.volume IS NOT NULL THEN 
 --           RAISE NOTICE 'update_compartment INSERT NEW.volume';     
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSIF NEW.mass IS NOT NULL THEN  
  --          RAISE NOTICE 'update_compartment INSERT NEW.mass';   
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.mass/NEW.density);
        ELSIF NEW.level IS NOT NULL THEN 
   --         RAISE NOTICE 'update_compartment INSERT NEW.mass';  
            result = get_compartment_curve_level(NEW.ship_id, NEW.space_id, NEW.level);
        ELSE 
   --         RAISE NOTICE 'update_compartment INSERT no data';  
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, 0);
        END IF;
    ELSIF TG_OP = 'UPDATE' THEN
   --     RAISE NOTICE 'update_compartment UPDATE begin';
        if (NEW.volume IS NOT NULL AND OLD.volume IS NULL) OR NEW.volume != OLD.volume THEN
   --         RAISE NOTICE 'update_compartment UPDATE NEW.volume != OLD.volume';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSIF (NEW.mass IS NOT NULL AND OLD.mass IS NULL) OR NEW.mass != OLD.mass THEN 
  --          RAISE NOTICE 'update_compartment UPDATE NEW.mass != OLD.mass';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.mass/NEW.density);
        ELSIF (NEW.level IS NOT NULL AND OLD.level IS NULL) OR NEW.level != OLD.level THEN 
   --         RAISE NOTICE 'update_compartment UPDATE NEW.level != OLD.level';
            result = get_compartment_curve_level(NEW.ship_id, NEW.space_id, NEW.level);
        ELSIF (NEW.density IS NOT NULL AND OLD.density IS NULL) OR NEW.density != OLD.density THEN 
   --         RAISE NOTICE 'update_compartment UPDATE NEW.density != OLD.density';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, NEW.volume);
        ELSE 
  --          RAISE NOTICE 'update_compartment UPDATE no new data!';
            result = get_compartment_curve_volume(NEW.ship_id, NEW.space_id, 0);
        END IF;
    ELSE 
        RAISE NOTICE 'update_compartment ERROR: no TG_OP';
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

    RAISE NOTICE 'update_compartment OK, NEW:[%]', NEW;

    RETURN NEW;
END;
$update_compartment$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS get_compartment_curve_volume CASCADE;
CREATE OR REPLACE FUNCTION get_compartment_curve_volume(src_ship_id INT, src_space_id INT, src_volume FLOAT8) 
RETURNS SETOF compartment 
AS $get_compartment_curve_volume$
DECLARE 
    r1 compartment_curve%rowtype;
    r2 compartment_curve%rowtype;
    res compartment%rowtype;
    delta FLOAT8;
    coeff1 FLOAT8;
    coeff2 FLOAT8;
BEGIN 
--    RAISE NOTICE 'get_compartment_curve_volume ship_id:[%] space_id:[%] volume:[%]', 
 --       src_ship_id, src_space_id, src_volume;

    SELECT 
        *
    INTO 
        r1
    FROM compartment_curve t
    WHERE ship_id = src_ship_id AND space_id = src_space_id
    ORDER BY ABS(src_volume - t.volume) ASC LIMIT 1;

    SELECT 
        *
    INTO 
        r2
    FROM compartment_curve t
    WHERE ship_id = src_ship_id AND space_id = src_space_id
    ORDER BY ABS(src_volume - t.volume) ASC LIMIT 2 OFFSET 1;

 --   RAISE NOTICE 'get_compartment_curve_volume res r1 volume:[%]  r2 volume:[%]', r1.volume, r2.volume;

    IF r1.volume < src_volume THEN
        src_volume = r1.volume;
    END IF;

    IF r2.volume > src_volume THEN
        src_volume = r2.volume;
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
    res.mass_shift_x = r2.buoyancy_x*coeff1 + r1.buoyancy_x*coeff2;
    res.mass_shift_y = r2.buoyancy_y*coeff1 + r1.buoyancy_y*coeff2;
    res.mass_shift_z = r2.buoyancy_z*coeff1 + r1.buoyancy_z*coeff2;
    res.m_f_s_y = r2.trans_inertia_moment_self*coeff1 + r1.trans_inertia_moment_self*coeff2;
    res.m_f_s_x = r2.long_inertia_moment_self*coeff1 + r1.long_inertia_moment_self*coeff2;

 --   RAISE NOTICE 'get_compartment_curve_volume OK, res level:[%]  volume:[%]', res.level, res.volume;

    RETURN NEXT res;
END;
$get_compartment_curve_volume$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS get_compartment_curve_level CASCADE;
CREATE OR REPLACE FUNCTION get_compartment_curve_level(src_ship_id INT, src_space_id INT, src_level FLOAT8) 
RETURNS SETOF compartment 
AS $get_compartment_curve_level$
DECLARE 
    r1 compartment_curve%rowtype;
    r2 compartment_curve%rowtype;
    res compartment%rowtype;
    delta FLOAT8;
    coeff1 FLOAT8;
    coeff2 FLOAT8;
BEGIN 
--    RAISE NOTICE 'get_compartment_curve_level ship_id:[%] space_id:[%] level:[%]', 
 --       src_ship_id, src_space_id, src_level;

    SELECT 
        *
    INTO 
        r1
    FROM compartment_curve t
    WHERE ship_id = src_ship_id AND space_id = src_space_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 1;

    SELECT 
        *
    INTO 
        r2
    FROM compartment_curve t
    WHERE ship_id = src_ship_id AND space_id = src_space_id
    ORDER BY ABS(src_level - t.level) ASC LIMIT 2 OFFSET 1;

--    RAISE NOTICE 'get_compartment_curve_level res r1 level:[%]  r2 level:[%]', r1.level, r2.level;

    IF r1.volume = r2.volume THEN
        coeff1 = 0;
        coeff2 = 1;
    ELSE 
        delta = r1.volume - r2.volume;
        coeff1 = (r1.volume - src_volume) / delta;
        coeff2 = (src_volume - r2.volume) / delta;
    END IF;

    res.level = r2.level*coeff1 + r1.level*coeff2;  
    res.volume = r2.volume*coeff1 + r1.volume*coeff2;
    res.mass_shift_x = r2.buoyancy_x*coeff1 + r1.buoyancy_x*coeff2;
    res.mass_shift_y = r2.buoyancy_y*coeff1 + r1.buoyancy_y*coeff2;
    res.mass_shift_z = r2.buoyancy_z*coeff1 + r1.buoyancy_z*coeff2;
    res.m_f_s_y = r2.trans_inertia_moment_self*coeff1 + r1.trans_inertia_moment_self*coeff2;
    res.m_f_s_x = r2.long_inertia_moment_self*coeff1 + r1.long_inertia_moment_self*coeff2;
    
 --   RAISE NOTICE 'get_compartment_curve_level res level:[%]  volume:[%] ', res.level, res.volume;

    RETURN NEXT res;
END;
$get_compartment_curve_level$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_compartment
    BEFORE INSERT OR UPDATE ON compartment
    FOR EACH ROW 
    EXECUTE FUNCTION update_compartment();
