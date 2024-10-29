DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.10, 56.19, 94.85, 0.00, 1.15, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.20, 112.38, 94.85, 0.00, 1.20, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.30, 168.57, 94.85, 0.00, 1.25, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.40, 224.75, 94.85, 0.00, 1.30, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.50, 280.94, 94.85, 0.00, 1.35, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.60, 337.13, 94.85, 0.00, 1.40, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.70, 393.32, 94.85, 0.00, 1.45, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.80, 449.51, 94.85, 0.00, 1.50, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 0.90, 505.70, 94.85, 0.00, 1.55, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.00, 561.88, 94.85, 0.00, 1.60, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.10, 618.07, 94.85, 0.00, 1.65, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.20, 674.26, 94.85, 0.00, 1.70, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.30, 730.45, 94.85, 0.00, 1.75, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.40, 786.64, 94.85, 0.00, 1.80, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.50, 842.83, 94.85, 0.00, 1.85, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.60, 899.01, 94.85, 0.00, 1.90, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.70, 955.20, 94.85, 0.00, 1.95, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.80, 1011.39, 94.85, 0.00, 2.00, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 1.90, 1067.58, 94.85, 0.00, 2.05, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.00, 1123.77, 94.85, 0.00, 2.10, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.10, 1179.96, 94.85, 0.00, 2.15, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.20, 1236.15, 94.85, 0.00, 2.20, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.30, 1292.33, 94.85, 0.00, 2.25, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.40, 1348.52, 94.85, 0.00, 2.30, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.50, 1404.71, 94.85, 0.00, 2.35, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.60, 1460.90, 94.85, 0.00, 2.40, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.70, 1517.09, 94.85, 0.00, 2.45, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.80, 1573.28, 94.85, 0.00, 2.50, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 2.90, 1629.46, 94.85, 0.00, 2.55, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.00, 1685.65, 94.85, 0.00, 2.60, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.10, 1741.84, 94.85, 0.00, 2.65, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.20, 1798.03, 94.85, 0.00, 2.70, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.30, 1854.22, 94.85, 0.00, 2.75, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.40, 1910.41, 94.85, 0.00, 2.80, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.50, 1966.59, 94.85, 0.00, 2.85, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.60, 2022.78, 94.85, 0.00, 2.90, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.70, 2078.97, 94.85, 0.00, 2.95, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.80, 2135.16, 94.85, 0.00, 3.00, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 3.90, 2191.35, 94.85, 0.00, 3.05, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.00, 2247.54, 94.85, 0.00, 3.10, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.10, 2303.72, 94.85, 0.00, 3.15, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.20, 2359.91, 94.85, 0.00, 3.20, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.30, 2416.10, 94.85, 0.00, 3.25, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.40, 2472.29, 94.85, 0.00, 3.30, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.50, 2528.48, 94.85, 0.00, 3.35, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.60, 2584.67, 94.85, 0.00, 3.40, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.70, 2640.86, 94.85, 0.00, 3.45, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.80, 2697.04, 94.85, 0.00, 3.50, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 4.90, 2753.23, 94.85, 0.00, 3.55, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.00, 2809.42, 94.85, 0.00, 3.60, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.10, 2865.61, 94.85, 0.00, 3.65, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.20, 2921.80, 94.85, 0.00, 3.70, 7359, 90302 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.30, 2981.54, 94.88, 0.00, 3.75, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.40, 3041.81, 94.90, 0.00, 3.81, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.50, 3102.08, 94.93, 0.00, 3.86, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.60, 3162.35, 94.95, 0.00, 3.91, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.70, 3222.63, 94.97, 0.00, 3.97, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.80, 3282.90, 95.00, 0.00, 4.02, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 5.90, 3343.17, 95.02, 0.00, 4.07, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.00, 3403.44, 95.04, 0.00, 4.13, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.10, 3463.72, 95.06, 0.00, 4.18, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.20, 3523.99, 95.08, 0.00, 4.23, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.30, 3584.26, 95.09, 0.00, 4.28, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.40, 3644.53, 95.11, 0.00, 4.34, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.50, 3704.80, 95.13, 0.00, 4.39, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.60, 3765.08, 95.15, 0.00, 4.44, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.70, 3825.35, 95.16, 0.00, 4.49, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.80, 3885.62, 95.18, 0.00, 4.54, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 6.90, 3945.89, 95.19, 0.00, 4.60, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.00, 4006.16, 95.21, 0.00, 4.65, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.10, 4066.44, 95.22, 0.00, 4.70, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.20, 4126.71, 95.24, 0.00, 4.75, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.30, 4186.98, 95.25, 0.00, 4.80, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.40, 4247.25, 95.26, 0.00, 4.86, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.50, 4307.52, 95.28, 0.00, 4.91, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.60, 4367.80, 95.29, 0.00, 4.96, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.70, 4428.07, 95.30, 0.00, 5.01, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.80, 4488.34, 95.31, 0.00, 5.06, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 7.90, 4548.61, 95.32, 0.00, 5.11, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.00, 4608.89, 95.34, 0.00, 5.16, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.10, 4669.16, 95.35, 0.00, 5.22, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.20, 4729.43, 95.36, 0.00, 5.27, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.30, 4789.70, 95.37, 0.00, 5.32, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.40, 4849.97, 95.38, 0.00, 5.37, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.50, 4910.25, 95.39, 0.00, 5.42, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.60, 4970.52, 95.40, 0.00, 5.47, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.70, 5030.79, 95.41, 0.00, 5.52, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.80, 5091.06, 95.42, 0.00, 5.58, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 8.90, 5151.33, 95.42, 0.00, 5.63, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.00, 5211.61, 95.43, 0.00, 5.68, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.10, 5271.88, 95.44, 0.00, 5.73, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.20, 5332.15, 95.45, 0.00, 5.78, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.30, 5392.42, 95.46, 0.00, 5.83, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.40, 5452.69, 95.47, 0.00, 5.88, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.50, 5512.97, 95.47, 0.00, 5.93, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.60, 5573.24, 95.48, 0.00, 5.98, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.70, 5633.51, 95.49, 0.00, 6.04, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.80, 5693.78, 95.50, 0.00, 6.09, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 9.90, 5754.06, 95.50, 0.00, 6.14, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.00, 5814.33, 95.51, 0.00, 6.19, 8452, 105371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.10, 5874.49, 95.52, 0.00, 6.24, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.20, 5934.56, 95.52, 0.00, 6.29, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.30, 5994.62, 95.53, 0.00, 6.34, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.40, 6054.68, 95.53, 0.00, 6.39, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.50, 6114.74, 95.54, 0.00, 6.44, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.60, 6174.80, 95.55, 0.00, 6.49, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.70, 6234.86, 95.55, 0.00, 6.54, 8395, 104391 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 1' AND ship_id=2), 10.81, 6297.93, 95.56, 0.00, 6.60, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.10, 67.90, 45.44, 0.00, 1.15, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.20, 135.80, 45.44, 0.00, 1.20, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.30, 203.70, 45.44, 0.00, 1.25, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.40, 271.60, 45.44, 0.00, 1.30, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.50, 339.49, 45.44, 0.00, 1.35, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.60, 407.39, 45.44, 0.00, 1.40, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.70, 475.29, 45.44, 0.00, 1.45, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.80, 543.19, 45.44, 0.00, 1.50, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 0.90, 611.09, 45.44, 0.00, 1.55, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.00, 678.99, 45.44, 0.00, 1.60, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.10, 746.89, 45.44, 0.00, 1.65, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.20, 814.79, 45.44, 0.00, 1.70, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.30, 882.68, 45.44, 0.00, 1.75, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.40, 950.58, 45.44, 0.00, 1.80, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.50, 1018.48, 45.44, 0.00, 1.85, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.60, 1086.38, 45.44, 0.00, 1.90, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.70, 1154.28, 45.44, 0.00, 1.95, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.80, 1222.18, 45.44, 0.00, 2.00, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 1.90, 1290.08, 45.44, 0.00, 2.05, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.00, 1357.97, 45.44, 0.00, 2.10, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.10, 1425.87, 45.44, 0.00, 2.15, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.20, 1493.77, 45.44, 0.00, 2.20, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.30, 1561.67, 45.44, 0.00, 2.25, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.40, 1629.57, 45.44, 0.00, 2.30, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.50, 1697.47, 45.44, 0.00, 2.35, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.60, 1765.37, 45.44, 0.00, 2.40, 9548, 150354 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.70, 1834.71, 45.42, 0.00, 2.45, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.80, 1904.21, 45.40, 0.00, 2.50, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 2.90, 1973.71, 45.38, 0.00, 2.55, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.00, 2043.21, 45.36, 0.00, 2.60, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.10, 2112.71, 45.35, 0.00, 2.66, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.20, 2182.21, 45.33, 0.00, 2.71, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.30, 2251.71, 45.32, 0.00, 2.76, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.40, 2321.21, 45.30, 0.00, 2.81, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.50, 2390.71, 45.29, 0.00, 2.86, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.60, 2460.21, 45.28, 0.00, 2.91, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.70, 2529.71, 45.27, 0.00, 2.96, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.80, 2599.21, 45.26, 0.00, 3.01, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 3.90, 2668.71, 45.25, 0.00, 3.06, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.00, 2738.21, 45.24, 0.00, 3.11, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.10, 2807.71, 45.23, 0.00, 3.16, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.20, 2877.22, 45.22, 0.00, 3.21, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.30, 2946.72, 45.21, 0.00, 3.26, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.40, 3016.22, 45.20, 0.00, 3.31, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.50, 3085.72, 45.20, 0.00, 3.36, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.60, 3155.22, 45.19, 0.00, 3.41, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.70, 3224.72, 45.18, 0.00, 3.46, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.80, 3294.22, 45.18, 0.00, 3.51, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 4.90, 3363.72, 45.17, 0.00, 3.56, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.00, 3433.22, 45.16, 0.00, 3.62, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.10, 3502.72, 45.16, 0.00, 3.67, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.20, 3572.22, 45.15, 0.00, 3.72, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.30, 3641.72, 45.15, 0.00, 3.77, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.40, 3711.22, 45.14, 0.00, 3.82, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.50, 3780.72, 45.14, 0.00, 3.87, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.60, 3850.22, 45.13, 0.00, 3.92, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.70, 3919.72, 45.13, 0.00, 3.97, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.80, 3989.22, 45.12, 0.00, 4.02, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 5.90, 4058.72, 45.12, 0.00, 4.07, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.00, 4128.22, 45.11, 0.00, 4.12, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.10, 4197.73, 45.11, 0.00, 4.17, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.20, 4267.23, 45.11, 0.00, 4.22, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.30, 4336.73, 45.10, 0.00, 4.27, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.40, 4406.23, 45.10, 0.00, 4.32, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.50, 4475.73, 45.10, 0.00, 4.37, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.60, 4545.23, 45.09, 0.00, 4.42, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.70, 4614.73, 45.09, 0.00, 4.47, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.80, 4684.23, 45.09, 0.00, 4.52, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 6.90, 4753.73, 45.08, 0.00, 4.57, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.00, 4823.23, 45.08, 0.00, 4.62, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.10, 4892.73, 45.08, 0.00, 4.67, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.20, 4962.23, 45.07, 0.00, 4.72, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.30, 5031.73, 45.07, 0.00, 4.77, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.40, 5101.23, 45.07, 0.00, 4.82, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.50, 5170.73, 45.06, 0.00, 4.87, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.60, 5240.23, 45.06, 0.00, 4.92, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.70, 5309.73, 45.06, 0.00, 4.97, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.80, 5379.23, 45.06, 0.00, 5.02, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 7.90, 5448.73, 45.06, 0.00, 5.07, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.00, 5518.24, 45.05, 0.00, 5.12, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.10, 5587.74, 45.05, 0.00, 5.17, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.20, 5657.24, 45.05, 0.00, 5.22, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.30, 5726.74, 45.05, 0.00, 5.27, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.40, 5796.24, 45.04, 0.00, 5.32, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.50, 5865.74, 45.04, 0.00, 5.37, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.60, 5935.24, 45.04, 0.00, 5.42, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.70, 6004.74, 45.04, 0.00, 5.47, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.80, 6074.24, 45.04, 0.00, 5.52, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 8.90, 6143.74, 45.03, 0.00, 5.57, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.00, 6213.24, 45.03, 0.00, 5.62, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.10, 6282.74, 45.03, 0.00, 5.67, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.20, 6352.24, 45.03, 0.00, 5.72, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.30, 6421.74, 45.03, 0.00, 5.77, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.40, 6491.24, 45.03, 0.00, 5.82, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.50, 6560.74, 45.02, 0.00, 5.87, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.60, 6630.24, 45.02, 0.00, 5.92, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.70, 6699.74, 45.02, 0.00, 5.97, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.80, 6769.24^, 45.02, 0.00, 6.02, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 9.90, 6838.74^, 45.02, 0.00, 6.07, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.00, 6908.25, 45.02, 0.00, 6.12, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.10, 6977.75, 45.01, 0.00, 6.17, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.20, 7047.25, 45.01, 0.00, 6.22, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.30, 7116.75, 45.01, 0.00, 6.27, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.40, 7186.25, 45.01, 0.00, 6.32, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.50, 7255.75, 45.01, 0.00, 6.37, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.60, 7325.25, 45.01, 0.00, 6.42, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.70, 7394.75, 45.01, 0.00, 6.47, 10091, 159877 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Трюм 2' AND ship_id=2), 10.80, 7467.72, 45.01, 0.00, 6.53, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.10, 0.08, 125.78, 0.00, 0.07, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.20, 0.37, 126.10, 0.00, 0.14, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.30, 0.84, 126.33, 0.00, 0.20, 1, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.40, 1.48, 126.52, 0.00, 0.27, 2, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.50, 2.27, 126.67, 0.00, 0.33, 3, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.60, 3.20, 126.80, 0.00, 0.40, 4, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.70, 4.18, 126.95, 0.00, 0.46, 4, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.80, 5.20, 127.09, 0.00, 0.51, 5, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.90, 6.29, 127.23, 0.00, 0.57, 6, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.00, 7.45, 127.35, 0.00, 0.63, 6, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.10, 8.68, 127.46, 0.00, 0.69, 7, 29 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.20, 9.98, 127.57, 0.00, 0.75, 8, 33 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.30, 11.35, 127.66, 0.00, 0.81, 8, 37 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.40, 12.80, 127.75, 0.00, 0.87, 9, 41 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.50, 14.32, 127.83, 0.00, 0.93, 10, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.60, 15.92, 127.91, 0.00, 1.00, 11, 51 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.70, 17.59, 127.98, 0.00, 1.06, 12, 56 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.80, 19.34, 128.05, 0.00, 1.12, 13, 61 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.90, 21.15, 128.11, 0.00, 1.18, 13, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.00, 23.02, 128.16, 0.00, 1.25, 14, 70 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.10, 24.94, 128.22, 0.00, 1.31, 15, 75 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.20, 26.92, 128.27, 0.00, 1.37, 15, 78 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.30, 28.94, 128.32, 0.00, 1.43, 16, 82 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.40, 31.00, 128.37, 0.00, 1.49, 17, 86 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.50, 33.11, 128.41, 0.00, 1.55, 17, 90 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.60, 35.25, 128.45, 0.00, 1.61, 17, 94 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.70, 37.43, 128.49, 0.00, 1.67, 18, 96 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.80, 39.62, 128.53, 0.00, 1.73, 18, 99 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.90, 41.84, 128.57, 0.00, 1.79, 18, 101 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.00, 44.08, 128.60, 0.00, 1.85, 18, 103 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.10, 46.33, 128.63, 0.00, 1.91, 18, 105 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.20, 48.60, 128.66, 0.00, 1.97, 18, 106 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.30, 50.86, 128.69, 0.00, 2.02, 18, 106 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.40, 53.12, 128.72, 0.00, 2.08, 18, 107 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.50, 55.38, 128.74, 0.00, 2.14, 18, 107 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.60, 57.63, 128.76, 0.00, 2.19, 18, 107 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.70, 59.87, 128.78, 0.00, 2.25, 17, 105 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.80, 62.09, 128.80, 0.00, 2.30, 17, 104 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.90, 64.29, 128.82, 0.00, 2.35, 17, 102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.00, 66.46, 128.83, 0.00, 2.41, 16, 100 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.10, 68.61, 128.84, 0.00, 2.46, 16, 98 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.20, 70.72, 128.86, 0.00, 2.51, 15, 95 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.30, 72.79, 128.86, 0.00, 2.56, 15, 92 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.40, 74.81, 128.87, 0.00, 2.61, 14, 88 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.50, 76.79, 128.88, 0.00, 2.65, 13, 85 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.60, 78.72, 128.88, 0.00, 2.70, 13, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.70, 80.59, 128.89, 0.00, 2.75, 12, 76 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.80, 82.41, 128.89, 0.00, 2.79, 11, 71 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.90, 84.17, 128.89, 0.00, 2.83, 11, 66 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.00, 85.86, 128.89, 0.00, 2.87, 10, 61 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.10, 87.48, 128.88, 0.00, 2.91, 9, 56 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.20, 89.04, 128.88, 0.00, 2.95, 9, 51 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.30, 90.53, 128.87, 0.00, 2.99, 8, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.40, 91.95, 128.87, 0.00, 3.03, 8, 41 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.50, 93.31, 128.86, 0.00, 3.06, 8, 36 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.60, 94.60, 128.85, 0.00, 3.10, 7, 31 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.70, 95.84, 128.84, 0.00, 3.13, 7, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.80, 97.02, 128.83, 0.00, 3.16, 7, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.90, 98.16, 128.82, 0.00, 3.19, 7, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.00, 99.26, 128.81, 0.00, 3.22, 7, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.10, 100.33, 128.79, 0.00, 3.25, 7, 17 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.20, 101.38, 128.78, 0.00, 3.28, 7, 15 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.30, 102.42, 128.77, 0.00, 3.31, 7, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.40, 103.39, 128.76, 0.00, 3.34, 8, 9 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.50, 104.35, 128.74, 0.00, 3.37, 8, 9 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.60, 105.34, 128.73, 0.00, 3.40, 9, 9 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.70, 106.33, 128.72, 0.00, 3.43, 9, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.80, 107.35, 128.71, 0.00, 3.46, 10, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.90, 108.40, 128.69, 0.00, 3.50, 11, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.00, 109.48, 128.68, 0.00, 3.53, 12, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.10, 110.59, 128.66, 0.00, 3.57, 13, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.20, 111.75, 128.65, 0.00, 3.60, 14, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.30, 112.95, 128.64, 0.00, 3.64, 16, 12 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.40, 114.20, 128.62, 0.00, 3.68, 18, 12 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.50, 115.51, 128.61, 0.00, 3.72, 20, 13 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.60, 116.86, 128.59, 0.00, 3.77, 22, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.70, 118.42, 128.58, 0.00, 3.82, 25, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.80, 120.06, 128.57, 0.00, 3.87, 28, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.90, 121.77, 128.56, 0.00, 3.93, 31, 28 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.00, 123.56, 128.54, 0.00, 3.99, 34, 30 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.10, 125.44, 128.53, 0.00, 4.05, 38, 32 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.20, 127.40, 128.52, 0.00, 4.11, 42, 35 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.30, 129.44, 128.51, 0.00, 4.18, 46, 37 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.40, 131.58, 128.50, 0.00, 4.24, 51, 40 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.50, 133.81, 128.49, 0.00, 4.31, 56, 43 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.60, 136.13, 128.48, 0.00, 4.39, 62, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.70, 138.55, 128.47, 0.00, 4.46, 68, 49 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.80, 141.07, 128.46, 0.00, 4.54, 74, 52 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.90, 143.69, 128.45, 0.00, 4.62, 81, 56 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.00, 146.41, 128.44, 0.00, 4.70, 89, 59 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.10, 149.24, 128.43, 0.00, 4.78, 97, 63 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.20, 152.18, 128.42, 0.00, 4.86, 106, 67 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.30, 155.24, 128.42, 0.00, 4.95, 116, 72 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.40, 158.41, 128.41, 0.00, 5.04, 126, 76 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.50, 161.69, 128.40, 0.00, 5.13, 137, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.60, 165.10, 128.40, 0.00, 5.22, 148, 86 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.65, 166.85, 128.40, 0.00, 5.27, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.10, 1.00, 122.11, 0.00, 0.06, 8, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.20, 2.46, 122.18, 0.00, 0.11, 15, 34 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.30, 4.18, 122.22, 0.00, 0.17, 21, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.40, 6.08, 122.24, 0.00, 0.23, 27, 43 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.50, 8.13, 122.25, 0.00, 0.28, 32, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.60, 10.30, 122.26, 0.00, 0.34, 37, 48 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.70, 12.49, 122.25, 0.00, 0 394, 41, 41 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.80, 14.70, 122.24, 0.00, 0.45, 45, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.90, 16.94, 122.22, 0.00, 0.50, 49, 38 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.00, 19.21, 122.20, 0.00, 0.55, 52, 38 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.10, 21.51, 122.18, 0.00, 0.61, 55, 37 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.20, 23.34, 122.16, 0.00, 0.65, 52, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.30, 25.20, 122.13, 0.00, 0.69, 55, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.40, 27.09, 122.12, 0.00, 0.74, 57, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.50, 29.01, 122.10, 0.00, 0.79, 59, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.60, 30.96, 122.08, 0.00, 0.84, 61, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.70, 32.93, 122.07, 0.00, 0.88, 63, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.80, 34.92, 122.06, 0.00, 0.93, 65, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.90, 36.93, 122.05, 0.00, 0.98, 67, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.00, 38.95, 122.04, 0.00, 1.03, 68, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.10, 40.99, 122.03, 0.00, 1.08, 70, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.20, 43.04, 122.02, 0.00, 1.13, 71, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.30, 45.11, 122.01, 0.00, 1.19, 72, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.40, 47.18, 122.00, 0.00, 1.24, 73, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.50, 49.27, 122.00, 0.00, 1.29, 74, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.60, 51.36, 121.99, 0.00, 1.34, 74, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.70, 53.46, 121.98, 0.00, 1.39, 75, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.80, 55.56, 121.98, 0.00, 1.44, 75, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.90, 57.67, 121.97, 0.00, 1.49, 76, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.00, 59.78, 121.97, 0.00, 1.55, 74, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.10, 61.80, 121.97, 0.00, 1.59, 74, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.20, 63.82, 121.96, -0.01, 1.64, 74, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.30, 65.84, 121.96, -0.01, 1.69, 75, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.40, 67.87, 121.96, -0.01, 1.74, 75, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.50, 69.90, 121.96, -0.01, 1.79, 76, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.60, 71.94, 121.95, -0.01, 1.84, 77, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.70, 73.99, 121.95, -0.02, 1.89, 77, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.80, 76.04, 121.95, -0.02, 1.94, 78, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.90, 78.09, 121.95, -0.02, 1.99, 79, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.00, 80.16, 121.95, -0.02, 2.04, 80, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.10, 82.23, 121.94, -0.02, 2.09, 81, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.20, 84.32, 121.94, -0.02, 2.14, 82, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.30, 86.41, 121.94, -0.02, 2.20, 84, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.40, 88.52, 121.94, -0.03, 2.25, 85, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.50, 90.65, 121.94, -0.03, 2.30, 87, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.60, 92.79, 121.93, -0 027, 2.35, 89, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.70, 94.943, 121.93, -0.03, 2.40, 91, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.80, 97.12, 121.93, -0.03, 2.46, 93, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.90, 99.31, 121.93, -0.03, 2.51, 96, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.00, 101.53, 121.93, -0.03, 2.56, 98, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.10, 103.77, 121.93, -0.03, 2.62, 101, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.20, 106.03, 121.92, -33.00, 2.67, 104, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.30, 108.32, 121.92, -0.03, 2.72, 108, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.40, 110.64, 121.92, -0.03, 2.78, 112, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.50, 112.98, 121.92, -0.04, 2.83, 116, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.60, 115.36, 121.92, -0.04, 2.89, 120, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.70, 117.78, 121.92, -0.04, 2.95, 125, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.80, 120.23, 121.91, -0.04, 3.00, 130, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.90, 122.71, 121.91, -0.04, 3.06, 135, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.00, 125.24, 121.91, -0.04, 3.12, 141, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.10, 127.80, 121.91, -0.04, 3.18, 148, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.20, 130.41, 121.91, -0.04, 3.24, 154, 28 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.30, 133.06, 121.91, -0.04, 3.30, 161, 28 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.31, 133.41, 121.91, -0.04, 3.31, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.10, 20.15, 92.23, 0.00, 0 050, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.20, 40.31, 92.23, 0.00, 0.10, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.30, 60.46, 92.23, 0.00, 0.15, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.40, 80.62, 92.23, 0.00, 0.20, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.50, 100.77, 92.23, 0.00, 0.25, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.60, 120.92, 92.23, 0.00, 0.30, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.70, 141.08, 92.23, 0.00, 0.35, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.80, 161.23, 92.23, 0.00, 0.40, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 0.90, 181.38, 92.23, 0.00, 0.45, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 1.00, 201.54, 92.23, 0.00, 0.50, 1038, 11266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ДП' AND ship_id=2), 1.10, 221.69, 92.23, 0.00, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.10, 6.33, 75.21, 0.00, 0.05, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.20, 12.67, 75.21, 0.00, 0.10, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.30, 19.00, 75.21, 0.00, 0.15, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.40, 25.34, 75.21, 0.00, 0.20, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.50, 31.67, 75.21, 0.00, 0.25, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.60, 38.01, 75.21, 0.00, 0.30, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.70, 44.34, 75.21, 0.00, 0.35, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.80, 50.68, 75.21, 0.00, 0.40, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 0.90, 57.01, 75.21, 0.00, 0.45, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 1.00, 63.34, 75.21, 0.00, 0.50, 326, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 2 ДП' AND ship_id=2), 1.10, 69.68, 75.21, 0.00, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.10, 21.31, 57.45, 0.00, 0.05, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.20, 42.61, 57.45, 0.00, 0.10, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.30, 63.92, 57.45, 0.00, 0.15, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.40, 85.22, 57.45, 0.00, 0.20, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.50, 106.53, 57.45, 0.00, 0.25, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.60, 127.83, 57.45, 0.00, 0.30, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.70, 149.14, 57.45, 0.00, 0.35, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.80, 170.44, 57.45, 0.00, 0.40, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 0.90, 191.75, 57.45, 0.00, 0.45, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 1.00, 213.05, 57.45, 0.00, 0.50, 1097, 13310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 3 ДП' AND ship_id=2), 1.10, 234.36, 57.45, 0.00, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.10, 11.52, 36.36, 0.00, 0.05, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.20, 23.03, 36.36, 0.00, 0.10, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.30, 34.55, 36.36, 0.00, 0.15, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.40, 46.07, 36.36, 0.00, 0.20, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.50, 57.58, 36.36, 0.00, 0.25, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.60, 69.10, 36.36, 0.00, 0.30, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.70, 80.62, 36.36, 0.00, 0.35, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.80, 92.13, 36.36, 0.00, 0.40, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 0.90, 103.65, 36.36, 0.00, 0.45, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 1.00, 115.17, 36.36, 0.00, 0.50, 593, 2102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 ДП' AND ship_id=2), 1.10, 126.68, 36.36, 0.00, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.10, 5.36, 110.38, -2.18, 53.00, 147, 1221 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.20, 11.68, 110.45, -2.32, 0.11, 177, 1381 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.30, 18.50, 110.49, -2.41, 0.16, 199, 1485 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.40, 25.69, 110.53, -2.49, 0.21, 218, 1568 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.50, 33.18, 110.56, -2.55, 0.27, 235, 1638 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.60, 40.92, 110.58, -2.61, 0 320, 251, 1697 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.70, 48.89, 110.59, -2.65, 0.37, 266, 1747 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.80, 57.05, 110.61, -2.70, 0 428, 279, 1790 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 0.90, 65.38, 110.62, -2.74, 0.48, 290, 1827 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 1.00, 73.85, 110.63, -2.77, 0.54, 301, 1859 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 ЛБ' AND ship_id=2), 1.10, 82.46, 110.64, -2.81, 0.59, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.10, 5.37, 110.39, 2.16, 0.05, 148, 1224 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.20, 11.70, 110.46, 2.30, 0.11, 178, 1382 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.30, 18.52, 110.51, 2.40, 0.16, 200, 1487 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.40, 25.71, 110.54, 2.47, 0.21, 219, 1569 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.50, 33.20, 110.57, 2.54, 0.27, 237, 1638 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.60, 40.95, 110.59, 2.59, 0.32, 253, 1696 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.70, 48.91, 110.60, 2.64, 0.37, 268, 1746 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.80, 57.07, 110.62, 2.68, 0.43, 281, 1789 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 0.90, 65.39, 110.63, 2.72, 0.48, 293, 1825 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 1.00, 73.86, 110.64, 2.76, 0.54, 303, 1858 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №1 Пр.Б' AND ship_id=2), 1.10, 82.46, 110.65, 2.79, 0.59, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.10, 9.64, 86.11, -5.52, 0 051, 95, 7808 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.20, 20.05, 86.18, -5.59, 0.10, 111, 8287 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.30, 30.93, 86.23, -5.63, 0.16, 123, 8629 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.40, 42.14, 86.26, -5.67, 0.21, 132, 8892 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.50, 53.60, 86.29, -5.70, 0.26, 140, 9097 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.60, 65.27, 86.31, -5.72, 0 311, 146, 9255 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.70, 77.09, 86.33, -5.75, 0.36, 151, 9379 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.80, 89.02, 86.35, -5.77, 0.42, 154, 9477 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 0.90, 101.04, 86.37, -5.78, 0.47, 157, 9550 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 1.00, 113.11, 86.38, -5.79, 0.52, 159, 9602 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 ЛБ' AND ship_id=2), 1.10, 125.22, 86.40, -5.81, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.10, 9.64, 86.11, 5.52, 0.05, 95, 7808 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.20, 20.05, 86.18, 5.59, 0.10, 111, 8287 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.30, 30.93, 86.23, 5.63, 0.16, 123, 8629 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.40, 42.14, 86.26, 5.67, 0.21, 132, 8892 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.50, 53.60, 86.29, 5.70, 0.26, 140, 9097 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.60, 65.27, 86.31, 5.72, 0.31, 146, 9255 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.70, 77.09, 86.33, 5.75, 0.36, 151, 9379 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.80, 89.02, 86.35, 5.77, 0.42, 154, 9477 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 0.90, 101.04, 86.37, 5.78, 0.47, 157, 9550 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 1.00, 113.11, 86.38, 5.79, 0.52, 159, 9602 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №2 Пр.Б' AND ship_id=2), 1.10, 125.22, 86.40, 5.81, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.10, 8.38, 58.19, -5.58, 0.05, 86, 4891 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.20, 17.35, 58.19, -5.64, 0.10, 99, 5124 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.30, 26.67, 58.19, -5.68, 0.15, 109, 5286 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.40, 36.24, 58.19, -5.72, 0.21, 117, 5409 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.50, 46.00, 58.19, -5.74, 0.26, 123, 5503 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.60, 55.91, 58.19, -5.77, 0.31, 128, 5573 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.70, 65.93, 58.19, -5.79, 0.36, 131, 5627 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.80, 76.03, 58.19, -5.81, 0.41, 134, 5665 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 0.90, 86.18, 58.19, -5.82, 0.46, 135, 5686 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 1.00, 96.36, 58.19, -5.83, 0.52, 136, 5694 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 ЛБ' AND ship_id=2), 1.10, 106.55, 58.19, -5.84, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.10, 8.38, 58.19, 5.58, 0.05, 86, 4891 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.20, 17.35, 58.19, 5.64, 0.10, 99, 5124 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.30, 26.67, 58.19, 5.68, 0.15, 109, 5286 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.40, 36.24, 58.19, 5.72, 0.21, 117, 5409 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.50, 46.00, 58.19, 5.74, 0.26, 123, 5503 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.60, 55.91, 58.19, 5.77, 0.31, 128, 5573 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.70, 65.93, 58.19, 5.79, 0.36, 131, 5627 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.80, 76.03, 58.19, 5.81, 0.41, 134, 5665 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 0.90, 86.18, 58.19, 5.82, 0.46, 135, 5686 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 1.00, 96.36, 58.19, 5.83, 0.52, 136, 5694 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №3 Пр.Б' AND ship_id=2), 1.10, 106.55, 58.19, 5.84, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.10, 9.37, 31.32, -4.00, 0.05, 401, 5713 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.20, 19.67, 31.23, -4.09, 0.10, 434, 6066 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.30, 30.49, 31.18, -4.15, 0.16, 459, 6316 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.40, 41.70, 31.14, -4.20, 0.21, 479, 6511 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.50, 53.23, 31.11, -4.24, 0.26, 495, 6677 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.60, 65.01, 31.07, -4.27, 0.31, 509, 6814 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.70, 77.02, 31.04, -4.30, 0.37, 520, 6931 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.80, 89.21, 31.01, -4.33, 0.42, 529, 7032 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 0.90, 101.57, 30.99, -4.35, 0.47, 536, 7116 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 1.00, 114.07, 30.96, -4.37, 0.52, 542, 7186 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД №4 ЛБ' AND ship_id=2), 1.10, 126.68, 30.93, -4.39, 0.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.10, 9.37, 31.29, 3.99, 0.05, 405, 5718 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.20, 19.68, 31.21, 4.08, 0.10, 439, 6071 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.30, 30.51, 31.16, 4.14, 0.16, 463, 6318 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.40, 41.72, 31.12, 4.18, 0.21, 483, 6514 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.50, 53.24, 31.09, 4.22, 0.26, 500, 6678 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.60, 65.03, 31.05, 4.26, 0.31, 513, 6814 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.70, 77.03, 31.03, 4.29, 0.37, 525, 6931 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.80, 89.23, 31.00, 4.32, 0.42, 534, 7032 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 0.90, 101.59, 30.97, 4.34, 0.47, 541, 7115 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 1.00, 114.08, 30.94, 4.36, 0.52, 547, 7184 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД № 4 Пр.Б' AND ship_id=2), 1.10, 126.69, 30.91, 4.38, 0.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.10, 0.84, 112.45, -5.07, 1.15, 11, 144 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.20, 1.78, 112.45, -5.09, 1.20, 12, 160 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.30, 2.80, 112.45, -5.10, 1.26, 13, 174 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.40, 3.91, 112.46, -5.12, 1.31, 14, 186 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.50, 5.08, 112.47, -5.13, 1.37, 15, 198 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.60, 6.33, 112.47, -5.14, 1.42, 16, 209 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.70, 7.64, 112.48, -5.16, 1.48, 17, 219 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.80, 9.01, 112.49, -5.17, 1.54, 18, 228 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 0.90, 10.43, 112.50, -5.18, 1.59, 18, 236 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.00, 11.91, 112.50, -5.19, 1.65, 19, 244 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.10, 13.43, 112.51, -5.20, 1.71, 20, 251 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.20, 14.99, 112.52, -5.21, 1.76, 20, 258 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.30, 16.60, 112.52, -5.22, 1.82, 21, 264 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.40, 18.24, 112.53, -5.23, 1.88, 21, 270 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.50, 19.93, 112.54, -5.23, 1.93, 22, 276 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.60, 21.64, 112.54, -5.24, 1.99, 22, 281 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.70, 23.39, 112.55, -5.25, 2.05, 23, 286 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.80, 25.18, 112.55, -5.26, 2.10, 23, 291 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 1.90, 26.99, 112.55, -5.26, 2.16, 24, 296 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.00, 28.84, 112.56, -5.27, 2.22, 24, 300 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.10, 30.71, 112.56, -5.28, 2.28, 25, 305 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.20, 32.62, 112.56, -5.29, 2.33, 25, 309 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.30, 34.55, 112.57, -5.29, 2.39, 26, 314 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.40, 36.51, 112.57, -5.30, 2.45, 26, 318 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.50, 38.50, 112.57, -5.30, 2.50, 26, 322 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.60, 40.52, 112.58, -5.31, 2.56, 27, 327 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.70, 42.56, 112.58, -5.32, 2.62, 27, 331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.80, 44.64, 112.58, -5.32, 2.67, 28, 336 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 2.90, 46.74, 112.59, -5.33, 2.73, 28, 340 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.00, 48.88, 112.59, -5.33, 2.79, 28, 345 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.10, 51.04, 112.60, -5.34, 2.85, 29, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.20, 53.23, 112.60, -5.34, 2.91, 29, 355 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.30, 55.45, 112.61, -5.35, 2.96, 30, 360 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.40, 57.70, 112.61, -5.36, 3.02, 30, 365 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.50, 59.98, 112.62, -5.36, 3.08, 31, 371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.60, 62.30, 112.62, -5.37, 3.14, 31, 376 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.70, 64.65, 112.63, -5.37, 3.20, 31, 382 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.80, 67.03, 112.63, -5.38, 3.25, 32, 388 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 3.90, 69.44, 112.64, -5.38, 3.31, 32, 393 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.00, 71.88, 112.65, -5.39, 3.37, 33, 399 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.10, 74.36, 112.66, -5.39, 3.43, 33, 406 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.20, 76.88, 112.66, -5.39, 3.49, 34, 412 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.30, 79.43, 112.67, -5.40, 3.55, 34, 418 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.40, 82.02, 112.68, -5.40, 3.61, 35, 425 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.50, 84.65, 112.69, -5.41, 3.67, 35, 432 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.60, 87.31, 112.70, -5.41, 3.73, 36, 438 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.70, 90.01, 112.71, -5.42, 3.79, 36, 445 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.80, 92.75, 112.71, -5.42, 3.85, 37, 452 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 4.90, 95.54, 112.72, -5.43, 3.91, 37, 459 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.00, 98.36, 112.73, -5.43, 3.98, 37, 466 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.10, 101.22, 112.74, -5.44, 4.04, 38, 473 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.20, 104.13, 112.76, -5.44, 4.10, 38, 480 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.30, 105.31, 112.74, -5.45, 4.12, 4, 152 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.40, 106.28, 112.72, -5.47, 4.15, 5, 166 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.50, 107.29, 112.70, -5.48, 4.17, 5, 179 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.60, 108.34, 112.68, -5.49, 4.19, 5, 192 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.70, 109.43, 112.66, -5.50, 4.22, 6, 205 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.80, 110.57, 112.65, -5.51, 4.24, 6, 217 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 5.90, 111.75, 112.64, -5.53, 4.27, 6, 229 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.00, 112.98, 112.62, -5.54, 4.30, 6, 241 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.10, 114.25, 112.61, -5.55, 4.34, 7, 252 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.20, 115.56, 112.60, -5.56, 4.37, 7, 262 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.30, 116.92, 112.59, -5.58, 4.40, 7, 273 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.40, 118.33, 112.59, -5.59, 4.44, 7, 284 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.50, 119.78, 112.58, -5.60, 4.48, 8, 294 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.60, 121.28, 112.57, -5.62, 4.52, 8, 304 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.70, 122.82, 112.57, -5.63, 4.56, 8, 314 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.80, 124.42, 112.57, -5.64, 4.60, 8, 324 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 6.90, 126.06, 112.57, -5.66, 4.64, 8, 334 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.00, 127.75, 112.57, -5.67, 4.69, 8, 344 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.10, 129.49, 112.57, -5.68, 4.73, 9, 353 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.20, 131.28, 112.57, -5.70, 4.78, 9, 362 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.30, 133.12, 112.57, -5.71, 4.83, 9, 371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.40, 135.01, 112.58, -5.73, 4.88, 9, 380 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.50, 136.95, 112.58, -5.74, 4.93, 9, 389 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.60, 138.94, 112.59, -5.75, 4.99, 9, 397 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.70, 140.99, 112.59, -5.77, 5.04, 10, 406 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.80, 143.08, 112.60, -5.78, 5.10, 10, 414 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 7.90, 145.23, 112.61, -5.80, 5.15, 10, 422 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.00, 147.43, 112.62, -5.81, 5.21, 10, 430 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.10, 149.67, 112.63, -5.83, 5.27, 10, 437 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.20, 151.97, 112.64, -5.84, 5.33, 11, 445 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.30, 154.32, 112.66, -5.86, 5.39, 11, 452 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.40, 156.72, 112.67, -5.87, 5.46, 11, 460 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.50, 159.18, 112.68, -5.89, 5.52, 12, 467 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 ЛБ' AND ship_id=2), 8.55, 160.42, 112.69, -5.89, 5.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.10, 0.84, 112.45, 5.07, 1.15, 11, 144 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.20, 1.78, 112.45, 5.09, 1.20, 12, 160 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.30, 2.80, 112.45, 5.10, 1.26, 13, 174 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.40, 3.91, 112.46, 5.12, 1.31, 14, 186 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.50, 5.08, 112.47, 5.13, 1.37, 15, 198 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.60, 6.33, 112.47, 5.14, 1.42, 16, 209 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.70, 7.64, 112.48, 5.16, 1.48, 17, 219 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.80, 9.01, 112.49, 5.17, 1.54, 18, 228 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 0.90, 10.43, 112.50, 5.18, 1.59, 18, 236 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.00, 11.91, 112.50, 5.19, 1.65, 19, 244 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.10, 13.43, 112.51, 5.20, 1.71, 20, 251 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.20, 14.99, 112.52, 5.21, 1.76, 20, 258 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.30, 16.60, 112.52, 5.22, 1.82, 21, 264 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.40, 18.24, 112.53, 5.23, 1.88, 21, 270 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.50, 19.93, 112.54, 5.23, 1.93, 22, 276 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.60, 21.64, 112.54, 5.24, 1.99, 22, 281 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.70, 23.39, 112.55, 5.25, 2.05, 23, 286 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.80, 25.18, 112.55, 5.26, 2.10, 23, 291 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 1.90, 26.99, 112.55, 5.26, 2.16, 24, 296 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.00, 28.84, 112.56, 5.27, 2.22, 24, 300 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.10, 30.71, 112.56, 5.28, 2.28, 25, 305 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.20, 32.62, 112.56, 5.29, 2.33, 25, 309 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.30, 34.55, 112.57, 5.29, 2.39, 26, 314 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.40, 36.51, 112.57, 5.30, 2.45, 26, 318 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.50, 38.50, 112.57, 5.30, 2.50, 26, 322 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.60, 40.52, 112.58, 5.31, 2.56, 27, 327 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.70, 42.56, 112.58, 5.32, 2.62, 27, 331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.80, 44.64, 112.58, 5.32, 2.67, 28, 336 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 2.90, 46.74, 112.59, 5.33, 2.73, 28, 340 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.00, 48.88, 112.59, 5.33, 2.79, 28, 345 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.10, 51.04, 112.60, 5.34, 2.85, 29, 350 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.20, 53.23, 112.60, 5.34, 2.91, 29, 355 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.30, 55.45, 112.61, 5.35, 2.96, 30, 360 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.40, 57.70, 112.61, 5.36, 3.02, 30, 365 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.50, 59.98, 112.62, 5.36, 3.08, 31, 371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.60, 62.30, 112.62, 5.37, 3.14, 31, 376 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.70, 64.65, 112.63, 5.37, 3.20, 31, 382 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.80, 67.03, 112.63, 5.38, 3.25, 32, 388 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 3.90, 69.44, 112.64, 5.38, 3.31, 32, 393 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.00, 71.88, 112.65, 5.39, 3.37, 33, 399 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.10, 74.36, 112.66, 5.39, 3.43, 33, 406 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.20, 76.88, 112.66, 5.39, 3.49, 34, 412 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.30, 79.43, 112.67, 5.40, 3.55, 34, 418 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.40, 82.02, 112.68, 5.40, 3.61, 35, 425 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.50, 84.65, 112.69, 5.41, 3.67, 35, 432 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.60, 87.31, 112.70, 5.41, 3.73, 36, 438 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.70, 90.01, 112.71, 5.42, 3.79, 36, 445 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.80, 92.75, 112.71, 5.42, 3.85, 37, 452 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 4.90, 95.54, 112.72, 5.43, 3.91, 37, 459 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.00, 98.36, 112.73, 5.43, 3.98, 37, 466 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.10, 101.22, 112.74, 5.44, 4.04, 38, 473 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.20, 104.13, 112.76, 5.44, 4.10, 38, 480 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.30, 105.31, 112.74, 5.45, 4.12, 4, 152 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.40, 106.28, 112.72, 5.47, 4.15, 5, 166 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.50, 107.29, 112.70, 5.48, 4.17, 5, 179 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.60, 108.34, 112.68, 5.49, 4.19, 5, 192 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.70, 109.43, 112.66, 5.50, 4.22, 6, 205 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.80, 110.57, 112.65, 5.51, 4.24, 6, 217 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 5.90, 111.75, 112.64, 5.53, 4.27, 6, 229 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.00, 112.98, 112.62, 5.54, 4.30, 6, 241 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.10, 114.25, 112.61, 5.55, 4.34, 7, 252 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.20, 115.56, 112.60, 5.56, 4.37, 7, 262 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.30, 116.92, 112.59, 5.58, 4.40, 7, 273 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.40, 118.33, 112.59, 5.59, 4.44, 7, 284 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.50, 119.78, 112.58, 5.60, 4.48, 8, 294 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.60, 121.28, 112.57, 5.62, 4.52, 8, 304 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.70, 122.82, 112.57, 5.63, 4.56, 8, 314 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.80, 124.42, 112.57, 5.64, 4.60, 8, 324 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 6.90, 126.06, 112.57, 5.66, 4.64, 8, 334 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.00, 127.75, 112.57, 5.67, 4.69, 8, 344 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.10, 129.49, 112.57, 5.68, 4.73, 9, 353 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.20, 131.28, 112.57, 5.70, 4.78, 9, 362 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.30, 133.12, 112.57, 5.71, 4.83, 9, 371 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.40, 135.01, 112.58, 5.73, 4.88, 9, 380 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.50, 136.95, 112.58, 5.74, 4.93, 9, 389 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.60, 138.94, 112.59, 5.75, 4.99, 9, 397 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.70, 140.99, 112.59, 5.77, 5.04, 10, 406 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.80, 143.08, 112.60, 5.78, 5.10, 10, 414 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 7.90, 145.23, 112.61, 5.80, 5.15, 10, 422 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.00, 147.43, 112.62, 5.81, 5.21, 10, 430 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.10, 149.67, 112.63, 5.83, 5.27, 10, 437 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.20, 151.97, 112.64, 5.84, 5.33, 11, 445 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.30, 154.32, 112.66, 5.86, 5.39, 11, 452 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.40, 156.72, 112.67, 5.87, 5.46, 11, 460 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.50, 159.18, 112.68, 5.89, 5.52, 12, 467 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №1 Пр.Б' AND ship_id=2), 8.55, 160.42, 112.69, 5.89, 5.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.10, 4.23, 87.28, -7.24, 1.15, 6, 3793 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.20, 8.48, 87.33, -7.24, 1.20, 6, 3849 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.30, 12.76, 87.38, -7.24, 1.25, 6, 3897 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.40, 17.07, 87.42, -7.24, 1.30, 6, 3939 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.50, 21.39, 87.45, -7.24, 1.35, 6, 3974 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.60, 25.73, 87.49, -7.25, 1.40, 6, 4004 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.70, 30.08, 87.52, -7.25, 1.45, 6, 4030 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.80, 34.45, 87.54, -7.25, 1.50, 6, 4053 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 0.90, 38.82, 87.57, -7.25, 1.55, 6, 4074 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.00, 43.20, 87.59, -7.25, 1.60, 6, 4092 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.10, 47.59, 87.61, -7.25, 1.65, 6, 4108 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.20, 51.99, 87.63, -7.25, 1.70, 6, 4122 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.30, 56.39, 87.65, -7.25, 1.76, 6, 4135 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.40, 60.80, 87.67, -7.25, 1.81, 6, 4146 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.50, 65.22, 87.68, -7.25, 1.86, 6, 4157 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.60, 69.63, 87.70, -7.25, 1.91, 6, 4166 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.70, 74.06, 87.71, -7.25, 1.96, 6, 4175 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.80, 78.48, 87.73, -7.25, 2.01, 6, 4184 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 1.90, 82.91, 87.74, -7.25, 2.06, 6, 4192 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.00, 87.34, 87.75, -7.25, 2.11, 6, 4199 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.10, 91.78, 87.76, -7.25, 2.16, 6, 4206 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.20, 96.22, 87.77, -7.25, 2.21, 6, 4213 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.30, 100.66, 87.78, -7.25, 2.26, 7, 4220 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.40, 105.10, 87.79, -7.26, 2.31, 7, 4227 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.50, 109.55, 87.80, -7.26, 2.36, 7, 4233 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.60, 114.00, 87.81, -7.26, 2.41, 7, 4239 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.70, 118.45, 87.82, -7.26, 2.46, 7, 4245 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.80, 122.90, 87.82, -7.26, 2.51, 7, 4250 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 2.90, 127.36, 87.83, -7.26, 2.56, 7, 4256 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.00, 131.82, 87.84, -7.26, 2.61, 7, 4261 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.10, 136.28, 87.85, -7.26, 2.66, 7, 4266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.20, 140.74, 87.85, -7.26, 2.71, 7, 4271 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.30, 145.21, 87.86, -7.26, 2.76, 7, 4276 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.40, 149.68, 87.87, -7.26, 2.81, 7, 4281 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.50, 154.14, 87.87, -7.26, 2.86, 7, 4285 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.60, 158.61, 87.88, -7.26, 2.91, 7, 4290 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.70, 163.09, 87.89, -7.26, 2.96, 7, 4294 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.80, 167.56, 87.89, -7.26, 3.01, 7, 4297 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 3.90, 172.03, 87.90, -7.26, 3.06, 7, 4301 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.00, 176.51, 87.90, -7.26, 3.12, 7, 4304 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.10, 180.99, 87.91, -7.26, 3.17, 7, 4307 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.20, 185.47, 87.91, -7.26, 3.22, 7, 4310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.30, 189.95, 87.92, -7.26, 3.27, 7, 4312 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.40, 194.43, 87.92, -7.26, 3.32, 7, 4315 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.50, 198.91, 87.93, -7.26, 3.37, 7, 4317 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.60, 203.39, 87.93, -7.26, 3.42, 7, 4319 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.70, 207.87, 87.94, -7.26, 3.47, 7, 4321 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.80, 212.36, 87.94, -7.26, 3.52, 7, 4323 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 4.90, 216.84, 87.95, -7.26, 3.57, 7, 4324 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.00, 221.33, 87.95, -7.26, 3.62, 7, 4326 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.10, 225.81, 87.95, -7.26, 3.67, 7, 4327 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.20, 230.30, 87.96, -7.26, 3.72, 7, 4328 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.30, 234.78, 87.96, -7.26, 3.77, 7, 4329 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.40, 239.27, 87.97, -7.26, 3.82, 7, 4330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.50, 243.76, 87.97, -7.26, 3.87, 7, 4331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.60, 248.24, 87.97, -7.26, 3.92, 7, 4331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.70, 252.73, 87.98, -7.26, 3.97, 7, 4332 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.80, 257.22, 87.98, -7.26, 4.02, 7, 4332 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 5.90, 261.70, 87.98, -7.26, 4.07, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.00, 266.19, 87.99, -7.26, 4.12, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.10, 270.68, 87.99, -7.26, 4.17, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.20, 275.17, 87.99, -7.26, 4.22, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.30, 279.66, 87.99, -7.26, 4.27, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.40, 284.14, 88.00, -7.26, 4.32, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.50, 288.63, 88.00, -7.26, 4.37, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.60, 293.12, 88.00, -7.26, 4.42, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.70, 297.61, 88.00, -7.26, 4.47, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.80, 302.09, 88.01, -7.26, 4.52, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 6.90, 306.58, 88.01, -7.26, 4.57, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.00, 311.07, 88.01, -7.26, 4.62, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.10, 315.56, 88.01, -7.26, 4.67, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.20, 320.05, 88.01, -7.26, 4.72, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.30, 324.53, 88.02, -7.26, 4.77, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.40, 329.02, 88.02, -7.26, 4.82, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.50, 333.51, 88.02, -7.26, 4.87, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.60, 338.00, 88.02, -7.26, 4.92, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.70, 342.48, 88.02, -7.26, 4.97, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.80, 346.97, 88.03, -7.26, 5.02, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 7.90, 351.46, 88.03, -7.26, 5.07, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.00, 355.95, 88.03, -7.26, 5.12, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.10, 360.44, 88.03, -7.26, 5.17, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.20, 364.92, 88.03, -7.26, 5.22, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.30, 369.41, 88.03, -7.26, 5.27, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.40, 373.90, 88.04, -7.26, 5.33, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.50, 378.39, 88.04, -7.26, 5.38, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 ЛБ' AND ship_id=2), 8.55, 380.63, 88.04, -7.26, 5.400, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.10, 4.23, 87.28, 7.24, 1.15, 6, 3793 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.20, 8.48, 87.33, 7.24, 1.20, 6, 3849 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.30, 12.76, 87.38, 7.24, 1.25, 6, 3897 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.40, 17.07, 87.42, 7.24, 1.30, 6, 3939 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.50, 21.39, 87.45, 7.24, 1.35, 6, 3974 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.60, 25.73, 87.49, 7.25, 1.40, 6, 4004 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.70, 30.08, 87.52, 7.25, 1.45, 6, 4030 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.80, 34.45, 87.54, 7.25, 1.50, 6, 4053 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 0.90, 38.82, 87.57, 7.25, 1.55, 6, 4074 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.00, 43.20, 87.59, 7.25, 1.60, 6, 4092 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.10, 47.59, 87.61, 7.25, 1.65, 6, 4108 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.20, 51.99, 87.63, 7.25, 1.70, 6, 4122 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.30, _ 56.393, 87.65, 7.25, 1.76, 6, 4135 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.40, 60.80, 87.67, 7.25, 1.81, 6, 4146 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.50, 65.22, 87.68, 7.25, 1.86, 6, 4157 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.60, 69.63, 87.70, 7.25, 1.91, 6, 4166 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.70, 74.055, 87.71, 7.25, 1.96, 6, 4175 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.80, 78.48, 87.73, 7.25, 2.01, 6, 4184 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 1.90, 82.91, 87.74, 7.25, 2.06, 6, 4192 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.00, 87.34, 87.75, 7.25, 2.11, 6, 4199 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.10, 91.78, 87.76, 7.25, 2.16, 6, 4206 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.20, 96.22, 87.77, 7.25, 2.21, 6, 4213 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.30, 100.66, 87.78, 7.25, 2.26, 7, 4220 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.40, 105.10, 87.79, 7.26, 2.31, 7, 4227 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.50, 109.55, 87.80, 7.26, 2.36, 7, 4233 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.60, 114.00, 87.81, 7.26, 2.41, 7, 4239 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.70, 118.45, 87.82, 7.26, 2.46, 7, 4245 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.80, 122.90, 87.82, 7.26, 2.51, 7, 4250 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 2.90, 127.36, 87.83, 7.26, 2.56, 7, 4256 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.00, 131.82, 87.84, 7.26, 2.61, 7, 4261 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.10, 136.28, 87.85, 7.26, 2.66, 7, 4266 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.20, 140.74, 87.85, 7.26, 2.71, 7, 4271 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.30, 145.21, 87.86, 7.26, 2.76, 7, 4276 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.40, 149.68, 87.87, 7.26, 2.81, 7, 4281 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.50, 154.14, 87.87, 7.26, 2.86, 7, 4285 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.60, 158.61, 87.88, 7.26, 2.91, 7, 4290 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.70, 163.09, 87.89, 7.26, 2.96, 7, 4294 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.80, 167.56, 87.89, 7.26, 3.01, 7, 4297 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 3.90, 172.03, 87.90, 7.26, 3.06, 7, 4301 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.00, 176.51, 87.90, 7.26, 3.12, 7, 4304 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.10, 180.99, 87.91, 7.26, 3.17, 7, 4307 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.20, 185.47, 87.91, 7.26, 3.22, 7, 4310 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.30, 189.95, 87.92, 7.26, 3.27, 7, 4312 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.40, 194.43, 87.92, 7.26, 3.32, 7, 4315 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.50, 198.91, 87.93, 7.26, 3.37, 7, 4317 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.60, 203.39, 87.93, 7.26, 3.42, 7, 4319 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.70, 207.87, 87.94, 7.26, 3.47, 7, 4321 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.80, 212.36, 87.94, 7.26, 3.52, 7, 4323 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 4.90, 216.84, 87.95, 7.26, 3.57, 7, 4324 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.00, 221.33, 87.95, 7.26, 3.62, 7, 4326 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.10, 225.81, 87.95, 7.26, 3.67, 7, 4327 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.20, 230.30, 87.96, 7.26, 3.72, 7, 4328 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.30, 234.78, 87.96, 7.26, 3.77, 7, 4329 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.40, 239.27, 87.97, 7.26, 3.82, 7, 4330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.50, 243.76, 87.97, 7.26, 3.87, 7, 4331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.60, 248.24, 87.97, 7.26, 3.92, 7, 4331 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.70, 252.73, 87.98, 7.26, 3.97, 7, 4332 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.80, 257.22, 87.98, 7.26, 4.02, 7, 4332 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 5.90, 261.70, 87.98, 7.26, 4.07, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.00, 266.19, 87.99, 7.26, 4.12, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.10, 270.68, 87.99, 7.26, 4.17, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.20, 275.17, 87.99, 7.26, 4.22, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.30, 279.66, 87.99, 7.26, 4.27, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.40, 284.14, 88.00, 7.26, 4.32, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.50, 288.63, 88.00, 7.26, 4.37, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.60, 293.12, 88.00, 7.26, 4.42, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.70, 297.61, 88.00, 7.26, 4.47, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.80, 302.09, 88.01, 7.26, 4.52, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 6.90, 306.58, 88.01, 7.26, 4.57, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.00, 311.07, 88.01, 7.26, 4.62, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.10, 315.56, 88.01, 7.26, 4.67, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.20, 320.05, 88.01, 7.26, 4.72, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.30, 324.53, 88.02, 7.26, 4.77, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.40, 329.02, 88.02, 7.26, 4.82, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.50, 333.51, 88.02, 7.26, 4.87, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.60, 338.00, 88.02, 7.26, 4.92, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.70, 342.48, 88.02, 7.26, 4.97, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.80, 346.97, 88.03, 7.26, 5.02, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 7.90, 351.46, 88.03, 7.26, 5.07, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.00, 355.95, 88.03, 7.26, 5.12, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.10, 360.44, 88.03, 7.26, 5.17, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.20, 364.92, 88.03, 7.26, 5.22, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.30, 369.41, 88.03, 7.26, 5.27, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.40, 373.90, 88.04, 7.26, 5.33, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.50, 378.39, 88.04, 7.26, 5.38, 7, 4333 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №2 Пр.Б' AND ship_id=2), 8.55, 380.63, 88.04, 7.26, 5.40, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.10, 3.03, 59.67, -7.27, 1.16, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.20, 6.06, 59.67, -7.27, 1.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.30, 9.10, 59.67, -7.27, 1.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.40, 12.13, 59.67, -7.27, 1.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.50, 15.16, 59.67, -7.27, 1.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.60, 18.19, 59.67, -7.27, 1.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.70, 21.22, 59.67, -7.27, 1.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.80, 24.26, 59.67, -7.27, 1.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 0.90, 27.29, 59.67, -7.27, 1.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.00, 30.32, 59.67, -7.27, 1.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.10, 33.35, 59.67, -7.27, 1.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.20, 36.38, 59.67, -7.27, 1.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.30, 39.41, 59.67, -7.27, 1.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.40, 42.45, 59.67, -7.27, 1.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.50, 45.48, 59.67, -7.27, 1.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.60, 48.51, 59.67, -7.27, 1.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.70, 51.54, 59.67, -7.27, 1.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.80, 54.57, 59.67, -7.27, 2.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 1.90, 57.61, 59.67, -7.27, 2.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.00, 60.64, 59.67, -7.27, 2.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.10, 63.67, 59.67, -7.27, 2.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.20, 66.70, 59.67, -7.27, 2.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.30, 69.73, 59.67, -7.27, 2.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.40, 72.76, 59.67, -7.27, 2.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.50, 75.80, 59.67, -7.27, 2.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.60, 78.83, 59.67, -7.27, 2.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.70, 81.86, 59.67, -7.27, 2.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.80, 84.89, 59.67, -7.27, 2.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 2.90, 87.92, 59.67, -7.27, 2.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.00, 90.96, 59.67, -7.27, 2.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.10, 93.99, 59.67, -7.27, 2.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.20, 97.02, 59.67, -7.27, 2.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.30, 100.05, 59.67, -7.27, 2.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.40, 103.08, 59.67, -7.27, 2.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.50, 106.11, 59.67, -7.27, 2.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.60, 109.15, 59.67, -7.27, 2.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.70, 112.18, 59.67, -7.27, 2.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.80, 115.21, 59.67, -7.27, 3.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 3.90, 118.24, 59.67, -7.27, 3.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.00, 121.27, 59.67, -7.27, 3.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.10, 124.31, 59.67, -7.27, 3.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.20, 127.34, 59.67, -7.27, 3.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.30, 130.37, 59.67, -7.27, 3.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.40, 133.40, 59.67, -7.27, 3.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.50, 136.43, 59.67, -7.27, 3.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.60, 139.46, 59.67, -7.27, 3.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.70, 142.50, 59.67, -7.27, 3.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.80, 145.53, 59.67, -7.27, 3.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 4.90, 148.56, 59.67, -7.27, 3.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.00, 151.59, 59.67, -7.27, 3.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.10, 154.62, 59.67, -7.27, 3.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.20, 157.66, 59.67, -7.27, 3.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.30, 160.69, 59.67, -7.27, 3.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.40, 163.72, 59.67, -7.27, 3.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.50, 166.75, 59.67, -7.27, 3.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.60, 169.78, 59.67, -7.27, 3.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.70, 172.82, 59.67, -7.27, 3.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.80, 175.85, 59.67, -7.27, 4.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 5.90, 178.88, 59.67, -7.27, 4.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.00, 181.91, 59.67, -7.27, 4.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.10, 184.94, 59.67, -7.27, 4.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.20, 187.97, 59.67, -7.27, 4.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.30, 191.01, 59.67, -7.27, 4.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.40, 194.04, 59.67, -7.27, 4.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.50, 197.07, 59.67, -7.27, 4.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.60, 200.10, 59.67, -7.27, 4.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.70, 203.13, 59.67, -7.27, 4.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.80, 206.17, 59.67, -7.27, 4.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 6.90, 209.20, 59.67, -7.27, 4.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.00, 212.23, 59.67, -7.27, 4.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.10, 215.26, 59.67, -7.27, 4.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.20, 218.29, 59.67, -7.27, 4.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.30, 221.32, 59.67, -7.27, 4.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.40, 224.36, 59.67, -7.27, 4.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.50, 227.39, 59.67, -7.27, 4.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.60, 230.42, 59.67, -7.27, 4.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.70, 233.45, 59.67, -7.27, 4.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.80, 236.48, 59.67, -7.27, 5.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 7.90, 239.52, 59.67, -7.27, 5.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.00, 242.55, 59.67, -7.27, 5.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.10, 245.58, 59.67, -7.27, 5.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.20, 248.61, 59.67, -7.27, 5.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.30, 251.64, 59.67, -7.27, 5.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.40, 254.67, 59.67, -7.27, 5.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.50, 257.71, 59.67, -7.27, 5.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 ЛБ' AND ship_id=2), 8.55, 259.22, 59.67, -7.27, 5.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.10, 3.03, 59.67, 7.27, 1.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.20, 6.06, 59.67, 7.27, 1.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.30, 9.10, 59.67, 7.27, 1.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.40, 12.13, 59.67, 7.27, 1.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.50, 15.16, 59.67, 7.27, 1.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.60, 18.19, 59.67, 7.27, 1.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.70, 21.22, 59.67, 7.27, 1.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.80, 24.26, 59.67, 7.27, 1.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 0.90, 27.29, 59.67, 7.27, 1.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.00, 30.32, 59.67, 7.27, 1.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.10, 33.35, 59.67, 7.27, 1.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.20, 36.38, 59.67, 7.27, 1.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.30, 39.41, 59.67, 7.27, 1.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.40, 42.45, 59.67, 7.27, 1.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.50, 45.48, 59.67, 7.27, 1.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.60, 48.51, 59.67, 7.27, 1.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.70, 51.54, 59.67, 7.27, 1.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.80, 54.57, 59.67, 7.27, 2.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 1.90, 57.61, 59.67, 7.27, 2.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.00, 60.64, 59.67, 7.27, 2.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.10, 63.67, 59.67, 7.27, 2.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.20, 66.70, 59.67, 7.27, 2.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.30, 69.73, 59.67, 7.27, 2.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.40, 72.76, 59.67, 7.27, 2.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.50, 75.80, 59.67, 7.27, 2.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.60, 78.83, 59.67, 7.27, 2.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.70, 81.86, 59.67, 7.27, 2.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.80, 84.89, 59.67, 7.27, 2.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 2.90, 87.92, 59.67, 7.27, 2.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.00, 90.96, 59.67, 7.27, 2.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.10, 93.99, 59.67, 7.27, 2.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.20, 97.02, 59.67, 7.27, 2.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.30, 100.05, 59.67, 7.27, 2.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.40, 103.08, 59.67, 7.27, 2.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.50, 106.11, 59.67, 7.27, 2.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.60, 109.15, 59.67, 7.27, 2.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.70, 112.18, 59.67, 7.27, 2.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.80, 115.21, 59.67, 7.27, 3.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 3.90, 118.24, 59.67, 7.27, 3.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.00, 121.27, 59.67, 7.27, 3.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.10, 124.31, 59.67, 7.27, 3.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.20, 127.34, 59.67, 7.27, 3.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.30, 130.37, 59.67, 7.27, 3.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.40, 133.40, 59.67, 7.27, 3.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.50, 136.43, 59.67, 7.27, 3.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.60, 139.46, 59.67, 7.27, 3.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.70, 142.50, 59.67, 7.27, 3.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.80, 145.53, 59.67, 7.27, 3.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 4.90, 148.56, 59.67, 7.27, 3.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.00, 151.59, 59.67, 7.27, 3.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.10, 154.62, 59.67, 7.27, 3.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.20, 157.66, 59.67, 7.27, 3.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.30, 160.69, 59.67, 7.27, 3.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.40, 163.72, 59.67, 7.27, 3.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.50, 166.75, 59.67, 7.27, 3.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.60, 169.78, 59.67, 7.27, 3.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.70, 172.82, 59.67, 7.27, 3.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.80, 175.85, 59.67, 7.27, 4.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 5.90, 178.88, 59.67, 7.27, 4.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.00, 181.91, 59.67, 7.27, 4.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.10, 184.94, 59.67, 7.27, 4.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.20, 187.97, 59.67, 7.27, 4.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.30, 191.01, 59.67, 7.27, 4.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.40, 194.04, 59.67, 7.27, 4.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.50, 197.07, 59.67, 7.27, 4.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.60, 200.10, 59.67, 7.27, 4.40, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.70, 203.13, 59.67, 7.27, 4.45, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.80, 206.17, 59.67, 7.27, 4.50, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 6.90, 209.20, 59.67, 7.27, 4.55, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.00, 212.23, 59.67, 7.27, 4.60, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.10, 215.26, 59.67, 7.27, 4.65, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.20, 218.29, 59.67, 7.27, 4.70, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.30, 221.32, 59.67, 7.27, 4.75, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.40, 224.36, 59.67, 7.27, 4.80, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.50, 227.39, 59.67, 7.27, 4.85, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.60, 230.42, 59.67, 7.27, 4.90, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.70, 233.45, 59.67, 7.27, 4.95, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.80, 236.48, 59.67, 7.27, 5.00, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 7.90, 239.52, 59.67, 7.27, 5.05, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.00, 242.55, 59.67, 7.27, 5.10, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.10, 245.58, 59.67, 7.27, 5.15, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.20, 248.61, 59.67, 7.27, 5.20, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.30, 251.64, 59.67, 7.27, 5.25, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.40, 254.67, 59.67, 7.27, 5.30, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.50, 257.71, 59.67, 7.27, 5.35, 5, 1330 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №3 Пр.Б' AND ship_id=2), 8.55, 259.22, 59.67, 7.27, 5.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.10, 1.57, 42.28, -7.27, 1.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.20, 3.13, 42.28, -7.27, 1.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.30, 4.70, 42.28, -7.27, 1.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.40, 6.26, 42.28, -7.27, 1.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.50, 7.83, 42.28, -7.27, 1.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.60, 9.39, 42.28, -7.27, 1.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.70, 10.96, 42.28, -7.27, 1.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.80, 12.52, 42.28, -7.27, 1.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 0.90, 14.09, 42.28, -7.27, 1.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.00, 15.65, 42.28, -7.27, 1.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.10, 17.22, 42.28, -7.27, 1.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.20, 18.78, 42.28, -7.27, 1.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.30, 20.35, 42.28, -7.27, 1.75, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.40, 21.91, 42.28, -7.27, 1.80, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.50, 23.48, 42.28, -7.27, 1.85, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.60, 25.04, 42.28, -7.27, 1.90, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.70, 26.61, 42.28, -7.27, 1.95, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.80, 28.17, 42.28, -7.27, 2.00, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 1.90, 29.74, 42.28, -7.27, 2.05, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.00, 31.30, 42.28, -7.27, 2.10, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.10, 32.87, 42.28, -7.27, 2.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.20, 34.44, 42.28, -7.27, 2.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.30, 36.00, 42.28, -7.27, 2.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.40, 37.57, 42.28, -7.27, 2.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.50, 39.13, 42.28, -7.27, 2.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.60, 40.70, 42.28, -7.27, 2.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.70, 42.26, 42.28, -7.27, 2.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.80, 43.83, 42.28, -7.27, 2.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 2.90, 45.39, 42.28, -7.27, 2.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.00, 46.96, 42.28, -7.27, 2.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.10, 48.52, 42.28, -7.27, 2.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.20, 50.09, 42.28, -7.27, 2.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.30, 51.65, 42.28, -7.27, 2.75, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.40, 53.22, 42.28, -7.27, 2.80, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.50, 54.78, 42.28, -7.27, 2.85, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.60, 56.35, 42.28, -7.27, 2.90, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.70, 57.91, 42.28, -7.27, 2.95, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.80, 59.48, 42.28, -7.27, 3.00, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 3.90, 61.04, 42.28, -7.27, 3.05, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.00, 62.61, 42.28, -7.27, 3.10, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.10, 64.17, 42.28, -7.27, 3.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.20, 65.74, 42.28, -7.27, 3.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.30, 67.30, 42.28, -7.27, 3.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.40, 68.87, 42.28, -7.27, 3.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.50, 70.44, 42.28, -7.27, 3.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.60, 72.00, 42.28, -7.27, 3.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.70, 73.57, 42.28, -7.27, 3.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.80, 75.13, 42.28, -7.27, 3.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 4.90, 76.70, 42.28, -7.27, 3.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.00, 78.26, 42.28, -7.27, 3.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.10, 79.83, 42.28, -7.27, 3.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.20, 81.39, 42.28, -7.27, 3.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.30, 84.97, 41.93, -7.27, 3.81, 6, 2801 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.40, 88.86, 41.56, -7.27, 3.93, 6, 2807 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.50, 92.74, 41.23, -7.27, 4.04, 6, 2813 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.60, 96.63, 40.91, -7.27, 4.14, 6, 2818 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.70, 100.53, 40.62, -7.27, 4.24, 6, 2823 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.80, 104.42, 40.36, -7.27, 4.34, 6, 2827 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 5.90, 108.32, 40.11, -7.27, 4.43, 6, 2831 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.00, 112.22, 39.88, -7.27, 4.53, 6, 2834 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.10, 116.12, 39.66, -7.27, 4.61, 6, 2837 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.20, 120.03, 39.46, -7.27, 4.70, 6, 2840 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.30, 123.93, 39.27, -7.27, 4.78, 6, 2843 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.40, 127.84, 39.09, -7.27, 4.86, 6, 2845 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.50, 131.74, 38.92, -7.27, 4.94, 6, 2847 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.60, 135.65, 38.76, -7.27, 5.02, 6, 2849 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.70, 139.56, 38.61, -7.27, 5.10, 6, 2850 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.80, 143.47, 38.47, -7.27, 5.17, 6, 2851 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 6.90, 147.38, 38.34, -7.27, 5.25, 6, 2852 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.00, 151.29, 38.21, -7.27, 5.32, 6, 2853 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.10, 155.20, 38.09, -7.27, 5.39, 6, 2854 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.20, 159.11, 37.97, -7.27, 5.46, 6, 2855 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.30, 163.03, 37.86, -7.27, 5.53, 6, 2855 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.40, 166.94, 37.76, -7.27, 5.60, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.50, 170.85, 37.66, -7.27, 5.67, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.60, 174.76, 37.56, -7.27, 5.73, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.70, 178.68, 37.47, -7.27, 5.80, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.80, 182.59, 37.39, -7.27, 5.87, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 7.90, 186.50, 37.30, -7.27, 5.93, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.00, 190.41, 37.22, -7.27, 5.99, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.10, 194.33, 37.15, -7.27, 6.06, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.20, 198.24, 37.07, -7.27, 6.12, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.30, 202.15, 37.00, -7.27, 6.18, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.40, 206.07, 36.93, -7.27, 6.25, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.50, 209.98, 36.87, -7.27, 6.31, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 ЛБ' AND ship_id=2), 8.55, 211.94, 36.83, -7.27, 6.34, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.10, 1.57, 42.28, 7.27, 1.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.20, 3.13, 42.28, 7.27, 1.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.30, 4.70, 42.28, 7.27, 1.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.40, 6.26, 42.28, 7.27, 1.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.50, 7.83, 42.28, 7.27, 1.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.60, 9.39, 42.28, 7.27, 1.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.70, 10.96, 42.28, 7.27, 1.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.80, 12.52, 42.28, 7.27, 1.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 0.90, 14.09, 42.28, 7.27, 1.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.00, 15.65, 42.28, 7.27, 1.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.10, 17.22, 42.28, 7.27, 1.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.20, 18.78, 42.28, 7.27, 1.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.30, 20.35, 42.28, 7.27, 1.75, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.40, 21.91, 42.28, 7.27, 1.80, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.50, 23.48, 42.28, 7.27, 1.85, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.60, 25.34, 42.28, 7.27, 1.90, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.70, 26.61, 42.28, 7.27, 1.95, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.80, 28.17, 42.28, 7.27, 2.00, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 1.90, 29.74, 42.28, 7.27, 2.05, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.00, 31.30, 42.28, 7.27, 2.10, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.10, 32.87, 42.28, 7.27, 2.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.20, 34.44, 42.28, 7.27, 2.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.30, 36.00, 42.28, 7.27, 2.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.40, 37.57, 42.28, 7.27, 2.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.50, 39.13, 42.28, 7.27, 2.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.60, 40.70, 42.28, 7.27, 2.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.70, 42.26, 42.28, 7.27, 2.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.80, 43.83, 42.28, 7.27, 2.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 2.90, 45.39, 42.28, 7.27, 2.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.00, 46.96, 42.28, 7.27, 2.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.10, 48.52, 42.28, 7.27, 2.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.20, 50.09, 42.28, 7.27, 2.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.30, 51.65, 42.28, 7.27, 2.75, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.40, 53.22, 42.28, 7.27, 2.80, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.50, 54.78, 42.28, 7.27, 2.85, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.60, 56.35, 42.28, 7.27, 2.90, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.70, 57.91, 42.28, 7.27, 2.95, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.80, 59.48, 42.28, 7.27, 3.00, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 3.90, 61.04, 42.28, 7.27, 3.05, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.00, 62.61, 42.28, 7.27, 3.10, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.10, 64.17, 42.28, 7.27, 3.15, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.20, 65.74, 42.28, 7.27, 3.20, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.30, 67.30, 42.28, 7.27, 3.25, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.40, 68.87, 42.28, 7.27, 3.30, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.50, 70.44, 42.28, 7.27, 3.35, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.600, 72.00, 42.28, 7.27, 3.40, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.70, 73.57, 42.28, 7.27, 3.45, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.80, 75.13, 42.28, 7.27, 3.50, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 4.90, 76.70, 42.28, 7.27, 3.55, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.00, 78.26, 42.28, 7.27, 3.60, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.10, 79.83, 42.28, 7.27, 3.65, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.20, 81.39, 42.28, 7.27, 3.70, 2, 183 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.30, 84.97, 41.93, 7.27, 3.81, 6, 2801 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.40, 88.86, 41.56, 7.27, 3.93, 6, 2807 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.50, 92.74, 41.23, 7.27, 4.04, 6, 2813 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.60, 96.63, 40.91, 7.27, 4.14, 6, 2818 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.70, 100.53, 40.62, 7.27, 4.24, 6, 2823 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.80, 104.42, 40.36, 7.27, 4.34, 6, 2827 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 5.90, 108.32, 40.11, 7.27, 4.43, 6, 2831 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.00, 112.22, 39.88, 7.27, 4.53, 6, 2834 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.10, 116.12, 39.66, 7.27, 4.61, 6, 2837 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.20, 120.03, 39.46, 7.27, 4.70, 6, 2840 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.30, 123.93, 39.27, 7.27, 4.78, 6, 2843 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.40, 127.84, 39.09, 7.27, 4.86, 6, 2845 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.50, 131.74, 38.92, 7.27, 4.94, 6, 2847 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.60, 135.65, 38.76, 7.27, 5.02, 6, 2849 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.70, 139.56, 38.61, 7.27, 5.10, 6, 2850 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.80, 143.47, 38.47, 7.27, 5.17, 6, 2851 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 6.90, 147.38, 38.34, 7.27, 5.25, 6, 2852 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.00, 151.29, 38.21, 7.27, 5.32, 6, 2853 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.10, 155.20, 38.09, 7.27, 5.39, 6, 2854 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.20, 159.11, 37.97, 7.27, 5.46, 6, 2855 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.30, 163.03, 37.86, 7.27, 5.53, 6, 2855 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.40, 166.94, 37.76, 7.27, 5.60, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.50, 170.85, 37.66, 7.27, 5.67, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.60, 174.76, 37.56, 7.27, 5.73, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.70, 178.68, 37.47, 7.27, 5.80, 6, 2856 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.80, 182.59, 37.39, 7.27, 5.87, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 7.90, 186.50, 37.30, 7.27, 5.93, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.00, 190.41, 37.22, 7.27, 5.99, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.10, 194.33, 37.15, 7.27, 6.06, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.20, 198.24, 37.07, 7.27, 6.12, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.30, 202.15, 37.00, 7.27, 6.18, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.40, 206.07, 36.93, 7.27, 6.25, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.50, 209.98, 36.87, 7.27, 6.31, 6, 2857 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №4 Пр.Б' AND ship_id=2), 8.55, 211.94, 36.83, 7.27, 6.34, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.10, 1.46, 29.64, -6.86, 1.15, 9, 358 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.20, 3.01, 29.46, -6.84, 1.20, 10, 395 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.30, 4.64, 29.30, -6.83, 1.25, 11, 427 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.40, 6.35, 29.16, -6.82, 1.31, 12, 456 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.50, 8.14, 29.03, -6.82, 1.36, 12, 481 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.60, 9.99, 28.90, -6.81, 1.41, 13, 505 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.70, 11.91, 28.79, -6.80, 1.47, 13, 526 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.80, 13.89, 28.68, -6.80, 1.52, 13, 546 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 0.90, 15.92, 28.58, -6.79, 1.58, 14, 565 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.00, 18.01, 28.48, -6.79, 1.63, 14, 582 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.10, 20.16, 28.40, -6.79, 1.69, 14, 598 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.20, 22.35, 28.31, -6.79, 1.74, 15, 614 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.30, 24.59, 28.23, -6.78, 1.80, 15, 628 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.40, 26.87, 28.15, -6.78, 1.85, 15, 642 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.50, 29.20, 28.08, -6.78, 1.91, 15, 656 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.60, 31.57, 28.01, -6.78, 1.97, 15, 668 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.70, 33.98, 27.94, -6.78, 2.02, 15, 680 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.80, 36.43, 27.88, -6.78, 2.08, 15, 691 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 1.90, 38.92, 27.82, -6.78, 2.13, 16, 702 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.00, 41.44, 27.76, -6.78, 2.19, 16, 712 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.10, 43.99, 27.70, -6.78, 2.24, 16, 722 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.20, 46.57, 27.64, -6.78, 2.30, 16, 732 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.30, 49.19, 27.59, -6.78, 2.36, 16, 741 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.40, 51.83, 27.54, -6.78, 2.41, 16, 749 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.50, 54.50, 27.49, -6.78, 2.47, 16, 758 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.60, 57.20, 27.45, -6.79, 2.52, 16, 766 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.70, 59.23, 27.48, -6.80, 2.57, 3, 414 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.80, 61.20, 27.51, -6.81, 2.61, 3, 428 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 2.90, 63.20, 27.55, -6.83, 2.65, 3, 441 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.00, 65.21, 27.57, -6.84, 2.69, 3, 453 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.10, 67.25, 27.60, -6.85, 2.74, 3, 464 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.20, 69.31, 27.62, -6.86, 2.78, 3, 474 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.30, 71.38, 27.63, -6.87, 2.83, 3, 484 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.40, 73.48, 27.65, -6.88, 2.87, 3, 494 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.50, 75.59, 27.66, -6.89, 2.92, 3, 502 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.60, 77.71, 27.67, -6.90, 2.97, 3, 511 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.70, 79.85, 27.68, -6.91, 3.02, 3, 518 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.80, 82.00, 27.69, -6.92, 3.06, 3, 525 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 3.90, 84.16, 27.70, -6.93, 3.11, 3, 532 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.00, 86.34, 27.70, -6.93, 3.16, 3, 538 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.10, 88.52, 27.70, -6.94, 3.21, 3, 544 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.20, 90.72, 27.71, -6.95, 3.26, 3, 549 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.30, 92.93, 27.71, -6.96, 3.31, 3, 554 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.40, 95.14, 27.71, -6.96, 3.36, 3, 559 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.50, 97.36, 27.71, -6.97, 3.41, 3, 563 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.60, 99.59, 27.71, -6.98, 3.46, 3, 567 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.70, 101.83, 27.71, -6.98, 3.51, 3, 570 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.80, 104.07, 27.71, -6.99, 3.56, 3, 574 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 4.90, 106.32, 27.71, -6.99, 3.61, 3, 577 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 ЛБ' AND ship_id=2), 5.00, 108.57, 27.71, -7.00, 3.66, 3, 580;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.10, 1.46, 29.64, 6.86, 1.15, 9, 358 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.20, 3.01, 29.46, 6.84, 1.20, 10, 395 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.30, 4.64, 29.30, 6.83, 1.25, 11, 427 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.40, 6.35, 29.16, 6.82, 1.31, 12, 456 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.50, 8.14, 29.03, 6.82, 1.36, 12, 481 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.60, 9.99, 28.90, 6.81, 1.41, 13, 505 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.70, 11.91, 28.79, 6.80, 1.47, 13, 526 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.80, 13.89, 28.68, 6.80, 1.52, 13, 546 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 0.90, 15.92, 28.58, 6.79, 1.58, 14, 565 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.00, 18.01, 28.48, 6.79, 1.63, 14, 582 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.10, 20.16, 28.40, 6.79, 1.69, 14, 598 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.20, 22.35, 28.31, 6.79, 1.74, 15, 614 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.30, 24.59, 28.23, 6.78, 1.80, 15, 628 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.40, 26.87, 28.15, 6.78, 1.85, 15, 642 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.50, 29.20, 28.08, 6.78, 1.91, 15, 656 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.60, 31.57, 28.01, 6.78, 1.97, 15, 668 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.70, 33.98, 27.94, 6.78, 2.02, 15, 680 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 1.90, 38.92, 27.82, 6.78, 2.13, 16, 702 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.00, 41.44, 27.76, 6.78, 2.19, 16, 712 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.10, 43.99, 27.70, 6.78, 2.24, 16, 722 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.20, 46.57, 27.64, 6.78, 2.30, 16, 732 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.30, 49.19, 27.59, 6.78, 2.36, 16, 741 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.40, 51.83, 27.54, 6.78, 2.41, 16, 749 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.50, 54.50, 27.49, 6.78, 2.47, 16, 758 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.60, 57.20, 27.45, 6.79, 2.52, 16, 766 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.70, 59.23, 27.48, 6.80, 2.57, 3, 414 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.80, 61.20, 27.51, 6.81, 2.61, 3, 428 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 2.90, 63.20, 27.55, 6.83, 2.65, 3, 441 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.00, 65.21, 27.57, 6.84, 2.69, 3, 453 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.10, 67.25, 27.60, 6.85, 2.74, 3, 464 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.20, 69.31, 27.62, 6.86, 2.78, 3, 474 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.30, 71.38, 27.63, 6.87, 2.83, 3, 484 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.40, 73.48, 27.65, 6.88, 2.87, 3, 494 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.50, 75.59, 27.66, 6.89, 2.92, 3, 502 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.60, 77.71, 27.67, 6.90, 2.97, 3, 511 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.70, 79.85, 27.68, 6.91, 3.02, 3, 518 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.80, 82.00, 27.69, 6.92, 3.06, 3, 525 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 3.90, 84.16, 27.70, 6.93, 3.11, 3, 532 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.00, 86.34, 27.70, 6.93, 3.16, 3, 538 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.10, 88.52, 27.70, 6.94, 3.21, 3, 544 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.20, 90.72, 27.71, 6.95, 3.26, 3, 549 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.30, 92.93, 27.71, 6.96, 3.31, 3, 554 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.40, 95.14, 27.71, 6.96, 3.36, 3, 559 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.50, 97.36, 27.71, 6.97, 3.41, 3, 563 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.60, 99.59, 27.71, 6.98, 3.46, 3, 567 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.70, 101.83, 27.71, 6.98, 3.51, 3, 570 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.80, 104.07, 27.71, 6.99, 3.56, 3, 574 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 4.90, 106.32, 27.71, 6.99, 3.61, 3, 577 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 5.00, 108.57, 27.71, 7.00, 3.66, 3, 580 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 5.10, 110.83, 27.70, 7.00, 3.71, 3, 582 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 5.20, 113.10, 27.70, 7.01, 3.76, 3, 585 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №5 Пр.Б' AND ship_id=2), 5.21, 113.39, 27.70, 7.01, 3.77, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.00, 0 000, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.10, 0.00, 15.73, -3.96, 1.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.20, 0.00, 15.69, -3.98, 1.73, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.30, 0.01, 15.66, -3.99, 1.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.40, 17.00, 15.62, -4.01, 1.88, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.50, 31.00, 15.58, -4.02, 1.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.60, 0.05, 15.55, -4.04, 2.03, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.70, 0.08, 15.51, -4.06, 2.11, 0, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.80, 0.11, 15.48, -4.08, 2.18, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 0.90, 0.15, 15.44, -4.10, 2.26, 1, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.00, 0.57, 16.68, -4.45, 2.47, 1, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.10, 1.02, 16.86, -4.52, 2.55, 1, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.20, 1.50, 16.91, -4.55, 2.62, 1, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.30, 2.02, 16.92, -4.58, 2.68, 1, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.40, 2.59, 16.92, -4.60, 2.74, 2, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.50, 3.19, 16.90, -4.62, 2.80, 2, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.60, 3.83, 16.88, -4.64, 2.86, 2, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.70, 4.52, 16.85, -4.66, 2.92, 2, 13 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.80, 5.26, 16.82, -4.68, 2.98, 3, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 1.90, 6.04, 16.79, -4.69, 3.04, 3, 16 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.00, 6.87, 16.76, -4.71, 3.10, 3, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.10, 7.75, 16.72, -4.73, 3.16, 4, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.20, 8.68, 16.69, -4.75, 3.23, 4, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.30, 9.65, 16.66, -4.77, 3.29, 4, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.40, 10.67, 16.63, -4.78, 3.35, 5, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.50, 11.74, 16.60, -4.80, 3.42, 5, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.60, 12.85, 16.57, -4.82, 3.48, 6, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.70, 14.01, 16.54, -4.84, 3.54, 6, 28 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.80, 15.21, 16.51, -4.86, 3.61, 7, 30 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 2.90, 16.46, 16.49, -4.88, 3.67, 7, 31 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.00, 17.75, 16.46, -4.90, 3.73, 8, 32 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.10, 19.09, 16.44, -4.92, 3.80, 8, 34 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.20, 20.46, 16.42, -4.95, 3.86, 9, 35 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.30, 21.88, 16.40, -4.97, 3.93, 10, 36 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.40, 23.34, 16.37, -4.99, 3.99, 10, 37 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.50, 24.84, 16.36, -5.01, 4.05, 11, 38 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.60, 26.37, 16.34, -5.03, 4.12, 12, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.70, 27.94, 16.32, -5.05, 4.18, 12, 40 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.80, 29.55, 16.30, -5.07, 4.25, 13, 41 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 3.90, 31.19, 16.29, -5.09, 4.31, 14, 42 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.00, 32.86, 16.27, -5.11, 4.37, 14, 43 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.10, 34.56, 16.25, -5.13, 4.44, 15, 44 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.20, 36.30, 16.24, -5.15, 4.50, 16, 45 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.30, 38.06, 16.23, -5.17, 4.56, 16, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.40, 39.85, 16.21, -5.18, 4.62, 17, 47 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.50, 41.66, 16.20, -5.20, 4.69, 18, 47 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.60, 43.50, 16.19, -5.22, 4.75, 18, 48 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.70, 45.36, 16.18, -5.24, 4.81, 19, 49 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.80, 46.24, 16.18, -5.26, 4.84, 3, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 4.90, 47.00, 16.19, -5.28, 4.86, 3, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.00, 47.79, 16.19, -5.30, 4.89, 3, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.10, 48.62, 16.19, -5.33, 4.92, 3, 30 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.20, 49.47, 16.19, -5.35, 4.95, 3, 33 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.30, 50.36, 16.19, -5.37, 4.99, 3, 36 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.40, 51.27, 16.19, -5.40, 5.02, 4, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.50, 52.22, 16.19, -5.42, 5.06, 4, 41 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.60, 53.19, 16.18, -5.45, 5.10, 4, 43 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.70, 54.18, 16.18, -5.47, 5.14, 4, 45 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.80, 55.20, 16.17, -5.50, 5.18, 4, 47 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 5.90, 56.24, 16.16, -5.52, 5.22, 4, 49 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.00, 57.30, 16.16, -5.54, 5.26, 4, 51 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.10, 58.38, 16.15, -5.57, 5.31, 4, 52 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.20, 59.48, 16.14, -5.59, 5.35, 4, 54 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.30, 60.60, 16.13, -5.62, 5.40, 5, 55 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.40, 61.73, 16.12, -5.64, 5.44, 5, 56 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.50, 62.87, 16.11, -5.66, 5.49, 5, 57 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.60, 64.03, 16.10, -5.68, 5.54, 5, 58 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.70, 65.21, 16.09, -5.71, 5.59, 5, 59 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.80, 66.39, 16.08, -5.73, 5.64, 5, 60 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 6.90, 67.59, 16.07, -5.75, 5.69, 5, 61 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.00, 68.79, 16.06, -5.77, 5.74, 5, 62 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.10, 70.00, 16.05, -5.79, 5.79, 5, 62 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.20, 71.22, 16.04, -5.81, 5.84, 5, 63 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.30, 72.45, 16.03, -5.83, 5.89, 5, 63 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.40, 73.69, 16.02, -5.85, 5.94, 5, 64 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.50, 74.93, 16.01, -5.87, 5.99, 5, 64 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.60, 76.17, 16.00, -5.88, 6.04, 5, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.70, 77.42, 15.99, -5.90, 6.10, 6, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.80, 78.68, 15.98, -5.92, 6.15, 6, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 7.90, 79.93, 15.97, -5.93, 6.20, 6, 66 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 8.00, 81.19, 15.96, -5.95, 6.25, 6, 66 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 ЛБ' AND ship_id=2), 8.05, 81.82, 15.96, -5.96, 6.28, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.10, 0.00, 15.73, 3.96, 1.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.20, 0.00, 15.69, 3.98, 1.73, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.30, 0.01, 15.66, 3.99, 1.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.40, 0.02, 15.62, 4.01, 1.88, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.50, 0.03, 15.58, 4.02, 1.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.60, 0.05, 15.55, 4.04, 2.03, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.70, 0.08, 15.51, 4.06, 2.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.80, 0.11, 15.48, 4.08, 2.18, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 0.90, 0.15, 15.44, 4.10, 2.26, 1, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.00, 0.57, 16.68, 4.45, 2.47, 1, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.10, 1.02, 16.86, 4.52, 2.55, 1, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.20, 1.51, 16.91, 4.55, 2.62, 1, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.30, 2.03, 16.92, 4.58, 2.68, 1, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.40, 2.59, 16.92, 4.60, 2.74, 2, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.50, 3.20, 16.90, 4.62, 2.80, 2, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.60, 3.84, 16.88, 4.64, 2.86, 2, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.70, 4.53, 16.85, 4.66, 2.92, 2, 13 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.80, 5.27, 16.82, 4.68, 2.98, 3, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 1.90, 6.06, 16.79, 4.69, 3.04, 3, 17 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.00, 6.90, 16.75, 4.71, 3.10, 3, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.10, 7.79, 16.71, 4.73, 3.16, 4, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.20, 8.74, 16.67, 4.74, 3.23, 4, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.30, 9.75, 16.63, 4.76, 3.29, 5, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.40, 10.81, 16.59, 4.78, 3.36, 5, 31 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.50, 11.94, 16.54, 4.79, 3.42, 6, 35 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.60, 13.13, 16.49, 4.81, 3.49, 6, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.70, 14.39, 16.44, 4.83, 3.56, 7, 44 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.80, 15.73, 16.39, 4.84, 3.62, 8, 49 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 2.90, 17.13, 16.34, 4.86, 3.69, 8, 54 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.00, 18.60, 16.29, 4.88, 3.76, 9, 59 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.10, 20.14, 16.23, 4.90, 3.83, 10, 64 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.20, 21.75, 16.18, 4.91, 3.90, 10, 69 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.30, 23.43, 16.13, 4.93, 3.96, 11, 73 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.40, 25.17, 16.08, 4.95, 4.03, 12, 77 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.50, 26.97, 16.04, 4.97, 4.10, 13, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.60, 28.84, 15.99, 4.99, 4.17, 14, 85 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.70, 30.77, 15.95, 5.00, 4.236, 14, 89 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.80, 32.76, 15.90, 5.02, 4.30, 15, 93 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 3.90, 34.80, 15.86, 5.04, 4.37, 16, 96 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.00, 36.90, 15.82, 5.06, 4.44, 17, 99 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.10, 39.06, 15.79, 5.08, 4.51, 18, 102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.20, 41.26, 15.75, 5.10, 4.57, 19, 105 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.30, 43.51, 15.72, 5.12, 4.64, 20, 108 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.40, 45.81, 15.69, 5.14, 4.70, 20, 111 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.50, 48.15, 15.65, 5.15, 4.77, 21, 113 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.60, 50.53, 15.63, 5.17, 4.83, 22, 116 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.70, 52.96, 15.60, 5.19, 4.90, 23, 118 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.80, 54.31, 15.62, 5.20, 4.94, 24, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 4.90, 55.52, 15.65, 5.21, 4.97, 24, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.00, 56.77, 15.67, 5.22, 5.00, 25, 32 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.10, 58.05, 15.69, 5.23, 5.04, 26, 36 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.20, 59.36, 15.71, 5.25, 5.08, 26, 39 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.30, 60.71, 15.73, 5.26, 5.12, 27, 43 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.40, 62.08, 15.75, 5.27, 5.16, 28, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.50, 63.48, 15.77, 5.28, 5.20, 28, 49 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.60, 64.91, 15.78, 5.30, 5.24, 29, 52 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.70, 66.36, 15.79, 5.31, 5.29, 30, 54 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.80, 67.83, 15.80, 5.33, 5.33, 30, 57 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 5.90, 69.33, 15.81, 5.34, 5.38, 31, 59 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.00, 70.85, 15.82, 5.35, 5.42, 31, 61 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.10, 72.39, 15.83, 5.37, 5.47, 32, 63 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.20, 73.95, 15.84, 5.38, 5.52, 32, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.30, 75.52, 15.85, 5.40, 5.57, 33, 67 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.40, 77.11, 15.85, 5.41, 5.62, 33, 68 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.50, 78.71, 15.86, 5.42, 5.67, 33, 70 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.60, 80.33, 15.86, 5.44, 5.72, 34, 71 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.70, 81.96, 15.87, 5.45, 5.77, 34, 72 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.80, 83.61, 15.87, 5.47, 5.82, 34, 74 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 6.90, 85.26, 15.87, 5.48, 5.87, 35, 75 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.00, 86.92, 15.88, 5.49, 5.92, 35, 76 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.10, 88.59, 15.88, 5.50, 5.97, 35, 76 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.20, 90.27, 15.88, 5.52, 6.02, 35, 77 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.30, 91.96, 15.88, 5.53, 6.07, 35, 78 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.40, 93.65, 15.88, 5.54, 6.13, 36, 79 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.50, 95.35, 15.88, 5.55, 6.18, 36, 79 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.60, 97.05, 15.89, 5.56, 6.23, 36, 80 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.70, 98.76, 15.89, 5.57, 6.28, 36, 80 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.80, 100.47, 15.89, 5.58, 6.34, 36, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 7.90, 102.19, 15.89, 5.59, 6.39, 36, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 8.00, 103.91, 15.89, 5.60, 6.44, 36, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №6 Пр.Б' AND ship_id=2), 8.05, 104.77, 15.89, 5.61, 6.47, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.10, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.20, 0.00, 9.47, -2.21, 3.33, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.30, 0 001, 9.45, -2.23, 3.40, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.40, 3.00, 9.42, -2.24, 3.48, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.50, 7.00, 9.38, -2.26, 3.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.60, 14.00, 9.35, -2.28, 3.63, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.70, 26.00, 9.32, -2.30, 3.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.80, 0.05, 9.28, -2.32, 3.79, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 0.90, 0.07, 9.24, -2.34, 3.87, 6, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.00, 0.11, 9.20, -2.37, 3.95, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.10, 0.16, 9.16, -2.40, 4.03, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.20, 0.23, 9.11, -2.43, 4.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.30, 0.31, 9.06, -2.46, 4.19, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.30, 0.42, 9.01, -2.49, 4.27, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.40, 0.57, 8.96, -2.53, 4.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.50, 0.74, 8.90, -2.57, 4.44, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.60, 0.96, 8.84, -2.61, 4.52, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.70, 1.22, 8.77, -2.65, 4.60, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.80, 1.54, 8.70, -2.69, 4.68, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 1.90, 1.92, 8.63, -2.73, 4.77, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.00, 2.36, 8.55, -2.78, 4.85, 1, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.10, 2.87, 8.48, -2.82, 4.93, 2, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.20, 3.45, 8.41, -2.87, 5.01, 2, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.30, 4.09, 8.36, -2.92, 5.09, 3, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.40, 4.79, 8.31, -2.97, 5.16, 4, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.50, 5.56, 8.26, -3.02, 5.24, 4, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.60, 6.39, 8.22, -3.07, 5.31, 5, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.70, 7.28, 8.19, -3.12, 5.38, 6, 9 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.80, 8.22, 8.16, -3.17, 5.45, 7, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 2.90, 9.21, 8.13, -3.22, 5.52, 8, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 3.00, 10.26, 8.10, -3.27, 5.59, 9, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 ЛБ' AND ship_id=2), 3.06, 10.95, 8.09, -3.30, 5.64, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.10, 0.00, 9.47, 2.21, 3.33, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.20, 0.00, 9.45, 2.23, 3.40, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.30, 0.00, 9.42, 2.24, 3.48, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.40, 0.01, 9.38, 2.26, 3.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.50, 0.01, 9.35, 2.28, 3.63, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.60, 0.03, 9.32, 2.30, 3.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.70, 0.05, 9.28, 2.32, 3.79, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.80, 0.07, 9.24, 2.34, 3.87, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 0.90, 0.11, 9.20, 2.37, 3.95, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.00, 0.16, 9.16, 2.40, 4.03, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.10, 0.23, 9.11, 2.43, 4.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.20, 0.31, 9.06, 2.46, 4.19, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.30, 0.42, 9.01, 2.49, 4.27, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.40, 0.57, 8.96, 2.53, 4.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.50, 0.74, 8.90, 2.57, 4.44, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.60, 0.96, 8.84, 2.61, 4.52, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.70, 1.22, 8.77, 2.65, 4.60, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.80, 1.54, 8.70, 2.69, 4.68, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 1.90, 1.92, 8.63, 2.73, 4.77, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.00, 2.36, 8.55, 2.78, 4.85, 1, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.10, 2.87, 8.48, 2.82, 4.93, 2, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.20, 3.45, 8.41, 2.87, 5.01, 2, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.30, 4.09, 8.36, 2.92, 5.09, 3, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.40, 4.79, 8.31, 2.97, 5.16, 4, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.50, 5.56, 8.26, 3.02, 5.24, 4, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.60, 6.39, 8.22, 3.07, 5.31, 5, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.70, 7.28, 8.19, 3.12, 5.38, 6, 9 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.80, 8.22, 8.16, 3.17, 5.45, 7, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 2.90, 9.21, 8.13, 3.22, 5.52, 8, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 3.00, 10.26, 8.10, 3.27, 5.59, 9, 11 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк №7 Пр.Б' AND ship_id=2), 3.06, 10.95, 8.09, 3.30, 5.64, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.10, 1.37, 2.15, -3.3G8, 7.30, 9, 50 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.20, 2.84, 2.09, -3.39, 7.35, 10, 57 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.30, 4.41, 2.04, -3.41, 7.41, 11, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.40, 6.08, 1.99, -3.43, 7.46, 12, 71 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.50, 7.84, 1.94, -3.45, 7.51, 14, 77 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.60, 9.68, 1.90, -3.47, 7.57, 15, 83 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.70, 11.60, 1.87, -3.49, 7.62, 16, 88 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.80, 13.60, 1.84, -3.51, 7.68, 18, 93 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.90, 15.68, 1.80, -3.53, 7.73, 19, 98 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.00, 17.83, 1.78, -3.55, 7.79, 21, 102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.10, 20.05, 1.75, -3.57, 7.85, 22, 107 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.20, 22.34, 1.73, -3.60, 7.90, 23, 111 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.30, 24.70, 1.70, -3.62, 7.96, 25, 115 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.40, 27.13, 1.68, -3.64, 8.02, 27, 119 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.50, 29.61, 1.66, -3.66, 8.08, 28, 123 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.60, 32.16, 1.64, -3.68, 8.13, 30, 127 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.70, 34.77, 1.62, -3.70, 8.19, 31, 131 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.80, 37.45, 1.61, -3.72, 8.25, 33, 135 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.90, 40.17, 1.59, -3.74, 8.31, 35, 138 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.00, 42.96, 1.57, -3.76, 8.36, 36, 142 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.10, 45.81, 1.56, -3.78, 8.42, 38, 146 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.20, 48.70, 1.54, -3.79, 8.48, 40, 149 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.30, 51.66, 1.53, -3.81, 8.54, 42, 152 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.40, 54.66, 1.52, -3.83, 8.60, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.10, 1.37, 2.15, 3.37, 7.30, 9, 50 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.20, 2.84, 2.09, 3.39, 7.35, 10, 57 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.30, 4.41, 2.04, 3.41, 7.41, 11, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.40, 6.08, 1.99, 3.43, 7.46, 12, 71 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.50, 7.84, 1.94, 3.45, 7.51, 14, 77 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.60, 9.68, 1.90, 3.47, 7.57, 15, 83 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.70, 11.60, 1.87, 3.49, 7.62, 16, 88 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.80, 13.60, 1.84, 3.51, 7.68, 18, 93 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.90, 15.68, 1.80, 3.53, 7.73, 19, 98 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.00, 17.83, 1.78, 3.55, 7.79, 21, 102 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.10, 20.05, 1.75, 3.57, 7.85, 22, 107 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.20, 22.34, 1.73, 3.60, 7.90, 23, 111 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.30, 24.70, 1.70, 3.62, 7.96, 25, 115 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.40, 27.13, 1.68, 3.64, 8.02, 27, 119 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.50, 29.61, 1.66, 3.66, 8.08, 28, 123 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.60, 32.16, 1.64, 3.68, 8.13, 30, 127 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.70, 34.77, 1.62, 3.70, 8.19, 31, 131 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.80, 37.45, 1.61, 3.72, 8.25, 33, 135 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.90, 40.17, 1.59, 3.74, 8.31, 35, 138 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.00, 42.96, 1.57, 3.76, 8.36, 36, 142 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.10, 45.81, 1.56, 3.78, 8.42, 38, 146 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.20, 48.70, 1.54, 3.79, 8.48, 40, 149 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.30, 51.66, 1.53, 3.81, 8.54, 42, 152 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.40, 54.66, 1.52, 3.83, 8.60, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.10, 0.62, 17.50, -0.22, 6.36, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.20, 1.24, 17.50, -0.22, 6.41, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.30, 1.86, 17.50, -0.22, 6.46, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.40, 2.48, 17.50, -0.22, 6.51, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.50, 3.10, 17.50, -0.22, 6.56, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.60, 3.72, 17.50, -0.22, 6.61, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.70, 4.34, 17.50, -0.22, 6.66, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.80, 4.96, 17.50, -0.22, 6.71, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.90, 5.58, 17.50, -0.22, 6.76, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.00, 6.21, 17.50, -0.22, 6.81, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.10, 6.83, 17.50, -0.22, 6.86, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.20, 7.45, 17.50, -0.22, 6.91, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.30, 8.07, 17.50, -0.22, 6.96, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.40, 8.69, 17.50, -0.22, 7.01, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.50, 9.31, 17.50, -0.22, 7.06, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.60, 9.93, 17.50, -0.22, 7.11, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.70, 10.55, 17.50, -0.22, 7.16, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.80, 11.17, 17.50, -0.22, 7.21, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.90, 11.79, 17.50, -0.22, 7.26, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.00, 12.41, 17.50, -0.22, 7.31, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.10, 13.03, 17.50, -0.22, 7.36, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.20, 13.65, 17.50, -0.22, 7.41, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.30, 14.27, 17.50, -0.22, 7.46, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.40, 14.89, 17.50, -0.22, 7.51, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.50, 15.51, 17.50, -0.22, 7.56, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.60, 16.13, 17.50, -0.22, 7.61, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.70, 16.75, 17.50, -0.22, 7.66, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.80, 17.37, 17.50, -0.22, 7.71, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.90, 17.99, 17.50, -0.22, 7.76, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.00, 18.62, 17.50, -0.22, 7.81, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.10, 19.24, 17.50, -0.22, 7.86, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.20, 19.86, 17.50, -0.22, 7.91, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.30, 20.48, 17.50, -0.22, 7.96, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.34, 20.71, 17.50, -0.22, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.10, 0.54, 17.37, -3.80, 6.36, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.20, 1.08, 17.37, -3.80, 6.41, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.30, 1.61, 17.37, -3.80, 6.46, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.40, 2.15, 17.37, -3.80, 6.51, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.50, 2.69, 17.37, -3.80, 6.56, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.60, 3.22, 17.37, -3.80, 6.61, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.70, 3.76, 17.37, -3.80, 6.66, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.80, 4.30, 17.37, -3.80, 6.71, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.90, 4.84, 17.37, -3.80, 6.76, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.00, 5.37, 17.37, -3.80, 6.81, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.10, 5.91, 17.37, -3.80, 6.86, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.20, 6.45, 17.37, -3.80, 6.91, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.30, 6.98, 17.37, -3.80, 6.96, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.40, 7.52, 17.37, -3.80, 7.01, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.50, 8.06, 17.37, -3.80, 7.06, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.60, 8.60, 17.37, -3.80, 7.11, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.70, 9.13, 17.37, -3.80, 7.16, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.80, 9.67, 17.37, -3.80, 7.21, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.90, 10.21, 17.37, -3.80, 7.26, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.00, 10.75, 17.37, -3.80, 7.31, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.10, 11.28, 17.37, -3.80, 7.36, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.20, 11.82, 17.37, -3.80, 7.41, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.30, 12.36, 17.37, -3.80, 7.46, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.40, 12.89, 17.37, -3.80, 7.51, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.50, 13.43, 17.37, -3.80, 7.56, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.60, 13.97, 17.37, -3.80, 7.61, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.70, 14.51, 17.37, -3.80, 7.66, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.80, 15.04, 17.37, -3.80, 7.71, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.90, 15.58, 17.37, -3.80, 7.76, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.00, 16.12, 17.37, -3.80, 7.81, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.10, 16.66, 17.37, -3.80, 7.86, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.20, 17.19, 17.37, -3.80, 7.91, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.30, 17.73, 17.37, -3.80, 7.96, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.34, 17.93, 17.37, -3.80, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.10, 1.08, 17.20, 0 000, 0.05, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.20, 2.16, 17.20, 0 000, 0.10, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.30, 3.24, 17.20, 0.00, 0.15, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.40, 4.32, 17.20, 0 000, 0.20, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.50, 5.40, 17.20, 0 000, 0.25, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.60, 6.48, 17.20, 0 000, 0.30, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.70, 7.57, 17.20, 0 000, 0.35, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.80, 8.65, 17.20, 0 000, 0.40, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.90, 9.73, 17.20, 0 000, 0.45, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 1.00, 10.81, 17.20, 0 000, 0.50, 14, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 1.10, 11.89, 17.20, 0.00, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.10, 0.18, 10.20, -4.60, 6.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.20, 0.37, 10.20, -4.60, 6.41, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.30, 0.55, 10.20, -4.60, 6.46, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.40, 0.73, 10.20, -4.60, 6.51, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.50, 0.92, 10.20, -4.60, 6.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.60, 1.10, 10.20, -4.60, 6.61, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.70, 1.28, 10.20, -4.60, 6.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.80, 1.47, 10.20, -4.60, 6.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.90, 1.65, 10.20, -4.60, 6.76, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.00, 1.83, 10.20, -4.60, 6.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.10, 2.02, 10.20, -4.60, 6.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.20, 2.20, 10.20, -4.60, 6.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.30, 2.38, 10.20, -4.60, 6.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.40, 2.56, 10.20, -4.60, 7.01, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.50, 2.75, 10.20, -4.60, 7.06, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.60, 2.93, 10.20, -4.60, 7.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.70, 3.11, 10.20, -4.60, 7.16, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.80, 3.30, 10.20, -4.60, 7.21, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.90, 3.48, 10.20, -4.60, 7.26, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.00, 3.66, 10.20, -4.60, 7.31, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.10, 3.85, 10.20, -4.60, 7.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.20, 4.03, 10.20, -4.60, 7.41, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.30, 4.21, 10.20, -4.60, 7.46, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.40, 4.40, 10.20, -4.60, 7.51, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.50, 4.58, 10.20, -4.60, 7.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.60, 4.76, 10.20, -4.60, 7.61, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.70, 4.95, 10.20, -4.60, 7.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.80, 5.13, 10.20, -4.60, 7.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.90, 5.31, 10.20, -4.60, 7.76, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.00, 5.50, 10.20, -4.60, 7.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.10, 5.68, 10.20, -4.60, 7.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.20, 5.86, 10.20, -4.60, 7.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.30, 6.04, 10.20, -4.60, 7.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.34, 6.11, 10.20, -4.60, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.10, 0.19, 15.13, 1.34, 0.05, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.20, 0.44, 15.13, 1.43, 0.11, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.30, 0.71, 15.12, 1.50, 0.16, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.40, 1.00, 15.12, 1.55, 0.22, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.50, 1.31, 15.12, 1.60, 0.27, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.60, 1.63, 15.12, 1.64, 0.33, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.70, 1.97, 15.12, 1.68, 0.38, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.80, 2.33, 15.12, 1.71, 0.44, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 0.90, 2.69, 15.12, 1.74, 0.49, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.00, 3.06, 15.12, 1.77, 0.55, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.10, 3.44, 15.12, 1.80, 0.61, 3, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.20, 3.82, 15.12, 1.82, 0.66, 3, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.30, 4.22, 15.12, 1.85, 0.72, 3, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.40, 4.62, 15.12, 1.87, 0.77, 3, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.50, 5.03, 15.12, 1.89, 0.83, 3, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля 1' AND ship_id=2), 1.60, 5.45, 15.12, 1.91, 0.88, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.10, 0.33, 7.56, -4.77, 6.36, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.20, 0.70, 7.57, -4.82, 6.42, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.30, 1.12, 7.57, -4.86, 6.47, 2, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.40, 1.58, 7.57, -4.90, 6.53, 2, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.50, 2.08, 7.58, -4.93, 6.58, 2, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.60, 2.61, 7.58, -4.97, 6.64, 2, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.70, 3.18, 7.58, -5.01, 6.70, 3, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.80, 3.79, 7.59, -5.04, 6.76, 3, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.90, 4.43, 7.59, -5.07, 6.82, 3, 6 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.00, 5.23, 7.54, -5.10, 6.89, 5, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.10, 6.15, 7.47, -5.12, 6.96, 5, 15 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.20, 7.11, 7.42, -5.14, 7.03, 6, 16 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.30, 8.12, 7.38, -5.16, 7.09, 6, 17 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.40, 9.16, 7.34, -5.19, 7.16, 7, 17 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.50, 10.23, 7.31, -5.21, 7.22, 7, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.60, 11.35, 7.29, -5.23, 7.28, 8, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.70, 12.49, 7.27, -5.25, 7.35, 8, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.80, 13.68, 7.25, -5.28, 7.41, 9, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.90, 14.89, 7.24, -5.30, 7.47, 9, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.00, 16.13, 7.22, -5.32, 7.53, 10, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.10, 17.41, 7.21, -5.34, 7.59, 10, 21 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.20, 18.71, 7.20, -5.36, 7.65, 11, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.30, 20.04, 7.19, -5.38, 7.71, 12, 22 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.40, 21.39, 7.18, -5.40, 7.77, 12, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.50, 22.77, 7.18, -5.42, 7.83, 13, 23 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.60, 24.18, 7.17, -5.44, 7.89, 13, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.70, 25.60, 7.16, -5.46, 7.95, 14, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.80, 27.05, 7.15, -5.48, 8.01, 14, 24 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.90, 28.52, 7.15, -5.50, 8.07, 15, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.00, 30.01, 7.14, -5.51, 8.13, 15, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.10, 31.51, 7.14, -5.53, 8.19, 16, 25 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.20, 33.03, 7.13, -5.55, 8.25, 16, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.30, 34.57, 7.13, -5.56, 8.31, 16, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.34, 35.15, 7.13, -5.57, 8.33, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.10, 0.18, 8.80, -4.60, 6.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.20, 0.37, 8.80, -4.60, 6.41, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.30, 0.55, 8.80, -4.60, 6.46, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.40, 0.73, 8.80, -4.60, 6.51, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.50, 0.92, 8.80, -4.60, 6.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.60, 1.10, 8.80, -4.60, 6.61, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.70, 1.28, 8.80, -4.60, 6.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.80, 1.47, 8.80, -4.60, 6.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.90, 1.65, 8.80, -4.60, 6.76, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.00, 1.83, 8.80, -4.60, 6.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.10, 2.02, 8.80, -4.60, 6.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.20, 2.20, 8.80, -4.60, 6.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.30, 2.38, 8.80, -4.60, 6.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.40, 2.56, 8.80, -4.60, 7.01, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.50, 2.75, 8.80, -4.60, 7.06, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.60, 2.93, 8.80, -4.60, 7.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.70, 3.11, 8.80, -4.60, 7.16, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.80, 3.30, 8.80, -4.60, 7.21, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.90, 3.48, 8.80, -4.60, 7.26, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.00, 3.66, 8.80, -4.60, 7.31, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.10, 3.85, 8.80, -4.60, 7.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.20, 4.03, 8.80, -4.60, 7.41, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.30, 4.21, 8.80, -4.60, 7.46, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.40, 4.40, 8.80, -4.60, 7.51, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.50, 4.58, 8.80, -4.60, 7.56, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.60, 4.76, 8.80, -4.60, 7.61, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.70, 4.95, 8.80, -4.60, 7.66, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.80, 5.13, 8.80, -4.60, 7.71, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.90, 5.31, 8.80, -4.60, 7.76, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.00, 5.50, 8.80, -4.60, 7.81, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.10, 5.68, 8.80, -4.60, 7.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.20, 5.86, 8.80, -4.60, 7.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.30, 6.04, 8.80, -4.60, 7.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.34, 6.11, 8.80, -4.60, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.10, 0.25, 7.17, 4.55, 6.36, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.20, 0.54, 7.16, 4.59, 6.42, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.30, 0.85, 7.15, 4.62, 6.47, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.40, 1.19, 7.15, 4.66, 6.53, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.50, 1.55, 7.14, 4.69, 6.58, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.60, 1.94, 7.14, 4.72, 6.64, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.70, 2.35, 7.13, 4.75, 6.70, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.80, 2.78, 7.13, 4.79, 6.75, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.90, 3.23, 7.13, 4.82, 6.81, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.00, 3.71, 7.12, 4.85, 6.87, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.10, 4.20, 7.12, 4.88, 6.93, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.20, 4.71, 7.12, 4.90, 6.98, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.30, 5.24, 7.11, 4.93, 7.04, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.40, 5.78, 7.11, 4.96, 7.10, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.50, 6.35, 7.11, 4.99, 7.16, 4, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.60, 6.93, 7.11, 5.01, 7.22, 4, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.70, 7.52, 7.11, 5.04, 7.28, 4, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.80, 8.13, 7.10, 5.06, 7.34, 4, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.90, 8.76, 7.10, 5.09, 7.40, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.00, 9.39, 7.10, 5.11, 7.46, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.10, 10.05, 7.10, 5.13, 7.51, 5, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.20, 10.71, 7.10, 5.16, 7.57, 6, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.30, 11.39, 7.10, 5.18, 7.63, 6, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.40, 12.08, 7.10, 5.20, 7.69, 6, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.50, 12.78, 7.09, 5.22, 7.75, 7, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.60, 13.50, 7.09, 5.24, 7.81, 7, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.70, 14.22, 7.09, 5.26, 7.87, 7, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.80, 14.95, 7.09, 5.28, 7.93, 7, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.90, 15.69, 7.09, 5.30, 7.98, 8, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.00, 16.44, 7.09, 5.32, 8.04, 8, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.10, 17.20, 7.09, 5.34, 8.10, 8, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.20, 17.97, 7.09, 5.35, 8.16, 8, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.30, 18.75, 7.09, 5.37, 8.22, 9, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.34, 19.03, 7.09, 5.38, 8.24, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.10, 0.69, 13.00, 0.00, 0.65, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.20, 1.39, 13.00, 0.00, 0.70, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.30, 2.08, 13.00, 0.00, 0.75, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.40, 2.77, 13.00, 0.00, 0.80, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.50, 3.47, 13.00, 0.00, 0.85, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.60, 4.16, 13.00, 0.00, 0.90, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.70, 4.86, 13.00, 0.00, 0.95, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.80, 5.55, 13.00, 0.00, 1.00, 1, 18 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.90, 6.16, 13.00, 0.00, 1.04, 1, 8 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 1.00, 6.68, 13.00, 0.00, 1.08, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.10, 0.23, 9.15, 5.59, 8.05, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.20, 0.47, 9.15, 5.61, 8.10, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.30, 0.71, 9.15, 5.62, 8.15, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.40, 0.95, 9.15, 5.63, 8.20, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.50, 1.20, 9.15, 5.65, 8.25, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.60, 1.44, 9.15, 5.66, 8.30, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.70, 1.70, 9.15, 5.67, 8.36, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.80, 1.95, 9.15, 5.68, 8.41, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.90, 2.21, 9.15, 5.69, 8.46, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.00, 2.46, 9.15, 5.70, 8.51, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.10, 2.72, 9.15, 5.71, 8.56, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.20, 2.99, 9.15, 5.72, 8.61, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.30, 3.25, 9.15, 5.73, 8.67, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.40, 3.52, 9.15, 5.74, 8.72, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.50, 3.78, 9.15, 5.74, 8.77, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.60, 4.05, 9.15, 5.75, 8.82, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.65, 4.19, 9.15, 5.76, 8.85, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.10, 0.22, 8.45, 5.53, 8.05, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.20, 0.45, 8.45, 5.54, 8.10, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.30, 0.68, 8.45, 5.56, 8.15, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.40, 0.91, 8.45, 5.57, 8.20, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.50, 1.15, 8.45, 5.59, 8.25, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.60, 1.39, 8.45, 5.60, 8.31, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.70, 1.63, 8.45, 5.61, 8.36, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.80, 1.88, 8.45, 5.62, 8.41, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.90, 2.13, 8.45, 5.64, 8.46, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.00, 2.38, 8.45, 5.65, 8.51, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.10, 2.64, 8.45, 5.66, 8.56, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.20, 2.89, 8.45, 5.67, 8.62, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.30, 3.15, 8.45, 5.68, 8.67, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.40, 3.42, 8.45, 5.69, 8.72, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.50, 3.68, 8.45, 5.70, 8.77, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.60, 3.94, 8.45, 5.71, 8.83, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.65, 4.08, 8.45, 5.71, 8.85, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.10, 0.00, 12.95, -3.89, 3.31, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.20, 0.00, 12.91, -3.91, 3.38, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.30, 0.01, 12.86, -3.94, 3.46, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.40, 0.02, 12.81, -3.96, 3.53, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.50, 0.04, 12.76, -3.99, 3.61, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.60, 0.07, 12.71, -4.02, 3.69, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.70, 0.11, 12.66, -4.04, 3.76, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.80, 0.17, 12.61, -4.07, 3.84, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.90, 0.24, 12.55, -4.10, 3.92, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.00, 0.34, 12.50, -4.13, 3.99, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.10, 0.46, 12.44, -4.16, 4.07, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.20, 0.61, 12.39, -4.19, 4.15, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.30, 0.78, 12.34, -4.23, 4.22, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.40, 0.97, 12.30, -4.26, 4.29, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.50, 1.20, 12.27, -4.30, 4.37, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.60, 1.45, 12.24, -4.33, 4.44, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.70, 1.72, 12.21, -4.37, 4.51, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.80, 2.02, 12.19, -4.41, 4.58, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.90, 2.34, 12.17, -4.44, 4.65, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.00, 2.69, 12.15, -4.48, 4.72, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.10, 3.06, 12.14, -4.52, 4.79, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.20, 3.46, 12.13, -4.56, 4.86, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.30, 3.87, 12.11, -4.59, 4.92, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.40, 4.31, 12.10, -4.63, 4.99, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.50, 4.77, 12.09, -4.67, 5.06, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.60, 5.25, 12.08, -4.70, 5.12, 2, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.70, 5.75, 12.08, -4.74, 5.19, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.80, 6.27, 12.07, -4.77, 5.26, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.90, 6.81, 12.06, -4.80, 5.32, 3, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 3.00, 7.36, 12.06, -4.83, 5.39, 4, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 3.08, 7.81, 12.05, -4.86, 5.437, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.10, 0.12, 8.46, 4.80, 6.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.20, 0.25, 8.46, 4.83, 6.42, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.30, 0.39, 8.46, 4.86, 6.47, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.40, 0.53, 8.46, 4.89, 6.52, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.50, 0.69, 8.46, 4.92, 6.58, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.60, 0.85, 8.46, 4.94, 6.63, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.70, 1.01, 8.46, 4.97, 6.68, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.80, 1.18, 8.46, 5.00, 6.74, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.90, 1.36, 8.46, 5.03, 6.80, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.00, 1.55, 8.46, 5.05, 6.85, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.10, 1.74, 8.46, 5.08, 6.91, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.20, 1.93, 8.46, 5.10, 6.96, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.30, 2.13, 8.46, 5.13, 7.02, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.40, 2.34, 8.46, 5.15, 7.08, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.50, 2.55, 8.46, 5.17, 7.13, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.60, 2.77, 8.46, 5.20, 7.19, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.69, 2.96, 8.46, 5.22, 7.24, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.10, 0.14, 9.16, 4.92, 6.36, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.20, 0.28, 9.16, 4.95, 6.42, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.30, 0.44, 9.16, 4.97, 6.47, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.40, 0.60, 9.16, 5.00, 6.52, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.50, 0.76, 9.16, 5.03, 6.57, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.60, 0.94, 9.16, 5.05, 6.63, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.70, 1.12, 9.16, 5.08, 6.68, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.80, 1.30, 9.16, 5.10, 6.74, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.90, 1.49, 9.16, 5.13, 6.79, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.00, 1.69, 9.16, 5.15, 6.85, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.10, 1.89, 9.16, 5.18, 6.90, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.20, 2.10, 9.16, 5.20, 6.96, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.30, 2.31, 9.15, 5.22, 7.01, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.40, 2.53, 9.15, 5.24, 7.07, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.50, 2.75, 9.15, 5.26, 7.12, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.60, 2.97, 9.15, 5.29, 7.18, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.69, 3.17, 9.15, 5.30, 7.23, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.10, 0.21, 5.42, 4.81, 7.30, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.20, 0.44, 5.42, 4.83, 7.35, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.30, 0.68, 5.42, 4.86, 7.40, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.40, 0.93, 5.42, 4.88, 7.46, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.50, 1.19, 5.42, 4.91, 7.51, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.60, 1.46, 5.42, 4.93, 7.56, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.70, 1.74, 5.42, 4.96, 7.62, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.80, 2.03, 5.42, 4.98, 7.67, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.90, 2.33, 5.42, 5.00, 7.73, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.00, 2.64, 5.42, 5.03, 7.78, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.10, 2.96, 5.42, 5.05, 7.84, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.20, 3.29, 5.42, 5.07, 7.90, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.30, 3.62, 5.42, 5.09, 7.95, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.40, 3.97, 5.42, 5.11, 8.01, 2, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.50, 4.32, 5.42, 5.13, 8.06, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.60, 4.68, 5.42, 5.15, 8.12, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.70, 5.05, 5.41, 5.17, 8.18, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.80, 5.42, 5.41, 5.19, 8.23, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.90, 5.81, 5.41, 5.21, 8.29, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.00, 6.19, 5.41, 5.23, 8.35, 3, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.10, 6.59, 5.41, 5.25, 8.41, 4, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.20, 6.99, 5.41, 5.27, 8.46, 4, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.30, 7.40, 5.41, 5.29, 8.52, 4, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.40, 7.81, 5.41, 5.30, 8.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.10, 0.15, 13.73, 1.18, 0.06, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.20, 0.34, 13.73, 1.27, 0.11, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.30, 0.56, 13.73, 1.33, 0.17, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.40, 0.80, 13.73, 1.39, 0.22, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.50, 1.06, 13.73, 1.43, 0.28, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.60, 1.33, 13.72, 1.47, 0.33, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.70, 1.61, 13.72, 1.51, 0.39, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.80, 1.91, 13.72, 1.54, 0.44, 1, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.90, 2.21, 13.72, 1.57, 0.50, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.00, 2.52, 13.72, 1.59, 0.56, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.10, 2.84, 13.72, 1.62, 0.61, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.20, 3.16, 13.72, 1.64, 0.67, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.30, 3.49, 13.72, 1.66, 0.72, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.40, 3.83, 13.72, 1.68, 0.78, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.50, 4.17, 13.72, 1.69, 0.83, 2, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.60, 4.52, 13.72, 1.71, 0.89, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.10, 0.35, 14.52, -1.27, 0.05, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.20, 0.79, 14.51, -1.36, 0.11, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.30, 1.28, 14.50, -1.43, 0.16, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.40, 1.82, 14.50, -1.48, 0.22, 2, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.50, 2.40, 14.49, -1.53, 0.27, 2, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.60, 3.00, 14.49, -1.57, 0.33, 3, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.70, 3.64, 14.49, -1.60, 0.39, 3, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.80, 4.29, 14.49, -1.63, 0.44, 3, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.90, 4.96, 14.48, -1.66, 0.50, 4, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.00, 5.66, 14.48, -1.69, 0.55, 4, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.10, 6.36, 14.48, -1.72, 0.61, 4, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.20, 7.08, 14.48, -1.74, 0.66, 5, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.30, 7.82, 14.48, -1.76, 0.72, 5, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.40, 8.57, 14.48, -1.78, 0.77, 5, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.50, 9.33, 14.48, -1.80, 0.83, 5, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.60, 10.11, 14.48, -1.82, 0.88, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.10, 0.17, 11.81, 0.98, 0.06, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.20, 0.43, 11.77, 1.07, 0.11, 0, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.30, 0.74, 11.75, 1.12, 0.17, 0, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.40, 1.08, 11.74, 1.17, 0.23, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.50, 1.46, 11.73, 1.21, 0.29, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.60, 1.86, 11.73, 1.25, 0.34, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.70, 2.28, 11.72, 1.28, 0.40, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.80, 2.72, 11.72, 1.31, 0.46, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.90, 3.17, 11.71, 1.33, 0.51, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.00, 3.64, 11.71, 1.36, 0.57, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.10, 4.13, 11.71, 1.38, 0.63, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.20, 4.62, 11.71, 1.40, 0.68, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.30, 5.12, 11.70, 1.41, 0.74, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.40, 5.62, 11.70, 1.43, 0.79, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.50, 6.14, 11.70, 1.44, 0.85, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.60, 6.66, 11.70, 1.45, 0.90, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.10, 0.17, 11.81, -0.98, 0.06, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.20, 0.43, 11.77, -1.07, 0.11, 0, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.30, 0.74, 11.75, -1.12, 0.17, 0, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.40, 1.08, 11.74, -1.17, 0.23, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.50, 1.46, 11.73, -1.21, 0.29, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.60, 1.86, 11.73, -1.25, 0.34, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.70, 2.28, 11.72, -1.28, 0.40, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.80, 2.72, 11.72, -1.31, 0.46, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.90, 3.17, 11.71, -1.33, 0.51, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.00, 3.64, 11.71, -1.36, 0.57, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.10, 4.13, 11.71, -1.38, 0.63, 1, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.20, 4.62, 11.71, -1.40, 0.68, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.30, 5.12, 11.70, -1.41, 0.74, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.40, 5.62, 11.70, -1.43, 0.79, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.50, 6.14, 11.70, -1.44, 0.85, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.60, 6.66, 11.70, -1.45, 0.90, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.10, 0.07, 5.47, -0.34, 3.55, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.20, 0.15, 5.47, -0.34, 3.60, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.30, 0.22, 5.47, -0.34, 3.65, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.40, 0.29, 5.47, -0.34, 3.70, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.50, 0.37, 5.47, -0.34, 3.75, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.60, 0.44, 5.48, -0.34, 3.80, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.70, 0.52, 5.48, -0.34, 3.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.80, 0.60, 5.48, -0.35, 3.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.90, 0.69, 5.48, -0.36, 3.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.00, 0.78, 5.48, -0.36, 4.02, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.10, 0.89, 5.48, -0.38, 4.08, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.20, 1.00, 5.48, -0.39, 4.15, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.30, 1.16, 5.45, -0.41, 4.23, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.40, 1.36, 5.41, -0.43, 4.32, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.50, 1.59, 5.38, -0.46, 4.41, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.60, 1.87, 5.33, -0.50, 4.51, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.70, 2.21, 5.28, -0.55, 4.61, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.80, 2.64, 5.22, -0.60, 4.71, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.90, 3.15, 5.15, -0.66, 4.82, 3, 4 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.00, 3.76, 5.06, -0.72, 4.92, 4, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.10, 4.50, 4.97, -0.78, 5.02, 5, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.20, 5.38, 4.86, -0.85, 5.13, 6, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.30, 6.40, 4.75, -0.91, 5.23, 8, 19 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.40, 7.58, 4.63, -0.98, 5.32, 11, 26 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.50, 8.93, 4.50, -1.04, 5.42, 14, 35 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.60, 10.46, 4.37, -1.10, 5.51, 17, 46 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.70, 12.19, 4.24, -1.17, 5.60, 20, 59 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.80, 14.11, 4.11, -1.22, 5.69, 25, 75 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.90, 15.78, 3.93, -1.25, 5.76, 18, 52 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.00, 17.56, 3.75, -1.28, 5.83, 21, 65 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.10, 19.54, 3.57, -1.32, 5.90, 25, 80 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.20, 21.71, 3.40, -1.35, 5.98, 29, 93 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.30, 24.04, 3.24, -1.39, 6.05, 33, 105 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.40, 26.53, 3.09, -1.43, 6.13, 37, 115 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.50, 29.17, 2.95, -1.47, 6.20, 41, 124 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.60, 31.94, 2.83, -1.51, 6.28, 45, 133 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.70, 34.83, 2.72, -1.55, 6.35, 49, 140 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.75, 36.32, 2.66, -1.57, 6.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.10, 0.08, 5.47, 0.32, 3.55, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.20, 0.15, 5.47, 0.32, 3.60, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.30, 0.23, 5.47, 0.32, 3.65, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.40, 0.30, 5.47, 0.32, 3.70, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.50, 0.38, 5.47, 0.32, 3.75, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.60, 0.46, 5.47, 0.33, 3.80, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.70, 0.54, 5.47, 0.33, 3.86, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.80, 0.62, 5.47, 0.33, 3.91, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.90, 0.71, 5.48, 0.34, 3.96, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.00, 0.81, 5.48, 0.35, 4.02, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.10, 0.91, 5.48, 0.36, 4.08, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.20, 1.03, 5.48, 0.38, 4.15, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.30, 1.20, 5.44, 0.39, 4.23, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.40, 1.39, 5.41, 0.42, 4.32, 0, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.50, 1.63, 5.37, 0.44, 4.41, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.60, 1.92, 5.33, 0.48, 4.51, 1, 1 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.70, 2.26, 5.28, 0.53, 4.61, 1, 2 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.80, 2.69, 5.22, 0.58, 4.71, 2, 3 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.90, 3.20, 5.14, 0.64, 4.81, 3, 5 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.00, 3.82, 5.06, 0.70, 4.92, 4, 7 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.10, 4.57, 4.96, 0.76, 5.02, 5, 10 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.20, 5.44, 4.86, 0.83, 5.12, 7, 14 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.30, 6.46, 4.74, 0.89, 5.22, 9, 20 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.40, 7.65, 4.62, 0.96, 5.32, 11, 27 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.50, 9.00, 4.50, 1.02, 5.41, 14, 36 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.60, 10.53, 4.37, 1.08, 5.51, 17, 47 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.70, 12.26, 4.24, 1.15, 5.60, 21, 60 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.80, 14.17, 4.10, 1.20, 5.69, 25, 76 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.90, 15.84, 3.93, 1.23, 5.76, 18, 52 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.00, 17.63, 3.75, 1.26, 5.83, 21, 66 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.10, 19.61, 3.57, 1.30, 5.90, 25, 81 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.20, 21.77, 3.40, 1.33, 5.97, 29, 94 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.30, 24.10, 3.24, 1.37, 6.05, 33, 105 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.40, 26.58, 3.09, 1.41, 6.12, 37, 115 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.50, 29.20, 2.95, 1.45, 6.20, 41, 124 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.60, 31.96, 2.83, 1.49, 6.27, 45, 132 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.70, 34.84, 2.71, 1.53, 6.34, 49, 140 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.75, 36.32, 2.66, 1.55, 6.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.10, 9.01, 14.45, 0.00, 9.70, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.20, 18.01, 14.45, 0.00, 9.75, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.30, 27.02, 14.45, 0.00, 9.80, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.40, 36.03, 14.45, 0.00, 9.85, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.50, 45.03, 14.45, 0.00, 9.90, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.60, 54.04, 14.45, 0.00, 9.95, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.70, 63.05, 14.45, 0.00, 10.00, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.80, 72.05, 14.45, 0.00, 10.05, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.90, 81.06, 14.45, 0.00, 10.10, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.00, 90.07, 14.45, 0.00, 10.15, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.10, 99.07, 14.45, 0.00, 10.20, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.20, 108.08, 14.45, 0.00, 10.25, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.30, 117.09, 14.45, 0.00, 10.30, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.40, 126.09, 14.45, 0.00, 10.35, 1331, 405 UNION ALL
SELECT  2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.50, 135.10, 14.45, 0.00, 10.40, 0, 0;


