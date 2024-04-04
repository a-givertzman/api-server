-- Задание значения плотности

CREATE OR REPLACE FUNCTION check_water_density () RETURNS TRIGGER 
AS $check_water_density$
DECLARE 
    changed_ship_id int;
BEGIN 
-- Ищем судно для котороно не задана плотность воды
    SELECT 
        ship_id
    INTO 
        changed_ship_id
    FROM
        ship
    WHERE NOT ship_id IN
        (
            SELECT
                ship_id
            FROM
                ship
            WHERE
                key = 'water_density'
        );

    IF ( changed_ship_id IS NULL ) 
    THEN
        RAISE NOTICE 'check_water_density no ship withoiut water_density';
        RETURN NULL;
    END IF;
 
    RAISE NOTICE 'check_water_density no water_density for ship:[%]', changed_ship_id;

    INSERT INTO ship
        (ship_id, key, value, value_type, name, unit)
    VALUES
        (changed_ship_id, 'water_density', '1.025', 'real', 'Water Density', 'g/ml'); 

    RETURN NULL;
END;
$check_water_density$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_ship
    AFTER INSERT OR UPDATE ON ship
    EXECUTE FUNCTION check_water_density();

CREATE OR REPLACE TRIGGER check_delete_ship
    AFTER DELETE ON ship
    EXECUTE FUNCTION check_water_density();