-- Выставление флагов активности для отсеков трюма
-- в зависимости от активности зерновых переборок

CREATE OR REPLACE FUNCTION update_compartment_flag () RETURNS TRIGGER 
AS $update_compartment_flag$
DECLARE 
    result compartment%rowtype; 
    curs1 refcursor;
BEGIN 

    RAISE NOTICE 'update_compartment_flag begin begin OLD:[%] NEW:[%]', OLD, NEW;

    OPEN 
        curs1 
    FOR SELECT 
        compartment_space_id, separator1_space_id, separator2_space_id, separator_action 
    FROM 
        compartment_separators c 
    WHERE 
        c.ship_id = NEW.ship_id AND c.compartment_space_id = NEW.space_id;

  --  FOR compartment_space_id, separator1_space_id, separator2_space_id, separator_action IN curs1 LOOP
  --      compartment_space_id, separator1_space_id, separator2_space_id, separator_action

   -- END LOOP;

    RAISE NOTICE 'update_compartment_flag OK, NEW:[%]', NEW;

    RETURN NEW;
END;
$update_compartment_flag$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER check_update_compartment_flag
    AFTER INSERT OR UPDATE ON compartment
    FOR EACH ROW 
    WHEN (NEW.active != OLD.active)
    EXECUTE FUNCTION update_compartment_flag();