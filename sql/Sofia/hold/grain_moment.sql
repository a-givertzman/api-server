DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H101' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0.5, 265.3 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1, 422 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.5, 516.02 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2, 563.97 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.5, 589.55 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3, 620.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.5, 663.69 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4, 713 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.5, 763.39 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5, 813.79 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.5, 873.09 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6, 939.01 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.5, 1004.93 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7, 1070.01 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.5, 1123.54 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8, 1146.07 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.5, 1109.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9, 1017.04 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.5, 858.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10, 621.28 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.5, 286.31 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.8, 145.57;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H102' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0.5, 284.42 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1, 482.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.5, 623.73 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2, 719.64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.5, 776.17 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3, 797.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.5, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.5, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.5, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.5, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7, 797.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.5, 797.981 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8, 793.21 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.5, 758.51 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9, 687.2 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.5, 574.43 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10, 412.67 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.5, 187.47 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.8, 84.43;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H103' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0.5, 118.07 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1, 200.2 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.5, 258.93 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2, 298.74 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.5, 322.21 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3, 331.11 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.5, 331.26 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8, 329.28 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.5, 314.88 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9, 285.27 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.5, 238.46 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10, 171.31 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.5, 77.83 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.8, 35.42;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H104' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0.5, 687.65 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1, 1165.99 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.5, 1508.04 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2, 1739.91 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.5, 1876.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3, 1928.41 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.5, 1929.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8, 1917.81 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.5, 1833.91 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9, 1661.49 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.5, 1388.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10, 997.75 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.5, 453.27 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.8, 202.83;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H201' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0.5, 455.02 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1, 771.53 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.5, 997.87 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2, 1151.29 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.5, 1241.74 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3, 1276.02 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.5, 1276.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8, 1269 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.5, 1213.491 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9, 1099.4 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.5, 918.991 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10, 660.21 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.5, 299.93 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.8, 134.33;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H202' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0.5, 112.57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1, 190.87 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.5, 246.86 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2, 284.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.5, 307.19 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3, 315.67 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.5, 315.82 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8, 313.94 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.5, 300.2 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9, 271.98 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.5, 227.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10, 163.33 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.5, 74.2 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.8, 33.78;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H203' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0.5, 420.25 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1, 712.57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.5, 921.61 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2, 1063.31 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.5, 1146.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3, 1178.51 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.5, 1179.08 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8, 1172.03 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.5, 1120.76 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9, 1015.39 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.5, 848.77 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10, 609.76 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.5, 277.01 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.8, 124.43;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H204' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0.5, 344.7 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1, 584.48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.5, 755.94 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2, 872.17 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.5, 940.69 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3, 966.66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.5, 967.12 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8, 961.34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.5, 919.29 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9, 832.86 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.5, 696.19 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10, 500.15 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.5, 227.21 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.8, 102.78;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H205' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0.5, 188.11 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1, 318.96 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.5, 412.53 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2, 475.96 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.5, 513.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3, 527.52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.5, 527.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8, 524.62 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.5, 501.67 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9, 454.51 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.5, 379.93 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10, 272.94 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.5, 123.99 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.8, 56.02;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H206' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0.5, 159.77 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1, 282.88 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.5, 378.84 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2, 449.04 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.5, 496.75 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3, 532.91 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.5, 561.86 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4, 590.31 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.5, 618.76 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5, 646.43 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.5, 664.68 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6, 666.44 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.5, 666.44 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7, 666.44 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.5, 666.44 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8, 662.47 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.5, 633.48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9, 573.92 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.5, 479.74 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10, 479.74 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.5, 156.57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.8, 70.35;


