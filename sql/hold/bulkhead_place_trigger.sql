-- Заполнение поля place_id для перегородок по коду

CREATE OR REPLACE FUNCTION update_bulkhead_place_place_id () 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN 
    RAISE NOTICE 'update_bulkhead_place_place_id begin';

    IF NEW.code IS NOT NULL AND NEW.space_id IS NULL THEN
        RAISE NOTICE 'update_bulkhead_place_place_id get space_id';
        SELECT space_id
        INTO NEW.space_id
        FROM hold_part_id
        WHERE code = NEW.code AND ship_id = NEW.ship_id;
    END IF;

    RAISE NOTICE 'update_bulkhead_place_place_id OK';

    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER check_insert_update_bulkhead_place
    BEFORE INSERT OR UPDATE
    ON bulkhead_place
    FOR EACH ROW
    EXECUTE FUNCTION update_bulkhead_place_place_id();
