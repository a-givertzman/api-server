-- Сводки по массам на судне
DROP VIEW IF EXISTS loads_general;

CREATE VIEW loads_general AS SELECT
    cargo.ship_id,
    COALESCE(cargo.mass, 0.0) AS cargo,
    COALESCE(ballast.mass, 0.0) AS ballast,
    COALESCE(store.mass, 0.0) AS store,
    COALESCE(lightship.mass, 0.0) AS lightship,
    COALESCE(icing.mass, 0.0) AS icing,
    COALESCE(wetting.mass, 0.0) AS wetting,
    COALESCE(displacement.mass, 0.0) AS displacement,
    COALESCE(deadweight.mass, 0.0) AS deadweight
FROM (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 27
) AS cargo
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 25
) AS ballast ON cargo.ship_id = ballast.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 26
) AS store ON cargo.ship_id = store.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 29
) AS lightship ON cargo.ship_id = lightship.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 2
) AS displacement ON cargo.ship_id = displacement.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 28
) AS deadweight ON cargo.ship_id = deadweight.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 30
) AS icing ON cargo.ship_id = icing.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "mass" FROM parameter_data WHERE parameter_id = 31
) AS wetting ON cargo.ship_id = wetting.ship_id;