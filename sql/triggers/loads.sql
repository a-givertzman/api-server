CREATE OR REPLACE TRIGGER check_loads
    AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON load_constant
    FOR EACH STATEMENT
    WHEN (OLD.value IS DISTINCT FROM NEW.value)
    EXECUTE FUNCTION calculate_mass_and_volume(NEW.ship_id);

CREATE OR REPLACE TRIGGER check_loads
    AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON load_space
    FOR EACH STATEMENT
    WHEN (OLD.value IS DISTINCT FROM NEW.value)
    EXECUTE FUNCTION calculate_mass_and_volume(NEW.ship_id);

CREATE FUNCTION calculate_mass_and_volume(src_ship_id integer) RETURNS void AS $$
    DECLARE 
        mass_space float := 0; 
        mass_constant float; 
        mass float;
        density float;
        volume float;
    BEGIN
    mass_space := SELECT SUM(value::DECIMAL) FROM (SELECT value FROM load_space WHERE ship_id = src_ship_id AND key = 'mass') AS value;
    mass_constant := SELECT SUM(value) FROM (SELECT value FROM load_constant WHERE ship_id = src_ship_id) AS value;
    mass := SUM(mass_space + mass_constant;
    density := value::DECIMAL FROM (SELECT value FROM ship WHERE key='water_density');
    volume := mass/density; 

    UPDATE ship 
    SET 
        value = mass
    WHERE 
        ship_id = src_ship_id AND key = 'mass';

    UPDATE ship 
    SET 
        value = volume
    WHERE 
        ship_id = src_ship_id AND key = 'volume';

$$ LANGUAGE plpgsql;
