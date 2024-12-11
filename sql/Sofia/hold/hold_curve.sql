DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H101' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0, 0, 111.92, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0.5, 66.2, 111.92, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1, 132.4, 111.92, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.5, 198.6, 111.92, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2, 264.8, 111.92, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.5, 331, 111.92, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3, 397.2, 111.92, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.5, 463.4, 111.92, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4, 529.6, 111.92, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.5, 595.8, 111.92, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5, 662, 111.92, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.5, 739.91, 111.96, 0, 3.89 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6, 826.49, 112.01, 0, 4.2 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.5, 913.08, 112.06, 0, 4.5 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7, 999.66, 112.1, 0, 4.79 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.5, 1086.25, 112.13, 0, 5.07 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8, 1172.84, 112.16, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.5, 1259.42, 112.19, 0, 5.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9, 1346.01, 112.21, 0, 5.9 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.5, 1432.6, 112.22, 0, 6.17 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10, 1519.18, 112.24, 0, 6.43 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.5, 1604.82, 112.25, 0, 6.7 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.8, 1657, 112.26, 0, 6.86;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H102' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0, 0, 101.19, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0.5, 52.61, 101.19, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1, 105.23, 101.19, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.5, 157.84, 101.19, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2, 210.46, 101.19, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.5, 263.07, 101.19, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3, 315.69, 101.19, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.5, 368.3, 101.19, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4, 420.92, 101.19, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.5, 473.53, 101.19, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5, 526.15, 101.19, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.5, 578.76, 101.19, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6, 631.37, 101.19, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.5, 683.99, 101.19, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7, 736.6, 101.19, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.5, 789.22, 101.19, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8, 841.83, 101.19, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.5, 894.45, 101.19, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9, 947.06, 101.19, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.5, 999.68, 101.19, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10, 1052.29, 101.19, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.5, 1104.91, 101.19, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.8, 1137, 101.19, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H103' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0, 0, 94.9, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0.5, 21.84, 94.9, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1, 43.68, 94.9, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.5, 65.53, 94.9, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2, 87.37, 94.9, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.5, 109.21, 94.9, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3, 131.05, 94.9, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.5, 152.89, 94.9, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4, 174.73, 94.9, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.5, 196.58, 94.9, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5, 218.42, 94.9, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.5, 240.26, 94.9, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6, 262.1, 94.9, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.5, 283.94, 94.9, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7, 305.78, 94.9, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.5, 327.63, 94.9, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8, 349.47, 94.9, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.5, 371.31, 94.9, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9, 393.15, 94.9, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.5, 414.99, 94.9, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10, 436.83, 94.9, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.5, 458.68, 94.9, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.8, 472, 94.9, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H104' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0, 0, 82.99, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0.5, 127.21, 82.99, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1, 254.42, 82.99, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.5, 381.63, 82.99, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2, 508.84, 82.99, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.5, 636.05, 82.99, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3, 763.26, 82.99, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.5, 890.47, 82.99, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4, 1017.68, 82.99, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.5, 1144.89, 82.99, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5, 1272.1, 82.99, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.5, 1399.31, 82.99, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6, 1526.52, 82.99, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.5, 1653.73, 82.99, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7, 1780.93, 82.99, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.5, 1908.14, 82.99, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8, 2035.35, 82.99, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.5, 2162.56, 82.99, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9, 2289.77, 82.99, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.5, 2416.98, 82.99, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10, 2544.19, 82.99, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.5, 2671.4, 82.99, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.8, 2749, 82.99, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H201' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0, 0, 64.76, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0.5, 84.17, 64.76, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1, 168.35, 64.76, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.5, 252.52, 64.76, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2, 336.7, 64.76, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.5, 420.87, 64.76, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3, 505.04, 64.76, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.5, 589.22, 64.76, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4, 673.39, 64.76, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.5, 757.57, 64.76, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5, 841.74, 64.76, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.5, 925.91, 64.76, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6, 1010.09, 64.76, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.5, 1094.26, 64.76, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7, 1178.44, 64.76, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.5, 1262.61, 64.76, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8, 1346.78, 64.76, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.5, 1430.96, 64.76, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9, 1515.13, 64.76, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.5, 1599.31, 64.76, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10, 1683.48, 64.76, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.5, 1767.65, 64.76, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.8, 1819, 64.76, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H202' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0, 0, 56.18, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0.5, 20.82, 56.18, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1, 41.65, 56.18, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.5, 62.47, 56.18, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2, 83.29, 56.18, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.5, 104.12, 56.18, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3, 124.94, 56.18, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.5, 145.77, 56.18, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4, 166.59, 56.18, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.5, 187.41, 56.18, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5, 208.24, 56.18, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.5, 229.06, 56.18, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6, 249.88, 56.18, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.5, 270.71, 56.18, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7, 291.53, 56.18, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.5, 312.36, 56.18, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8, 333.18, 56.18, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.5, 354, 56.18, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9, 374.83, 56.18, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.5, 395.65, 56.18, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10, 416.47, 56.18, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.5, 437.3, 56.18, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.8, 450, 56.18, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H203' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0, 0, 48.07, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0.5, 77.74, 48.07, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1, 155.48, 48.07, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.5, 233.23, 48.07, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2, 310.97, 48.07, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.5, 388.71, 48.07, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3, 466.45, 48.07, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.5, 544.19, 48.07, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4, 621.93, 48.07, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.5, 699.68, 48.07, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5, 777.42, 48.07, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.5, 855.16, 48.07, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6, 932.9, 48.07, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.5, 1010.64, 48.07, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7, 1088.39, 48.07, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.5, 1166.13, 48.07, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8, 1243.87, 48.07, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.5, 1321.61, 48.07, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9, 1399.35, 48.07, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.5, 1477.09, 48.07, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10, 1554.84, 48.07, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.5, 1632.58, 48.07, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.8, 1680, 48.07, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H204' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0, 0, 36.68, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0.5, 63.77, 36.68, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1, 127.53, 36.68, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.5, 191.3, 36.68, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2, 255.07, 36.68, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.5, 318.83, 36.68, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3, 382.6, 36.68, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.5, 446.37, 36.68, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4, 510.13, 36.68, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.5, 573.9, 36.68, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5, 637.67, 36.68, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.5, 701.43, 36.68, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6, 765.2, 36.68, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.5, 828.97, 36.68, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7, 892.73, 36.68, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.5, 956.5, 36.68, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8, 1020.27, 36.68, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.5, 1084.04, 36.68, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9, 1147.8, 36.68, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.5, 1211.57, 36.68, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10, 1275.34, 36.68, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.5, 1339.1, 36.68, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.8, 1378, 36.68, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H205' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0, 0, 28.54, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0.5, 34.8, 28.54, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1, 69.6, 28.54, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.5, 104.4, 28.54, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2, 139.19, 28.54, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.5, 173.99, 28.54, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3, 208.79, 28.54, 0, 2.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.5, 243.59, 28.54, 0, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4, 278.39, 28.54, 0, 3.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.5, 313.19, 28.54, 0, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5, 347.99, 28.54, 0, 3.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.5, 382.79, 28.54, 0, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6, 417.58, 28.54, 0, 4.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.5, 452.38, 28.54, 0, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7, 487.18, 28.54, 0, 4.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.5, 521.98, 28.54, 0, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8, 556.78, 28.54, 0, 5.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.5, 591.58, 28.54, 0, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9, 626.38, 28.54, 0, 5.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.5, 661.18, 28.54, 0, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10, 695.97, 28.54, 0, 6.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.5, 730.77, 28.54, 0, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.8, 752, 28.54, 0, 6.5;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H206' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0, 0, 22.19, 0, 1.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0.5, 35.98, 22.19, 0, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1, 71.95, 22.19, 0, 1.6 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.5, 107.93, 22.19, 0, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2, 143.9, 22.19, 0, 2.1 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.5, 179.88, 22.19, 0, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3, 222.07, 22.15, 0, 2.64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.5, 266.01, 22.12, 0, 2.92 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4, 309.95, 22.09, 0, 3.19 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.5, 353.9, 22.07, 0, 3.46 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5, 397.84, 22.06, 0, 3.72 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.5, 441.78, 22.05, 0, 3.99 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6, 485.72, 22.04, 0, 4.25 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.5, 529.66, 22.03, 0, 4.5 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7, 573.6, 22.02, 0, 4.76 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.5, 617.55, 22.02, 0, 5.01 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8, 661.49, 22.01, 0, 5.27 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.5, 705.43, 22.01, 0, 5.52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9, 749.37, 22, 0, 5.78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.5, 793.31, 22, 0, 6.03 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10, 837.25, 22, 0, 6.03 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.5, 881.2, 21.99, 0, 6.54 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.8, 908, 21.99, 0, 6.69;


