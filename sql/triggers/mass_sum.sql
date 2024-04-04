-- Расчет общей массы судна.
-- Масса получается как сумма постоянной массы по шпациям +
-- масса всех грузов. 

CREATE OR REPLACE FUNCTION calculate_mass(changed_ship_id int) RETURNS INT 
AS $calculate_mass$
DECLARE 
    loads_mass real;
    const_mass real;
    summ_mass real;
BEGIN 
    SELECT 
        SUM(value::DECIMAL)
    INTO 
        loads_mass
    FROM
        (
            SELECT
                value
            FROM
                load_space l
            WHERE
                l.ship_id = changed_ship_id
                AND key = 'mass'
        );

    IF ( loads_mass IS NOT NULL ) 
    THEN
        RAISE NOTICE 'calculate_mass loads_mass for ship:[%] = [%]', changed_ship_id, loads_mass;
    ELSE
        RAISE NOTICE 'calculate_mass no loads_mass for ship:[%]',changed_ship_id;
        loads_mass = 0;
    END IF;

    SELECT 
        SUM(value)
    INTO 
        const_mass
    FROM
        (
            SELECT
                value
            FROM
                load_constant l
            WHERE
                l.ship_id = changed_ship_id
        );

    IF ( const_mass IS NOT NULL ) 
    THEN
        RAISE NOTICE 'calculate_mass const_mass for ship:[%] = [%]', changed_ship_id, const_mass;
    ELSE
        RAISE NOTICE 'calculate_mass no const_mass for ship:[%]', changed_ship_id;
        const_mass = 0;
    END IF;

    summ_mass = loads_mass + const_mass;

    RAISE NOTICE 'calculate_mass ship_id:[%] summ_mass:[%]', changed_ship_id, summ_mass;

    RETURN summ_mass;
END;
$calculate_mass$ LANGUAGE plpgsql;


