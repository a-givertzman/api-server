--
-- Analogue of grain_moment generated for hold_compartment;
--
DROP MATERIALIZED VIEW IF EXISTS hold_grain_moment CASCADE;

CREATE MATERIALIZED VIEW IF NOT EXISTS hold_grain_moment AS
SELECT
    -- ID of hold_compartment;
    hc.id AS hold_compartment_id,
    -- ID of project;
    hc.project_id AS project_id,
    -- ID of ship;
    hc.ship_id AS ship_id,
    -- Draught level for which other parameter values stored, measured in meters;
    gm.level AS level,
    -- Moment value for corresponding level, measured in meters^4;
    SUM(gm.moment) AS moment
FROM
    hold_compartment AS hc
JOIN hold_part AS hp ON
    hp.group_index >= hc.group_start_index
    AND hp.group_index <= hc.group_end_index
    AND hc.ship_id = hp.ship_id
    AND hc.project_id IS NOT DISTINCT FROM hp.project_id
JOIN grain_moment AS gm ON
    hp.space_id = gm.space_id
    AND hp.ship_id = gm.ship_id
    AND hp.project_id IS NOT DISTINCT FROM gm.project_id
GROUP BY
    hc.id,
    gm.level
ORDER BY
    hc.id,
    gm.level ASC;

-- Function to calling refresh of MATERIALIZED VIEW for hold_grain_moment;
DROP FUNCTION IF EXISTS refresh_hold_grain_moment CASCADE;

CREATE OR REPLACE FUNCTION refresh_hold_grain_moment()
RETURNS TRIGGER AS $$
    BEGIN
    REFRESH MATERIALIZED VIEW hold_grain_moment;
    RETURN NULL;
END $$ LANGUAGE plpgsql;

--
-- Triggers that are used to refresh MATERIALIZED VIEW
-- of hold_grain_moment when related data is updated;
--

-- Update hold_grain_moment entries on hold_compartment changed;
DROP TRIGGER IF EXISTS agg_hold_grain_moment_on_hold_compartment_changed_trigger ON hold_compartment CASCADE;

CREATE TRIGGER agg_hold_grain_moment_on_hold_compartment_changed_trigger
AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON hold_compartment
FOR EACH STATEMENT
EXECUTE PROCEDURE refresh_hold_grain_moment();

-- Update hold_grain_moment entries on grain_moment changed;
DROP TRIGGER IF EXISTS agg_hold_compartment_curve_on_grain_moment_changed_trigger ON grain_moment CASCADE;

CREATE TRIGGER agg_hold_compartment_curve_on_grain_moment_changed_trigger
AFTER INSERT OR UPDATE OR DELETE OR TRUNCATE ON grain_moment
FOR EACH STATEMENT
EXECUTE PROCEDURE refresh_hold_grain_moment();