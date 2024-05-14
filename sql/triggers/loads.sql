-- Заполнение данных по грузам в трюмах и цистернах 

CREATE OR REPLACE FUNCTION update_load_space () RETURNS TRIGGER 
AS $update_volume$
DECLARE 
    new_mass FLOAT8;
    new_volume FLOAT8;
    new_level FLOAT8;
    new_mass_shift_x FLOAT8;
    new_mass_shift_y FLOAT8;
    new_mass_shift_z FLOAT8;
    new_m_f_s_y FLOAT8;
    new_m_f_s_x FLOAT8;
BEGIN 

-- Ищем что изменилось и пересчитываем остальное
    IF (TG_OP = 'INSERT') THEN
        if NEW.volume > 0 THEN 
            new_volume = NEW.volume;        
            new_mass = volume*NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(volume - t.volume) ASC LIMIT 1;
            new_level = t.level;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        ELSE if NEW.mass > 0 THEN 
            new_mass = NEW.mass;        
            new_volume = mass/NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(volume - t.volume) ASC LIMIT 1;
            new_level = t.level;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        ELSE if NEW.level > 0 THEN 
            new_level = NEW.level;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(level - t.level) ASC LIMIT 1;
            new_volume = t.volume;
            new_mass = volume*NEW.density;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        END IF;
    ELSIF (TG_OP = 'UPDATE') THEN
        if NEW.volume != OLD.volume THEN 
            new_volume = NEW.volume;
            new_mass = volume*NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(volume - t.volume) ASC LIMIT 1;
            new_level = t.level;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        ELSE if NEW.mass != OLD.mass THEN 
            new_mass = NEW.mass;
            new_volume = mass/NEW.density;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(volume - t.volume) ASC LIMIT 1;
            new_level = t.level;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        ELSE if NEW.level != OLD.level THEN 
            new_level = NEW.level;
            SELECT 
                t.level,
                t.volume,
                t.buoyancy_x,
                t.buoyancy_y,
                t.buoyancy_z,
                t.trans_inertia_moment_self,
                t.long_inertia_moment_self,
            FROM tank_curve t
            WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id
            ORDER BY ABS(level - t.level) ASC LIMIT 1;
            new_volume = t.volume;
            new_mass = volume*NEW.density;
            new_mass_shift_x = t.buoyancy_x;
            new_mass_shift_y = t.buoyancy_y;
            new_mass_shift_z = t.buoyancy_z;
            new_m_f_s_y = t.trans_inertia_moment_self;
            new_m_f_s_x = t.long_inertia_moment_self;
        END IF;
    ELSE 
-- RAISE NOTICE 'no TG_OP';
        RETURN NULL;
    END IF;

    RAISE NOTICE 'update_load_space ship_id:[%] mass:[%] volume:[%] level:[%] mass_shift_x:[%] mass_shift_y:[%] mass_shift_z:[%] m_f_s_y:[%] m_f_s_x:[%]', 
    ship_id, mass, volume, level, mass_shift_x, mass_shift_y, mass_shift_z, m_f_s_y, m_f_s_x;

    ALTER TABLE load_space DISABLE TRIGGER check_update_load_space;

    UPDATE
        tank_curve
    SET 
        mass = new_mass, 
        volume = new_volume, 
        level = new_level,
        mass_shift_x = new_mass_shift_x,
        mass_shift_y = new_mass_shift_y,
        mass_shift_z = new_mass_shift_z,
        m_f_s_y = new_m_f_s_y,
        m_f_s_x = new_m_f_s_x,
    WHERE ship_id = NEW.ship_id AND space_id = NEW.space_id

    ALTER TABLE load_space ENABLE TRIGGER check_update_load_space;

    RETURN NULL;
END;
$update_load_space$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_load_space
    AFTER INSERT OR UPDATE ON load_space
    EXECUTE FUNCTION update_load_space();
