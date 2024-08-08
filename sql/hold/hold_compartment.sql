--
-- Hold compartment that is generated based on hold_part's data and positions of installed bulkheads;
--
DROP TABLE IF EXISTS hold_compartment CASCADE;

CREATE TABLE IF NOT EXISTS hold_compartment (
    id INT  GENERATED ALWAYS AS IDENTITY,
    --
    name TEXT NOT NULL,
    -- hold_group ID to which this hold_compartment belongs;
    group_id INT NOT NULL,
    -- Index of first hold_part in corresponding hold_group;
    group_start_index INT NOT NULL,
    -- Index of last hold_part in corresponding hold_group;
    group_end_index INT NOT NULL,
    -- Maximum possible volume of bulk cargo that can be loaded into this hold compartment;
    volume_max FLOAT8 NOT NULL,
    -- Mass of bulk cargo loaded into this hold_compartment, measured in tons;
    mass FLOAT8,
    -- Volume of bulk cargo loaded into this hold_compartment, measured in cubic meters;
    volume FLOAT8,
    -- Stowage factor of bulk cargo loaded into this hold_compartment;
    -- TODO: add value unit to comment;
    stowage_factor FLOAT8,
    CONSTRAINT hold_compartment_pk PRIMARY KEY (id),
    CONSTRAINT hold_compartment_group_fk FOREIGN KEY (group_id) REFERENCES hold_group (id),
    CONSTRAINT hold_compartment_group_start_fk FOREIGN KEY (group_id, group_start_index) REFERENCES hold_part (group_id, group_index),
    CONSTRAINT hold_compartment_group_end_fk FOREIGN KEY (group_id, group_end_index) REFERENCES hold_part (group_id, group_index),
    CONSTRAINT hold_compartment_group_index_check CHECK (
        group_start_index > 0
        AND group_end_index > 0
        AND group_start_index <= group_end_index
    ),
    CONSTRAINT hold_group_start_unique UNIQUE (group_id, group_start_index),
    CONSTRAINT hold_group_end_unique UNIQUE (group_id, group_end_index)
);

--
-- Functions that are used to generate hold_compartment based on hold_part data and positions of installed bulkheads;
--

-- Generates and returns name for hold_compartment in following format:
-- '${hold_group.name} ${frame index of the leftmost part of ending hold_part}-${frame index of the rightmost part of starting hold_part} шп.';
DROP FUNCTION IF EXISTS generate_hold_compartment_name;

CREATE OR REPLACE FUNCTION generate_hold_compartment_name(
    group_id_param INT, -- ID of hold_group to which all hold_part's of hold_compartment belong;
    group_start_index_param INT, -- Index in group of the rightmost hold_part of this hold_compartment;
    group_end_index_param INT -- Index in group of the leftmost hold_part of this hold_compartment;
)
RETURNS TEXT
AS $$
DECLARE 
    right_bound_x FLOAT8;
    left_bound_x FLOAT8;
BEGIN
    SELECT bound_x2 INTO right_bound_x FROM hold_part WHERE group_id = group_id_param AND group_index = group_start_index_param;
    SELECT bound_x1 INTO left_bound_x FROM hold_part WHERE group_id = group_id_param AND group_index = group_end_index_param;
    RETURN CONCAT(
        (SELECT name FROM hold_group WHERE id = group_id_param),
        ' ',
        (SELECT frame_index FROM physical_frame ORDER BY ABS(pos_x - left_bound_x) LIMIT 1), -- Frame index for most left part of compartment;
        '-',
        (SELECT frame_index FROM physical_frame ORDER BY ABS(pos_x - right_bound_x) LIMIT 1), -- Frame index for most right part of compartment;
        ' шп.'
    );
END $$ LANGUAGE plpgsql;

-- Returns record for hold_compartment based on hold_part's data and positions of installed bulkhead's;
DROP FUNCTION IF EXISTS extract_hold_compartment;

CREATE OR REPLACE FUNCTION extract_hold_compartment(
    group_id_param INT, -- ID of hold_group to which all hold_part's of this hold_compartment belong;
    group_start_index_param INT -- Index in group of the rightmost hold_part of this hold_compartment;
)
RETURNS TABLE (
    name TEXT,
    group_id INT,
    group_start_index INT,
    group_end_index INT,
    volume_max FLOAT8,
    volume FLOAT8,
    mass FLOAT8,
    stowage_factor FLOAT8
)
AS $$
BEGIN
    RETURN QUERY
        (WITH RECURSIVE
            divided_part AS (
                SELECT
                    hp.id AS id,
                    hp.volume_max AS volume_max,
                    hp.group_id AS group_id,
                    hp.group_index AS group_index,
                    hp.left_bulkhead_place_id AS left_bulkhead_place_id,
                    hp.right_bulkhead_place_id AS right_bulkhead_place_id,
                    bp.bulkhead_id AS bulkhead_id
                FROM 
                    hold_part AS hp
                LEFT JOIN
                    bulkhead_place AS bp ON
                    hp.right_bulkhead_place_id = bp.id
                WHERE 
                    hp.group_id = group_id_param
                    AND hp.group_index = group_start_index_param
                
                UNION
                
                SELECT
                    hp.id AS id,
                    (hp.volume_max + dp.volume_max) AS volume_max,
                    hp.group_id AS group_id,
                    hp.group_index AS group_index,
                    hp.left_bulkhead_place_id AS left_bulkhead_place_id,
                    hp.right_bulkhead_place_id AS right_bulkhead_place_id,
                    bp.bulkhead_id AS bulkhead_id
                FROM
                    hold_part AS hp
                JOIN
                    divided_part AS dp ON
                    hp.left_bulkhead_place_id = dp.right_bulkhead_place_id
                    AND hp.group_id = dp.group_id
                LEFT JOIN
                    bulkhead_place AS bp ON
                    hp.right_bulkhead_place_id = bp.id
                WHERE
                    dp.right_bulkhead_place_id IS DISTINCT FROM NULL -- it is not ending part of group
                    AND dp.bulkhead_id IS NOT DISTINCT FROM NULL -- it is not divided from next group part by bulkhead
            )
        SELECT
            generate_hold_compartment_name(group_id_param, group_start_index_param, dp.group_index) AS name,
            group_id_param AS group_id,
            group_start_index_param AS group_start_index,
            dp.group_index AS group_end_index,
            dp.volume_max AS volume_max,
            NULL::FLOAT8 AS volume,
            NULL::FLOAT8 AS mass,
            NULL::FLOAT8 AS stowage_factor
        FROM
            divided_part AS dp
        JOIN
            hold_group AS hg ON
            dp.group_id = hg.id
        ORDER BY dp.group_index DESC
        LIMIT 1);
END $$ LANGUAGE plpgsql;

-- Returns records for hold_compartment based on hold_part's data and positions of installed bulkhead's;
DROP FUNCTION IF EXISTS extract_hold_compartments;

CREATE OR REPLACE FUNCTION extract_hold_compartments(
    group_id_param INT -- ID of hold_group to which all hold_part's of this hold_compartment belong;
)
RETURNS TABLE (
    name TEXT,
    group_id INT,
    group_start_index INT,
    group_end_index INT,
    volume_max FLOAT8,
    volume FLOAT8,
    mass FLOAT8,
    stowage_factor FLOAT8
)
AS $$
BEGIN
    RETURN QUERY
        (WITH RECURSIVE hold_compartment AS (
            SELECT
                *
            FROM extract_hold_compartment(group_id_param, 1)

            UNION

            (
                WITH prev_end_index AS (
                    SELECT hc.group_end_index AS value FROM hold_compartment AS hc
                )
                SELECT * FROM extract_hold_compartment(group_id_param, (SELECT value + 1 FROM prev_end_index))
            )
            -- SELECT
            --     (extract_hold_compartment(1, hc.group_end_index+1)).*
            -- FROM hold_compartment AS hc
        ) SELECT * FROM hold_compartment);
END $$ LANGUAGE plpgsql;

--
-- Triggers that are used to generate hold_compartment based on hold_part data and positions of installed bulkheads;
--

--
DROP TRIGGER IF EXISTS put_hold_compartment_on_part_changed_trigger ON hold_part;
DROP FUNCTION IF EXISTS put_hold_compartment_on_part_changed;

CREATE OR REPLACE FUNCTION put_hold_compartment_on_part_changed()
RETURNS TRIGGER AS $$
DECLARE
    group_id_to_update INT; -- ID of hold_group to which all hold_part's of generated hold_compartment belong;
BEGIN
    CASE TG_OP
        WHEN 'INSERT' THEN
            SELECT NEW.group_id INTO group_id_to_update;
        WHEN 'UPDATE' THEN
            SELECT NEW.group_id INTO group_id_to_update;
        WHEN 'DELETE' THEN
            SELECT OLD.group_id INTO group_id_to_update;
    END CASE;
    --
    DELETE FROM hold_compartment WHERE group_id = group_id_to_update;
    INSERT INTO hold_compartment 
        (name, group_id, group_start_index, group_end_index, volume_max, volume, mass, stowage_factor)
    SELECT
        name, group_id, group_start_index, group_end_index, volume_max, volume, mass, stowage_factor
    FROM
        extract_hold_compartments(group_id_to_update);
    --
    RETURN NEW;
END $$ LANGUAGE plpgsql;

CREATE TRIGGER put_hold_compartment_on_part_changed_trigger
AFTER INSERT OR UPDATE OR DELETE ON hold_part
FOR EACH ROW
EXECUTE PROCEDURE put_hold_compartment_on_part_changed();

--
DROP TRIGGER IF EXISTS put_hold_compartment_on_bulkhead_changed_trigger ON hold_part;
DROP FUNCTION IF EXISTS put_hold_compartment_on_bulkhead_changed;

CREATE OR REPLACE FUNCTION put_hold_compartment_on_bulkhead_changed()
RETURNS TRIGGER AS $$
DECLARE
    group_id_to_update INT; -- ID of hold_group to which all hold_part's of generated hold_compartment belong;
BEGIN
    CASE TG_OP
        WHEN 'INSERT' THEN
            SELECT NEW.hold_group_id INTO group_id_to_update;
        WHEN 'UPDATE' THEN
            SELECT NEW.hold_group_id INTO group_id_to_update;
        WHEN 'DELETE' THEN
            SELECT OLD.hold_group_id INTO group_id_to_update;
    END CASE;
    --
    DELETE FROM hold_compartment WHERE group_id = group_id_to_update;
    INSERT INTO hold_compartment 
        (name, group_id, group_start_index, group_end_index, volume_max, volume, mass, stowage_factor)
    SELECT
        name, group_id, group_start_index, group_end_index, volume_max, volume, mass, stowage_factor
    FROM
        extract_hold_compartments(group_id_to_update);
    --
    RETURN NEW;
END $$ LANGUAGE plpgsql;

CREATE TRIGGER put_hold_compartment_on_bulkhead_changed_trigger
AFTER INSERT OR UPDATE OR DELETE ON bulkhead_place
FOR EACH ROW
EXECUTE PROCEDURE put_hold_compartment_on_bulkhead_changed();