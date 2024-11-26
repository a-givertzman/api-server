DELETE FROM hold_part WHERE ship_id=2;

INSERT INTO hold_part
  (ship_id, code, group_space_id, group_index, left_bulkhead_code, right_bulkhead_code, bound_x1, bound_x2)
VALUES  
  (2, 'H101', 1001, 1,  'P101', NULL, 105.92, 119.98),
  (2, 'P101', 1001, 2,  'H102', 'H101', 105.18, 105.92),
  (2, 'H102', 1001, 3,  'P102', 'P101', 97.04, 105.18),
  (2, 'P102', 1001, 4,  'H103', 'H102', 96.30, 97.04),
  (2, 'H103', 1001, 5,  'P103', 'P102', 93.34, 96.30),
  (2, 'P103', 1001, 6,  'H104', 'H103', 92.60, 93.34),
  (2, 'H104', 1001, 7,  NULL, 'P103', 73.36, 92.60),
  (2, 'H201', 1002, 1,  'P201', NULL, 58.56, 71.14),
  (2, 'P201', 1002, 2,  'H202', 'H201', 57.82, 58.56),
  (2, 'H202', 1002, 3,  'P202', 'P201', 54.86, 57.82),
  (2, 'P202', 1002, 4,  'H203', 'H202', 54.12, 54.86),
  (2, 'H203', 1002, 5,  'P203', 'P202', 42.28, 54.12),
  (2, 'P203', 1002, 6,  'H204', 'H203', 41.54, 42.28),
  (2, 'H204', 1002, 7,  'P204', 'P203', 31.92, 41.54),
  (2, 'P204', 1002, 8,  'H205', 'H204', 31.18, 31.92),
  (2, 'H205', 1002, 9,  'P205', 'P204', 26.00, 31.18),
  (2, 'P205', 1002, 10,  'H206', 'H205', 25.26, 26.00),
  (2, 'H206', 1002, 11,  NULL, 'P205', 18.60, 25.26);

-- Hold 1
-- H101
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 119.98,4.39999 L 119.98,-4.39999 L 112.58,-6.59999 L 105.92,-6.59999 L 105.92,6.59999 L 112.58,6.59999  z ",
"xz": " M 119.98,1.09999 L 105.92,1.09999 L 105.92,11.905 L 119.98,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H101' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P101
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 105.92,-6.59999 L 105.18,-6.59999 L 105.18,6.59999 L 105.92,6.59999 z ",
"xz": " M 105.92,1.09999 L 105.18,1.09999 L 105.18,11.905 L 105.92,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P101' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H102
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 105.18,-6.59999 L 97.04,-6.59999 L 97.04,6.59999 L 105.18,6.59999 z ",
"xz": " M 105.18,1.09999 L 97.04,1.09999 L 97.04,11.905 L 105.18,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H102' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P102
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 97.04,-6.59999 L 96.3,-6.59999 L 96.3,6.59999 L 97.04,6.59999 z ",
"xz": " M 97.04,1.09999 L 96.3,1.09999 L 96.3,11.905 L 97.04,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P102' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H103
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 96.3,-6.59999 L 93.34,-6.59999 L 93.34,6.59999 L 96.3,6.59999 z ",
"xz": " M 96.3,1.09999 L 93.34,1.09999 L 93.34,11.905 L 96.3,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H103' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P103
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 93.34,-6.59999 L 92.6,-6.59999 L 92.6,6.59999 L 93.34,6.59999 z ",
"xz": " M 93.34,1.09999 L 92.6,1.09999 L 92.6,11.905 L 93.34,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P103' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H104
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 92.6,-6.59999 L 73.36,-6.59999 L 73.36,6.59999 L 92.6,6.59999 z ",
"xz": " M 92.6,1.09999 L 73.36,1.09999 L 73.36,11.905 L 92.6,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H104' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- Hold 2
-- H201
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 71.14,-6.59999 L 58.56,-6.59999 L 58.56,6.59999 L 71.14,6.59999 z ",
"xz": " M 71.14,1.09999 L 58.56,1.09999 L 58.56,11.905 L 71.14,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H201' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P201
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 58.56,-6.59999 L 57.82,-6.59999 L 57.82,6.59999 L 58.56,6.59999 z ",
"xz": " M 58.56,1.09999 L 57.82,1.09999 L 57.82,11.905 L 58.56,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P201' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H202
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 57.82,-6.59999 L 54.86,-6.59999 L 54.86,6.59999 L 57.82,6.59999 z ",
"xz": " M 57.82,1.09999 L 54.86,1.09999 L 54.86,11.905 L 57.82,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H202' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P202
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 54.86,-6.59999 L 54.12,-6.59999 L 54.12,6.59999 L 54.86,6.59999 z ",
"xz": " M 54.86,1.09999 L 54.12,1.09999 L 54.12,11.905 L 54.86,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P202' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H203
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 54.12,-6.59999 L 42.28,-6.59999 L 42.28,6.59999 L 54.12,6.59999 z ",
"xz": " M 54.12,1.09999 L 42.28,1.09999 L 42.28,11.905 L 54.12,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H203' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P203
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 42.28,-6.59999 L 41.54,-6.59999 L 41.54,6.59999 L 42.28,6.59999 z ",
"xz": " M 42.28,1.09999 L 41.54,1.09999 L 41.54,11.905 L 42.28,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P203' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H204
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 41.54,-6.59999 L 31.92,-6.59999 L 31.92,6.59999 L 41.54,6.59999 z ",
"xz": " M 41.54,1.09999 L 31.92,1.09999 L 31.92,11.905 L 41.54,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H204' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P204
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 31.92,-6.59999 L 31.18,-6.59999 L 31.18,6.59999 L 31.92,6.59999 z ",
"xz": " M 31.92,1.09999 L 31.18,1.09999 L 31.18,11.905 L 31.92,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P204' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H205
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 31.18,-6.59999 L 26,-6.59999 L 26,6.59999 L 31.18,6.59999 z ",
"xz": " M 31.18,1.09999 L 26,1.09999 L 26,11.905 L 31.18,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H205' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- P205
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 26,-6.59999 L 25.26,-6.59999 L 25.26,6.59999 L 26,6.59999 z ",
"xz": " M 26,1.09999 L 25.26,1.09999 L 25.26,11.905 L 26,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'P205' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;
-- H206
UPDATE
  hold_part
SET
  svg_paths = '{
"xy": " M 25.26,-6.59999 L 18.6,-6.59999 L 18.6,6.59999 L 25.26,6.59999 z ",
"xz": " M 25.26,1.09999 L 18.6,1.09999 L 18.6,11.905 L 25.26,11.905 z ",
"yz": " M 6.59999,1.09999 L -6.59999,1.09999 L -6.59999,11.905 L 6.59999,11.905 z "
}'
WHERE
  code = 'H206' AND
  ship_id = 2 AND
  project_id IS NOT DISTINCT FROM NULL;