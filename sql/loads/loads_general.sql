-- Сводки по массам на судне
DROP VIEW IF EXISTS loads_general;

CREATE VIEW loads_general AS SELECT
    cargo.ship_id,
    COALESCE(cargo.mass, 0.0) AS cargo,
    COALESCE(ballast.mass, 0.0) AS ballast,
    COALESCE(store.mass, 0.0) AS store,
    COALESCE(lightship.mass, 0.0) AS lightship,
    -- TODO: replace with actual value
    0.0 AS icing,
    -- TODO: replace with actual value
    0.0 AS wetting,
    COALESCE(cargo.mass, 0.0) + COALESCE(ballast.mass, 0.0) + COALESCE(store.mass, 0.0) + COALESCE(lightship.mass, 0.0) AS displacement,
    COALESCE(cargo.mass, 0.0) + COALESCE(ballast.mass, 0.0) + COALESCE(store.mass, 0.0) AS deadweight
FROM (
    SELECT ship_id, SUM(mass) AS mass FROM (
        SELECT ship_id, mass FROM load_space WHERE loading_type='cargo' UNION ALL 
        SELECT ship_id, mass FROM cargo WHERE loading_type='cargo'
    ) 
    GROUP BY ship_id
) AS cargo
FULL OUTER JOIN (
    SELECT ship_id, SUM(mass) AS mass FROM (
        SELECT ship_id, mass FROM load_space WHERE loading_type='ballast' UNION ALL 
        SELECT ship_id, mass FROM cargo WHERE loading_type='ballast'
    )
    GROUP BY ship_id
) AS ballast ON cargo.ship_id = ballast.ship_id
FULL OUTER JOIN (
    SELECT ship_id, SUM(mass) AS mass FROM (
        SELECT ship_id, mass FROM load_space WHERE loading_type='store' UNION ALL 
        SELECT ship_id, mass FROM cargo WHERE loading_type='store'
    )
    GROUP BY ship_id
) AS store ON ballast.ship_id = store.ship_id
FULL OUTER JOIN (
    SELECT ship_id, SUM(mass) AS mass FROM (
        SELECT ship_id, mass FROM load_space WHERE loading_type='lightship' UNION ALL 
        SELECT ship_id, mass FROM cargo WHERE loading_type='lightship'
    )
    GROUP BY ship_id
) AS lightship ON store.ship_id = lightship.ship_id;
