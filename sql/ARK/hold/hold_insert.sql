--
INSERT INTO hold_group
    (id, name)
VALUES
    (1, 'Трюм');
--
INSERT INTO hold_part
    (id, group_id, group_index, bound_x1, bound_x2, volume_max)
VALUES
    (1, 1, 1,   12.956,     37.656,     1848.75),
    (2, 1, 2,   -27.344,    12.956,     3074.62),
    (3, 1, 3,   -44.194,    -27.344,     1292.0);
--
INSERT INTO bulkhead_place
    (id, name, left_hold_part_id, right_hold_part_id, bound_x1, bound_x2, mass_shif_x, mass_shif_y, mass_shif_z)
VALUES
    (1, 'Зерновая переборка 113 шп.', 2, 1, 12.87, 12.87, 12.87, 0, 4.53),
    (2, 'Зерновая переборка 51 шп.', 3, 2, -27.43, -27.43, -27.43, 0, 4.53),
    (3, 'Зерновая переборка 28 шп.', NULL, NULL, -42.57, -42.57, -42.57, 0, 4.53),
    (4, 'Зерновая переборка 27 шп.', NULL, NULL, -42.96, -42.96, -42.96, 0, 4.53);
--
INSERT INTO bulkhead
    (id, name, mass)
VALUES
    (1, 'Зерновая переборка 1', 12.0),
    (2, 'Зерновая переборка 2', 12.0);