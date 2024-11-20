-- View to get container as cargo
DROP VIEW IF EXISTS container_cargo CASCADE;

CREATE VIEW
    container_cargo AS
SELECT
    cs.id AS "id", -- ID of the container cargo
    c.gross_mass AS "mass", -- Mass of the cargo, measured in tons
    c.ship_id AS "ship_id", -- ID of the ship
    c.project_id AS "project_id", -- ID of the project
    c.category_id AS "category_id", -- ID of the cargo_category entry, default value is 10 - 'cargo'
    cs.bound_x1 AS "bound_x1", -- Leftmost coordinate of the cargo along the longitudinal axis, measured in meters from midship
    cs.bound_x2 AS "bound_x2", -- Rightmost coordinate of the cargo along the longitudinal axis, measured in meters from midship
    cs.bound_y1 AS "bound_y1", -- Leftmost coordinate of the cargo along the transversal axis, measured in meters
    cs.bound_y2 AS "bound_y2", -- Rightmost coordinate of the cargo along the transversal axis, measured in meters
    cs.bound_z1 AS "bound_z1", -- Leftmost coordinate of the cargo along the vertical axis, measured in meters
    cs.bound_z2 AS "bound_z2", -- Rightmost coordinate of the cargo along the vertical axis, measured in meters
    -- TODO: move this logic into the container table, without calculations 
    (cs.bound_x1 + (cs.bound_x2 - cs.bound_x1) / 2) AS "mass_shift_x", -- Cargo center of gravity along the longitudinal axis, measured in meters from midship
    (cs.bound_y1 + (cs.bound_y2 - cs.bound_y1) / 2) AS "mass_shift_y", -- Cargo center of gravity along the transversal axis, measured in meters
    (cs.bound_z1 + (cs.bound_z2 - cs.bound_z1) / 2) AS "mass_shift_z", -- Cargo center of gravity along the vertical axis, measured in meters
    cs.tier_number >= 80 AS "is_on_deck" -- Indicator of whether the cargo is on deck, true - yes, false - no
FROM
    container AS c
    JOIN container_slot AS cs ON c.id = cs.container_id
ORDER BY
    cs.id;