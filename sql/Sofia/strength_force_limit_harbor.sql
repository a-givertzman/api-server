DELETE FROM strength_force_limit WHERE ship_id=2 AND limit_area='harbor';

INSERT INTO strength_force_limit
  ( ship_id, frame_x, value, limit_type, limit_area, force_type  )
VALUES
  (2, -3.6, -198400, 'low', 'harbor', 'bending_moment'),
 (2, -3.6, 198400, 'high', 'harbor', 'bending_moment'),
 (2, -3.6, -12418, 'low', 'harbor', 'shear_force'),
 (2, -3.6, 12418, 'high', 'harbor', 'shear_force'),
  (2, 18.6, -198400, 'low', 'harbor', 'bending_moment'),
 (2, 18.6, 198400, 'high', 'harbor', 'bending_moment'),
 (2, 18.6, -12418, 'low', 'harbor', 'shear_force'),
 (2, 18.6, 12418, 'high', 'harbor', 'shear_force'),
  (2, 39.32, -314170, 'low', 'harbor', 'bending_moment'),
 (2, 39.32, 314170, 'high', 'harbor', 'bending_moment'),
 (2, 39.32, -28400, 'low', 'harbor', 'shear_force'),
 (2, 39.32, 28400, 'high', 'harbor', 'shear_force'),
  (2, 91.12, -314170, 'low', 'harbor', 'bending_moment'),
 (2, 91.12, 314170, 'high', 'harbor', 'bending_moment'),
 (2, 91.12, -28400, 'low', 'harbor', 'shear_force'),
 (2, 91.12, 28400, 'high', 'harbor', 'shear_force'),
  (2, 119.98, -90000, 'low', 'harbor', 'bending_moment'),
 (2, 119.98, 90000, 'high', 'harbor', 'bending_moment'),
 (2, 119.98, -11000, 'low', 'harbor', 'shear_force'),
 (2, 119.98, 11000, 'high', 'harbor', 'shear_force'),
  (2, 135.5, -90000, 'low', 'harbor', 'bending_moment'),
 (2, 135.5, 90000, 'high', 'harbor', 'bending_moment'),
 (2, 135.5, -11000, 'low', 'harbor', 'shear_force'),
 (2, 135.5, 11000, 'high', 'harbor', 'shear_force');