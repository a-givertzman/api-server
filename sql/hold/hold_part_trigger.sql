-- Заполнение id по коду
CREATE OR REPLACE FUNCTION update_hold_part_place_id () 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN 
    RAISE NOTICE 'update_hold_part_place_id begin';

    IF NEW.code IS NOT NULL AND NEW.space_id IS NULL THEN
        RAISE NOTICE 'update_hold_part_place_id get space_id';
        SELECT space_id
        INTO NEW.space_id
        FROM hold_part_id
        WHERE code = NEW.code AND ship_id = NEW.ship_id;
    END IF;

    IF NEW.left_bulkhead_code IS NOT NULL AND NEW.left_bulkhead_place_id IS NULL THEN
        RAISE NOTICE 'update_hold_part_place_id get left_bulkhead_place_id';
        SELECT space_id
        INTO NEW.left_bulkhead_place_id
        FROM hold_part_id 
        WHERE code = NEW.left_bulkhead_code AND ship_id = NEW.ship_id;
    END IF;

    IF NEW.right_bulkhead_code IS NOT NULL AND NEW.right_bulkhead_place_id IS NULL THEN
        RAISE NOTICE 'update_hold_part_place_id get right_bulkhead_place_id';
        SELECT space_id
        INTO NEW.right_bulkhead_place_id
        FROM hold_part_id
        WHERE code = NEW.right_bulkhead_code AND ship_id = NEW.ship_id;
    END IF;

    IF NEW.group_space_id IS NOT NULL AND NEW.group_id IS NULL THEN
        RAISE NOTICE 'update_hold_part_place_id get group_id';
        SELECT id
        INTO NEW.group_id
        FROM hold_group
        WHERE space_id = NEW.group_space_id AND ship_id = NEW.ship_id;
    END IF;

    RAISE NOTICE 'update_hold_part_place_id OK';

    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER check_insert_update_hold_part
    BEFORE INSERT OR UPDATE
    ON hold_part
    FOR EACH ROW
    EXECUTE FUNCTION update_hold_part_place_id();

-- Заполнение code по space_id если его нет
CREATE OR REPLACE FUNCTION update_hold_part_id_code () 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
BEGIN 
    RAISE NOTICE 'update_hold_part_id_code begin';

    IF NEW.code IS NULL AND NEW.space_id IS NOT NULL THEN
        RAISE NOTICE 'update_hold_part_id_code get code';
        NEW.code = NEW.space_id;
    END IF;

    RAISE NOTICE 'update_hold_part_id_code OK';

    RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER check_insert_update_hold_part_id_code
    BEFORE INSERT OR UPDATE
    ON hold_part_id
    FOR EACH ROW
    EXECUTE FUNCTION update_hold_part_id_code();
