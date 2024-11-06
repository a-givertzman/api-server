DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H101' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0.50, 66.20, 111.92, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.00, 132.40, 111.92, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.50, 198.60, 111.92, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.00, 264.80, 111.92, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.50, 331.00, 111.92, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.00, 397.20, 111.92, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.50, 463.40, 111.92, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.00, 529.60, 111.92, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.50, 595.80, 111.92, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.00, 662.00, 111.92, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.50, 739.91, 111.96, 0.00, 3.89 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.00, 826.49, 112.01, 0.00, 4.20 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.50, 913.08, 112.06, 0.00, 4.50 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.00, 999.66, 112.10, 0.00, 4.79 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.50, 1086.25, 112.13, 0.00, 5.07 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.00, 1172.84, 112.16, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.50, 1259.42, 112.19, 0.00, 5.63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.00, 1346.01, 112.21, 0.00, 5.90 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.50, 1432.60, 112.22, 0.00, 6.17 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.00, 1519.18, 112.24, 0.00, 6.43 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.50, 1604.82, 112.25, 0.00, 6.70 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.80, 1657.00, 112.26, 0.00, 6.86;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P101' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 0.50, 4.37, 105.50, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 1.00, 8.73, 105.50, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 1.50, 13.10, 105.50, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 2.00, 17.46, 105.50, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 2.50, 21.83, 105.50, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 3.00, 26.20, 105.50, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 3.50, 30.56, 105.50, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 4.00, 34.93, 105.50, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 4.50, 39.30, 105.50, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 5.00, 43.66, 105.50, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 5.50, 48.03, 105.50, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 6.00, 52.39, 105.50, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 6.50, 56.76, 105.50, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 7.00, 61.13, 105.50, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 7.50, 65.49, 105.50, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 8.00, 69.86, 105.50, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 8.50, 74.23, 105.50, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 9.00, 78.59, 105.50, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 9.50, 82.96, 105.50, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.00, 87.32, 105.50, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.50, 91.69, 105.50, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.80, 94.35, 105.50, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H102' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0.50, 52.61, 101.19, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.00, 105.23, 101.19, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.50, 157.84, 101.19, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.00, 210.46, 101.19, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.50, 263.07, 101.19, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.00, 315.69, 101.19, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.50, 368.30, 101.19, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.00, 420.92, 101.19, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.50, 473.53, 101.19, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.00, 526.15, 101.19, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.50, 578.76, 101.19, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.00, 631.37, 101.19, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.50, 683.99, 101.19, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.00, 736.60, 101.19, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.50, 789.22, 101.19, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.00, 841.83, 101.19, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.50, 894.45, 101.19, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.00, 947.06, 101.19, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.50, 999.68, 101.19, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.00, 1052.29, 101.19, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.80, 1137.00, 101.19, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P102' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 0.50, 4.37, 96.88, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 1.00, 8.73, 96.88, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 1.50, 13.10, 96.88, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 2.00, 17.46, 96.88, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 2.50, 21.83, 96.88, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 3.00, 26.20, 96.88, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 3.50, 30.56, 96.88, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 4.00, 34.93, 96.88, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 4.50, 39.30, 96.88, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 5.00, 43.66, 96.88, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 5.50, 48.03, 96.88, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 6.00, 52.39, 96.88, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 6.50, 56.76, 96.88, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 7.00, 61.13, 96.88, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 7.50, 65.49, 96.88, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 8.00, 69.86, 96.88, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 8.50, 74.23, 96.88, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 9.00, 78.59, 96.88, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 9.50, 82.96, 96.88, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.00, 87.32, 96.88, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.50, 91.69, 96.88, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.80, 94.35, 96.88, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H103' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0.50, 21.84, 94.90, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.00, 43.68, 94.90, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.50, 65.53, 94.90, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.00, 87.37, 94.90, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.50, 109.21, 94.90, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.00, 131.05, 94.90, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.50, 152.89, 94.90, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.00, 174.73, 94.90, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.50, 196.58, 94.90, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.00, 218.42, 94.90, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.50, 240.26, 94.90, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.00, 262.10, 94.90, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.50, 283.94, 94.90, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.00, 305.78, 94.90, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.50, 327.63, 94.90, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.00, 349.47, 94.90, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.50, 371.31, 94.90, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.00, 393.15, 94.90, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.50, 414.99, 94.90, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.00, 436.83, 94.90, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.50, 458.68, 94.90, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.80, 472.00, 94.90, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P103' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 0.50, 4.37, 96.88, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 1.00, 8.73, 96.88, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 1.50, 13.10, 96.88, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 2.00, 17.46, 96.88, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 2.50, 21.83, 96.88, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 3.00, 26.20, 96.88, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 3.50, 30.56, 96.88, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 4.00, 34.93, 96.88, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 4.50, 39.30, 96.88, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 5.00, 43.66, 96.88, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 5.50, 48.03, 96.88, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 6.00, 52.39, 96.88, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 6.50, 56.76, 96.88, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 7.00, 61.13, 96.88, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 7.50, 65.49, 96.88, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 8.00, 69.86, 96.88, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 8.50, 74.22, 96.88, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 9.00, 78.59, 96.88, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 9.50, 82.96, 96.88, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.00, 87.32, 96.88, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.50, 91.69, 96.88, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.80, 94.35, 96.88, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H104' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0.50, 127.21, 82.99, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.00, 254.42, 82.99, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.50, 381.63, 82.99, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.00, 508.84, 82.99, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.50, 636.05, 82.99, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.00, 763.26, 82.99, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.50, 890.47, 82.99, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.00, 1017.68, 82.99, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.50, 1144.89, 82.99, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.00, 1272.10, 82.99, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.50, 1399.31, 82.99, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.00, 1526.52, 82.99, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.50, 1653.73, 82.99, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.00, 1780.93, 82.99, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.50, 1908.14, 82.99, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.00, 2035.35, 82.99, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.50, 2162.56, 82.99, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.00, 2289.77, 82.99, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.50, 2416.98, 82.99, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.00, 2544.19, 82.99, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.50, 2671.40, 82.99, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.80, 2749.00, 82.99, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H201' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0.50, 84.17, 64.76, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.00, 168.35, 64.76, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.50, 252.52, 64.76, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.00, 336.70, 64.76, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.50, 420.87, 64.76, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.00, 505.04, 64.76, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.50, 589.22, 64.76, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.00, 673.39, 64.76, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.50, 757.57, 64.76, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.00, 841.74, 64.76, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.50, 925.91, 64.76, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.00, 1010.09, 64.76, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.50, 1094.26, 64.76, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.00, 1178.44, 64.76, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.50, 1262.61, 64.76, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.00, 1346.78, 64.76, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.50, 1430.96, 64.76, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.00, 1515.13, 64.76, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.50, 1599.31, 64.76, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.00, 1683.48, 64.76, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.50, 1767.65, 64.76, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.80, 1819.00, 64.76, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P201' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 0.50, 4.37, 58.08, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 1.00, 8.73, 58.08, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 1.50, 13.10, 58.08, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 2.00, 17.46, 58.08, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 2.50, 21.83, 58.08, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 3.00, 26.20, 58.08, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 3.50, 30.56, 58.08, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 4.00, 34.93, 58.08, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 4.50, 39.30, 58.08, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 5.00, 43.66, 58.08, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 5.50, 48.03, 58.08, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 6.00, 52.39, 58.08, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 6.50, 56.76, 58.08, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 7.00, 61.13, 58.08, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 7.50, 65.49, 58.08, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 8.00, 69.86, 58.08, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 8.50, 74.22, 58.08, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 9.00, 78.59, 58.08, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 9.50, 82.96, 58.08, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.00, 87.32, 58.08, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.50, 91.69, 58.08, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.80, 94.35, 58.08, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H202' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0.50, 20.82, 56.18, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.00, 41.65, 56.18, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.50, 62.47, 56.18, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.00, 83.29, 56.18, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.50, 104.12, 56.18, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.00, 124.94, 56.18, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.50, 145.77, 56.18, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.00, 166.59, 56.18, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.50, 187.41, 56.18, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.00, 208.24, 56.18, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.50, 229.06, 56.18, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.00, 249.88, 56.18, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.50, 270.71, 56.18, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.00, 291.53, 56.18, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.50, 312.36, 56.18, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.00, 333.18, 56.18, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.50, 354.00, 56.18, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.00, 374.83, 56.18, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.50, 395.65, 56.18, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.00, 416.47, 56.18, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.50, 437.30, 56.18, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.80, 450.00, 56.18, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P202' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 0.50, 4.37, 54.28, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 1.00, 8.73, 54.28, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 1.50, 13.10, 54.28, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 2.00, 17.46, 54.28, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 2.50, 21.83, 54.28, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 3.00, 26.20, 54.28, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 3.50, 30.56, 54.28, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 4.00, 34.93, 54.28, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 4.50, 39.30, 54.28, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 5.00, 43.66, 54.28, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 5.50, 48.03, 54.28, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 6.00, 52.39, 54.28, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 6.50, 56.76, 54.28, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 7.00, 61.13, 54.28, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 7.50, 65.49, 54.28, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 8.00, 69.86, 54.28, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 8.50, 74.22, 54.28, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 9.00, 78.59, 54.28, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 9.50, 82.96, 54.28, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.00, 87.32, 54.28, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.50, 91.69, 54.28, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.80, 94.35, 54.28, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H203' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0.50, 77.74, 48.07, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.00, 155.48, 48.07, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.50, 233.23, 48.07, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.00, 310.97, 48.07, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.50, 388.71, 48.07, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.00, 466.45, 48.07, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.50, 544.19, 48.07, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.00, 621.93, 48.07, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.50, 699.68, 48.07, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.00, 777.42, 48.07, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.50, 855.16, 48.07, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.00, 932.90, 48.07, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.50, 1010.64, 48.07, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.00, 1088.39, 48.07, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.50, 1166.13, 48.07, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.00, 1243.87, 48.07, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.50, 1321.61, 48.07, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.00, 1399.35, 48.07, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.50, 1477.09, 48.07, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.00, 1554.84, 48.07, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.50, 1632.58, 48.07, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.80, 1680.00, 48.07, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P203' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 0.50, 4.37, 41.86, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 1.00, 8.73, 41.86, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 1.50, 13.10, 41.86, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 2.00, 17.46, 41.86, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 2.50, 21.83, 41.86, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 3.00, 26.20, 41.86, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 3.50, 30.56, 41.86, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 4.00, 34.93, 41.86, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 4.50, 39.30, 41.86, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 5.00, 43.66, 41.86, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 5.50, 48.03, 41.86, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 6.00, 52.39, 41.86, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 6.50, 56.76, 41.86, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 7.00, 61.13, 41.86, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 7.50, 65.49, 41.86, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 8.00, 69.86, 41.86, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 8.50, 74.22, 41.86, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 9.00, 78.59, 41.86, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 9.50, 82.96, 41.86, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.00, 87.32, 41.86, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.50, 91.69, 41.86, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.80, 94.35, 41.86, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H204' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0.50, 63.77, 36.68, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.00, 127.53, 36.68, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.50, 191.30, 36.68, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.00, 255.07, 36.68, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.50, 318.83, 36.68, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.00, 382.60, 36.68, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.50, 446.37, 36.68, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.00, 510.13, 36.68, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.50, 573.90, 36.68, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.00, 637.67, 36.68, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.50, 701.43, 36.68, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.00, 765.20, 36.68, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.50, 828.97, 36.68, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.00, 892.73, 36.68, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.50, 956.50, 36.68, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.00, 1020.27, 36.68, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.50, 1084.04, 36.68, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.00, 1147.80, 36.68, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.50, 1211.57, 36.68, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.00, 1275.34, 36.68, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.50, 1339.10, 36.68, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.80, 1378.00, 36.68, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P204' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 0.50, 4.37, 31.50, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 1.00, 8.73, 31.50, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 1.50, 13.10, 31.50, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 2.00, 17.46, 31.50, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 2.50, 21.83, 31.50, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 3.00, 26.20, 31.50, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 3.50, 30.56, 31.50, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 4.00, 34.93, 31.50, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 4.50, 39.30, 31.50, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 5.00, 43.66, 31.50, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 5.50, 48.03, 31.50, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 6.00, 52.39, 31.50, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 6.50, 56.76, 31.50, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 7.00, 61.13, 31.50, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 7.50, 61.13, 31.50, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 8.00, 65.49, 31.50, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 8.50, 69.86, 31.50, 5.10, 0.84 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 9.00, 78.59, 41.86, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 9.50, 82.96, 41.86, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.00, 87.32, 41.86, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.50, 91.69, 41.86, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.80, 94.35, 41.86, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H205' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0.50, 34.80, 28.54, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.00, 69.60, 28.54, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.50, 104.40, 28.54, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.00, 139.19, 28.54, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.50, 173.99, 28.54, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.00, 208.79, 28.54, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.50, 243.59, 28.54, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.00, 278.39, 28.54, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.50, 313.19, 28.54, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.00, 347.99, 28.54, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.50, 382.79, 28.54, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.00, 417.58, 28.54, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.50, 452.38, 28.54, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.00, 487.18, 28.54, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.50, 521.98, 28.54, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.00, 556.78, 28.54, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.50, 591.58, 28.54, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.00, 626.38, 28.54, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.50, 661.18, 28.54, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.00, 695.97, 28.54, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.50, 730.77, 28.54, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.80, 752.00, 28.54, 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P205' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 0.50, 4.37, 25.58, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 1.00, 8.73, 25.58, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 1.50, 13.10, 25.58, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 2.00, 17.46, 25.58, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 2.50, 21.83, 25.58, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 3.00, 26.20, 25.58, 0.00, 2.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 3.50, 30.56, 25.58, 0.00, 2.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 4.00, 34.93, 25.58, 0.00, 3.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 4.50, 39.30, 25.58, 0.00, 3.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 5.00, 43.66, 25.58, 0.00, 3.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 5.50, 48.03, 25.58, 0.00, 3.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 6.00, 52.39, 25.58, 0.00, 4.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 6.50, 56.76, 25.58, 0.00, 4.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 7.00, 61.13, 25.58, 0.00, 4.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 7.50, 65.49, 25.58, 0.00, 4.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 8.00, 69.86, 25.58, 0.00, 5.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 8.50, 74.22, 25.58, 0.00, 5.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 9.00, 78.59, 25.58, 0.00, 5.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 9.50, 82.96, 25.58, 0.00, 5.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.00, 87.32, 25.58, 0.00, 6.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.50, 91.69, 25.58, 0.00, 6.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.80, 94.35, 25.58 , 0.00, 6.50;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H206' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0.50, 35.98, 22.19, 0.00, 1.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.00, 71.95, 22.19, 0.00, 1.60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.50, 107.93, 22.19, 0.00, 1.85 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.00, 143.90, 22.19, 0.00, 2.10 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.50, 179.88, 22.19, 0.00, 2.35 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.00, 222.07, 22.15, 0.00, 2.64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.50, 266.01, 22.12, 0.00, 2.92 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.00, 309.95, 22.09, 0.00, 3.19 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.50, 353.90, 22.07, 0.00, 3.46 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.00, 397.84, 22.06, 0.00, 3.72 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.50, 441.78, 22.05, 0.00, 3.99 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.00, 485.72, 22.04, 0.00, 4.25 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.50, 529.66, 22.03, 0.00, 4.50 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.00, 573.60, 22.02, 0.00, 4.76 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.50, 617.55, 22.02, 0.00, 5.01 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.00, 661.49, 22.01, 0.00, 5.27 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.50, 705.43, 22.01, 0.00, 5.52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.00, 749.37, 22.00, 0.00, 578.00 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.50, 793.31, 22.00, 0.00, 6.03 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.00, 837.25, 22.00, 0.00, 6.03 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.50, 881.20, 21.99, 0.00, 6.54 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.80, 908.00, 21.99, 0.00, 6.69;


