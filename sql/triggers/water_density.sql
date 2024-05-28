-- Задание значения плотности

CREATE OR REPLACE FUNCTION check_water_density () RETURNS TRIGGER 
AS $check_water_density$
DECLARE 
    changed_ship_id int;
    ROWCOUNT int; 
BEGIN 
-- Ищем судно для котороно не задана плотность воды
    SELECT 
        COUNT(*)
    INTO 
        ROWCOUNT
    FROM
        ship_parameters
    WHERE NOT ship_id IN
        (
            SELECT
                ship_id
            FROM
                ship_parameters
            WHERE
                key = 'Water Density'
        );

    IF ROWCOUNT = 0
    THEN
        RAISE NOTICE 'check_water_density no ship withoiut water_density';
        RETURN NULL;
    END IF;
 
    SELECT 
        ship_id
    INTO 
        changed_ship_id
    FROM
        ship_parameters
    WHERE NOT ship_id IN
        (
            SELECT
                ship_id
            FROM
                ship_parameters
            WHERE
                key = 'Water Density'
        );

    RAISE NOTICE 'check_water_density no water_density for ship:[%]', changed_ship_id;

    INSERT INTO ship_parameters
        (ship_id, key, value, value_type, unit)
    VALUES
        (changed_ship_id, 'Water Density', '1.025', 'real', 'g/ml'); 

    RETURN NULL;
END;
$check_water_density$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_ship
    AFTER INSERT OR UPDATE ON ship_parameters
    EXECUTE FUNCTION check_water_density();

CREATE OR REPLACE TRIGGER check_delete_ship
    AFTER DELETE ON ship
    EXECUTE FUNCTION check_water_density();