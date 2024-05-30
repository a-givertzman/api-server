TRUNCATE TABLE strength_force_limit;

INSERT INTO strength_force_limit
    (ship_id, frame_real_index, value, limit_type, limit_area, force_type)
VALUES
    (1, 20, 200000.0, 'high', 'sea', 'shear_force'),
    (1, 20, -200000.0, 'low', 'sea', 'shear_force'),
    (1, 90, 400000.0, 'high', 'sea', 'shear_force'),
    (1, 90, -400000.0, 'low', 'sea', 'shear_force'),
    (1, 160, 200000.0, 'high', 'sea', 'shear_force'),
    (1, 160, -200000.0, 'low', 'sea', 'shear_force'),
    (1, 25, 800000.0, 'high', 'sea', 'bending_moment'),
    (1, 25, -800000.0, 'low', 'sea', 'bending_moment'),
    (1, 90, 1250000.0, 'high', 'sea', 'bending_moment'),
    (1, 90, -1250000.0, 'low', 'sea', 'bending_moment'),
    (1, 155, 800000.0, 'high', 'sea', 'bending_moment'),
    (1, 155, -800000.0, 'low', 'sea', 'bending_moment');