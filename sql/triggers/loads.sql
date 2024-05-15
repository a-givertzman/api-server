-- Заполнение данных по грузам в трюмах и цистернах 

CREATE OR REPLACE FUNCTION update_load_space () RETURNS TRIGGER 
AS $update_load_space$
DECLARE 
    new_volume real;
    new_density real;
    new_level real;
BEGIN 

    RAISE NOTICE 'update_load_space begin begin OLD:[%] NEW:[%]', OLD, NEW;

-- Ищем что изменилось и пересчитываем остальное
    IF (TG_OP = 'INSERT') THEN
        RAISE NOTICE 'update_load_space INSERT begin';

        if NEW.density IS NULL THEN 
            RAISE NOTICE 'update_load_space INSERT NEW.density IS NULL';
            RETURN NULL;
        END IF;

        new_density = NEW.density;

        if NEW.volume IS NOT NULL THEN 
            RAISE NOTICE 'NEW.volume';
            new_volume = NEW.volume;        
            NEW.mass = volume*new_density;

            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(new_volume - t.volume) ASC LIMIT 1;

        ELSIF NEW.mass IS NOT NULL THEN  
            new_volume = NEW.mass/new_density;

            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(new_volume - t.volume) ASC LIMIT 1;

        ELSIF NEW.level IS NOT NULL THEN 
            new_level = NEW.level;

            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(new_level - t.level) ASC LIMIT 1;

            NEW.mass = NEW.volume*OLD.density;
        ELSE 
            NEW.level = 0;
            new_volume = 0;
            NEW.mass = 0;

            SELECT 
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z
            INTO 
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(new_volume - t.volume) ASC LIMIT 1;
        END IF;
    ELSIF TG_OP = 'UPDATE' THEN
        if NEW.density IS NULL THEN 
            --RAISE NOTICE 'update_load_space UPDATE NEW.density IS NULL';
            RETURN NULL;
        END IF;

        if NEW.volume != OLD.volume THEN 
            RAISE NOTICE 'update_load_space UPDATE NEW.volume != OLD.volume';
            NEW.mass = NEW.volume*NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = OLD.ship_id AND space_id = OLD.space_id
            ORDER BY ABS(NEW.volume - t.volume) ASC LIMIT 1;
        ELSIF NEW.mass != OLD.mass THEN 
            RAISE NOTICE 'update_load_space UPDATE NEW.mass != OLD.mass';
            NEW.volume = NEW.mass/NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = OLD.ship_id AND space_id = OLD.space_id
            ORDER BY ABS(NEW.volume - t.volume) ASC LIMIT 1;
        ELSIF NEW.level != OLD.level THEN 
            RAISE NOTICE 'update_load_space UPDATE NEW.level != OLD.level';
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = OLD.ship_id AND space_id = OLD.space_id
            ORDER BY ABS(NEW.level - t.level) ASC LIMIT 1;
            NEW.mass = NEW.volume*NEW.density;
        ELSIF NEW.density != OLD.density THEN 
            RAISE NOTICE 'update_load_space UPDATE NEW.density != OLD.density';
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self
            INTO 
                NEW.level,
                NEW.volume,
                NEW.mass_shift_x,
                NEW.mass_shift_y,
                NEW.mass_shift_z,
                NEW.m_f_s_y,
                NEW.m_f_s_x
            FROM tank_curve t
            WHERE ship_id = OLD.ship_id AND space_id = OLD.space_id
            ORDER BY ABS(NEW.volume - t.volume) ASC LIMIT 1;
            NEW.mass = NEW.volume*NEW.density;
        ELSE 
            RAISE NOTICE 'update_load_space UPDATE no new data!';
            RETURN NULL;
        END IF;
    ELSE 
        RAISE NOTICE 'update_load_space no TG_OP';
        RETURN NULL;
    END IF;

    RAISE NOTICE 'update_load_space end, NEW:[%] ', NEW;

    RETURN NEW;
END;
$update_load_space$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_load_space
    BEFORE INSERT OR UPDATE ON load_space
    FOR EACH ROW 
    EXECUTE FUNCTION update_load_space();
