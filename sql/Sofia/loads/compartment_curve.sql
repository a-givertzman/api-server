DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.1, 0.08, 125.78, 0, 0.07, 1, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.2, 0.37, 126.1, 0, 0.14, 2, 1 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.3, 0.84, 126.33, 0, 0.2, 5, 1 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.4, 1.48, 126.52, 0, 0.27, 10, 2 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.5, 2.27, 126.67, 0, 0.33, 14, 3 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.6, 3.2, 126.8, 0, 0.4, 19, 4 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.7, 4.18, 126.95, 0, 0.46, 18, 4 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.8, 5.2, 127.09, 0, 0.51, 20, 5 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 0.9, 6.29, 127.23, 0, 0.57, 23, 6 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1, 7.45, 127.35, 0, 0.63, 26, 6 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.1, 8.68, 127.46, 0, 0.69, 29, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.2, 9.98, 127.57, 0, 0.75, 33, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.3, 11.35, 127.66, 0, 0.81, 37, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.4, 12.8, 127.75, 0, 0.87, 41, 9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.5, 14.32, 127.83, 0, 0.93, 46, 10 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.6, 15.92, 127.91, 0, 1, 51, 11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.7, 17.59, 127.98, 0, 1.06, 56, 12 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.8, 19.34, 128.05, 0, 1.12, 61, 13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 1.9, 21.15, 128.11, 0, 1.18, 65, 13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2, 23.02, 128.16, 0, 1.25, 70, 14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.1, 24.94, 128.22, 0, 1.31, 75, 15 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.2, 26.92, 128.27, 0, 1.37, 78, 15 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.3, 28.94, 128.32, 0, 1.43, 82, 16 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.4, 31, 128.37, 0, 1.49, 86, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.5, 33.11, 128.41, 0, 1.55, 90, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.6, 35.25, 128.45, 0, 1.61, 94, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.7, 37.43, 128.49, 0, 1.67, 96, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.8, 39.62, 128.53, 0, 1.73, 99, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 2.9, 41.84, 128.57, 0, 1.79, 101, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3, 44.08, 128.6, 0, 1.85, 103, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.1, 46.33, 128.63, 0, 1.91, 105, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.2, 48.6, 128.66, 0, 1.97, 106, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.3, 50.86, 128.69, 0, 2.02, 106, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.4, 53.12, 128.72, 0, 2.08, 107, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.5, 55.38, 128.74, 0, 2.14, 107, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.6, 57.63, 128.76, 0, 2.19, 107, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.7, 59.87, 128.78, 0, 2.25, 105, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.8, 62.09, 128.8, 0, 2.3, 104, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 3.9, 64.29, 128.82, 0, 2.35, 102, 17 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4, 66.46, 128.83, 0, 2.41, 100, 16 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.1, 68.61, 128.84, 0, 2.46, 98, 16 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.2, 70.72, 128.86, 0, 2.51, 95, 15 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.3, 72.79, 128.86, 0, 2.56, 92, 15 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.4, 74.81, 128.87, 0, 2.61, 88, 14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.5, 76.79, 128.88, 0, 2.65, 85, 13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.6, 78.72, 128.88, 0, 2.7, 81, 13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.7, 80.59, 128.89, 0, 2.75, 76, 12 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.8, 82.41, 128.89, 0, 2.79, 71, 11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 4.9, 84.17, 128.89, 0, 2.83, 66, 11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5, 85.86, 128.89, 0, 2.87, 61, 10 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.1, 87.48, 128.88, 0, 2.91, 56, 9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.2, 89.04, 128.88, 0, 2.95, 51, 9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.3, 90.53, 128.87, 0, 2.99, 46, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.4, 91.95, 128.87, 0, 3.03, 41, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.5, 93.31, 128.86, 0, 3.06, 36, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.6, 94.6, 128.85, 0, 3.1, 31, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.7, 95.84, 128.84, 0, 3.13, 27, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.8, 97.02, 128.83, 0, 3.16, 24, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 5.9, 98.16, 128.82, 0, 3.19, 21, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6, 99.26, 128.81, 0, 3.22, 19, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.1, 100.33, 128.79, 0, 3.25, 17, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.2, 101.38, 128.78, 0, 3.28, 15, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.3, 102.42, 128.77, 0, 3.31, 14, 7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.4, 103.39, 128.76, 0, 3.34, 9, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.5, 104.35, 128.74, 0, 3.37, 9, 8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.6, 105.34, 128.73, 0, 3.4, 9, 9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.7, 106.33, 128.72, 0, 3.43, 10, 9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.8, 107.35, 128.71, 0, 3.46, 10, 10 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 6.9, 108.4, 128.69, 0, 3.5, 10, 11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7, 109.48, 128.68, 0, 3.53, 10, 12 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.1, 110.59, 128.66, 0, 3.57, 11, 13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.2, 111.75, 128.65, 0, 3.6, 11, 14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.3, 112.95, 128.64, 0, 3.64, 12, 16 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.4, 114.2, 128.62, 0, 3.68, 12, 18 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.5, 115.51, 128.61, 0, 3.72, 13, 20 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.6, 116.86, 128.59, 0, 3.77, 22, 22 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.7, 118.42, 128.58, 0, 3.82, 24, 25 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.8, 120.06, 128.57, 0, 3.87, 26, 28 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 7.9, 121.77, 128.56, 0, 3.93, 28, 31 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8, 123.56, 128.54, 0, 3.99, 30, 34 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.1, 125.44, 128.53, 0, 4.05, 32, 38 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.2, 127.4, 128.52, 0, 4.11, 35, 42 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.3, 129.44, 128.51, 0, 4.18, 37, 46 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.4, 131.58, 128.5, 0, 4.24, 40, 51 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.5, 133.81, 128.49, 0, 4.31, 43, 56 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.6, 136.13, 128.48, 0, 4.39, 46, 62 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.7, 138.55, 128.47, 0, 4.46, 49, 68 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.8, 141.07, 128.46, 0, 4.54, 52, 74 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 8.9, 143.69, 128.45, 0, 4.62, 56, 81 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9, 146.41, 128.44, 0, 4.7, 59, 89 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.1, 149.24, 128.43, 0, 4.78, 63, 97 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.2, 152.18, 128.42, 0, 4.86, 67, 106 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.3, 155.24, 128.42, 0, 4.95, 72, 116 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.4, 158.41, 128.41, 0, 5.04, 76, 126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.5, 161.69, 128.4, 0, 5.13, 81, 137 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.6, 165.1, 128.4, 0, 5.22, 86, 148 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Форпик' AND ship_id=2), 9.65, 166.85, 128.4, 0, 5.27, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0, 0, 121.96, -0.01, 1.64, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.1, 1, 121.96, -0.01, 1.64, 7.959, 27.294 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.2, 2.46, 121.96, -0.01, 1.64, 14.559, 34.46 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.3, 4.18, 121.96, -0.01, 1.64, 20.717, 39.215 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.4, 6.08, 121.96, -0.01, 1.64, 26.716, 42.963 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.5, 8.13, 121.96, -0.01, 1.64, 32.221, 45.935 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.6, 10.3, 121.96, -0.01, 1.64, 37.397, 48.491 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.7, 12.49, 121.96, -0.01, 1.64, 41.252, 41.162 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.8, 14.7, 121.96, -0.01, 1.64, 45.02, 39.325 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 0.9, 16.94, 121.96, -0.01, 1.64, 48.692, 38.31 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1, 19.21, 121.96, -0.01, 1.64, 51.999, 37.743 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.1, 21.51, 121.96, -0.01, 1.64, 55.142, 37.44 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.2, 23.34, 121.96, -0.01, 1.64, 52.16, 18.946 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.3, 25.2, 121.96, -0.01, 1.64, 54.686, 19.321 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.4, 27.09, 121.96, -0.01, 1.64, 57.146, 19.659 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.5, 29.01, 121.96, -0.01, 1.64, 59.447, 19.981 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.6, 30.96, 121.96, -0.01, 1.64, 61.407, 20.242 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.7, 32.93, 121.96, -0.01, 1.64, 63.374, 20.5 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.8, 34.92, 121.96, -0.01, 1.64, 65.076, 20.729 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 1.9, 36.93, 121.96, -0.01, 1.64, 66.692, 20.934 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2, 38.95, 121.96, -0.01, 1.64, 68.191, 21.124 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.1, 40.99, 121.96, -0.01, 1.64, 69.513, 21.286 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.2, 43.04, 121.96, -0.01, 1.64, 70.736, 21.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.3, 45.11, 121.96, -0.01, 1.64, 71.797, 21.56 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.4, 47.18, 121.96, -0.01, 1.64, 72.749, 21.676 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.5, 49.27, 121.96, -0.01, 1.64, 73.576, 21.771 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.6, 51.36, 121.96, -0.01, 1.64, 74.291, 21.852 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.7, 53.46, 121.96, -0.01, 1.64, 74.93, 21.927 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.8, 55.56, 121.96, -0.01, 1.64, 75.436, 21.974 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 2.9, 57.67, 121.96, -0.01, 1.64, 75.896, 22.026 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3, 59.78, 121.96, -0.01, 1.64, 73.572, 20.629 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.1, 61.8, 121.96, -0.01, 1.64, 74.036, 20.677 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.2, 63.82, 121.96, -0.01, 1.64, 74.466, 20.733 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.3, 65.84, 121.96, -0.01, 1.69, 74.902, 20.776 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.4, 67.87, 121.96, -0.01, 1.74, 75.387, 20.828 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.5, 69.9, 121.96, -0.01, 1.79, 75.916, 20.884 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.6, 71.94, 121.95, -0.01, 1.84, 76.55, 20.948 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.7, 73.99, 121.95, -0.02, 1.89, 77.223, 21.017 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.8, 76.04, 121.95, -0.02, 1.94, 78.035, 21.099 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 3.9, 78.09, 121.95, -0.02, 1.99, 78.913, 21.189 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4, 80.16, 121.95, -0.02, 2.04, 79.914, 21.286 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.1, 82.23, 121.94, -0.02, 2.09, 81.043, 21.401 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.2, 84.32, 121.94, -0.02, 2.14, 82.285, 21.522 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.3, 86.41, 121.94, -0.02, 2.2, 83.714, 21.666 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.4, 88.52, 121.94, -0.03, 2.25, 85.276, 21.82 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.5, 90.65, 121.94, -0.03, 2.3, 86.982, 21.982 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.6, 92.79, 121.93, -0.027, 2.35, 88.825, 22.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.7, 94.943, 121.93, -0.03, 2.4, 90.829, 22.345 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.8, 97.12, 121.93, -0.03, 2.46, 93.106, 22.559 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 4.9, 99.31, 121.93, -0.03, 2.51, 95.57, 22.787 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5, 101.53, 121.93, -0.03, 2.56, 98.253, 23.033 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.1, 103.77, 121.93, -0.03, 2.62, 101.182, 23.301 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.2, 106.03, 121.92, -33, 2.67, 104.367, 23.583 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.3, 108.32, 121.92, -0.03, 2.72, 107.824, 23.888 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.4, 110.64, 121.92, -0.03, 2.78, 111.57, 24.212 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.5, 112.98, 121.92, -0.04, 2.83, 115.647, 24.56 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.6, 115.36, 121.92, -0.04, 2.89, 120.022, 24.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.7, 117.78, 121.92, -0.04, 2.95, 124.732, 25.307 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.8, 120.23, 121.91, -0.04, 3, 129.807, 25.709 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 5.9, 122.71, 121.91, -0.04, 3.06, 135.248, 26.134 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6, 125.24, 121.91, -0.04, 3.12, 141.194, 26.581 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.1, 127.8, 121.91, -0.04, 3.18, 147.51, 27.051 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.2, 130.41, 121.91, -0.04, 3.24, 154.109, 27.525 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.3, 133.06, 121.91, -0.04, 3.3, 161.05, 28.012 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Диптанк' AND ship_id=2), 6.31, 133.41, 121.91, -0.04, 3.31, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.1, 20.15, 92.23, 0, 0.05, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.2, 40.31, 92.23, 0, 0.1, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.3, 60.46, 92.23, 0, 0.15, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.4, 80.62, 92.23, 0, 0.2, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.5, 100.77, 92.23, 0, 0.25, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.6, 120.92, 92.23, 0, 0.3, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.7, 141.08, 92.23, 0, 0.35, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.8, 161.23, 92.23, 0, 0.4, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 0.9, 181.38, 92.23, 0, 0.45, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 1, 201.54, 92.23, 0, 0.5, 1037.579, 11266.158 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ДП' AND ship_id=2), 1.1, 221.69, 92.23, 0, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.1, 6.33, 75.21, 0, 0.05, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.2, 12.67, 75.21, 0, 0.1, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.3, 19, 75.21, 0, 0.15, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.4, 25.34, 75.21, 0, 0.2, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.5, 31.67, 75.21, 0, 0.25, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.6, 38.01, 75.21, 0, 0.3, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.7, 44.34, 75.21, 0, 0.35, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.8, 50.68, 75.21, 0, 0.4, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 0.9, 57.01, 75.21, 0, 0.45, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 1, 63.34, 75.21, 0, 0.5, 326.113, 349.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ДП' AND ship_id=2), 1.1, 69.68, 75.21, 0, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.1, 21.31, 57.45, 0, 0.05, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.2, 42.61, 57.45, 0, 0.1, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.3, 63.92, 57.45, 0, 0.15, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.4, 85.22, 57.45, 0, 0.2, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.5, 106.53, 57.45, 0, 0.25, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.6, 127.83, 57.45, 0, 0.3, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.7, 149.14, 57.45, 0, 0.35, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.8, 170.44, 57.45, 0, 0.4, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 0.9, 191.75, 57.45, 0, 0.45, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 1, 213.05, 57.45, 0, 0.5, 1096.859, 13309.829 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ДП' AND ship_id=2), 1.1, 234.36, 57.45, 0, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.1, 11.52, 36.36, 0, 0.05, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.2, 23.03, 36.36, 0, 0.1, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.3, 34.55, 36.36, 0, 0.15, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.4, 46.07, 36.36, 0, 0.2, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.5, 57.58, 36.36, 0, 0.25, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.6, 69.1, 36.36, 0, 0.3, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.7, 80.62, 36.36, 0, 0.35, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.8, 92.13, 36.36, 0, 0.4, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 0.9, 103.65, 36.36, 0, 0.45, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 1, 115.17, 36.36, 0, 0.5, 592.902, 2102.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ДП' AND ship_id=2), 1.1, 126.68, 36.36, 0, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0, 0, 110.38, -2.18, 53, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.1, 5.36, 110.38, -2.18, 53, 146.655, 1220.928 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.2, 11.68, 110.45, -2.32, 0.11, 176.512, 1380.723 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.3, 18.5, 110.49, -2.41, 0.16, 198.604, 1485.142 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.4, 25.69, 110.53, -2.49, 0.21, 217.652, 1568.165 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.5, 33.18, 110.56, -2.55, 0.27, 235.025, 1638.268 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.6, 40.92, 110.58, -2.61, 0.32, 251.023, 1696.885 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.7, 48.89, 110.59, -2.65, 0.37, 265.53, 1746.768 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.8, 57.05, 110.61, -2.7, 0.428, 278.599, 1789.695 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 0.9, 65.38, 110.62, -2.74, 0.48, 290.406, 1826.528 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 1, 73.85, 110.63, -2.77, 0.54, 301.056, 1859.211 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 ЛБ' AND ship_id=2), 1.1, 82.46, 110.64, -2.81, 0.59, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0, 0, 110.39, 2.16, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.1, 5.37, 110.39, 2.16, 0.05, 148.076, 1223.541 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.2, 11.7, 110.46, 2.3, 0.11, 178.108, 1382.427 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.3, 18.52, 110.51, 2.4, 0.16, 200.318, 1486.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.4, 25.71, 110.54, 2.47, 0.21, 219.477, 1569.178 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.5, 33.2, 110.57, 2.54, 0.27, 236.914, 1637.963 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.6, 40.95, 110.59, 2.59, 0.32, 252.988, 1696.067 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.7, 48.91, 110.6, 2.64, 0.37, 267.561, 1746.15 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.8, 57.07, 110.62, 2.68, 0.43, 280.686, 1788.786 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 0.9, 65.39, 110.63, 2.72, 0.48, 292.541, 1825.443 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 1, 73.86, 110.64, 2.76, 0.54, 303.229, 1857.954 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 1 Пр.Б' AND ship_id=2), 1.1, 82.46, 110.65, 2.79, 0.59, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0, 0, 86.11, -5.52, 0.051, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.1, 9.64, 86.11, -5.52, 0.051, 95.417, 7807.919 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.2, 20.05, 86.18, -5.59, 0.1, 110.867, 8287.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.3, 30.93, 86.23, -5.63, 0.16, 122.714, 8628.781 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.4, 42.14, 86.26, -5.67, 0.21, 132.178, 8891.742 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.5, 53.6, 86.29, -5.7, 0.26, 139.884, 9096.82 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.6, 65.27, 86.31, -5.72, 0.311, 145.956, 9254.602 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.7, 77.09, 86.33, -5.75, 0.36, 150.79, 9379.121 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.8, 89.02, 86.35, -5.77, 0.42, 154.468, 9476.689 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 0.9, 101.04, 86.37, -5.78, 0.47, 157.026, 9549.979 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 1, 113.11, 86.38, -5.79, 0.52, 158.512, 9602.148 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 ЛБ' AND ship_id=2), 1.1, 125.22, 86.4, -5.81, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0, 0, 86.11, 5.52, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.1, 9.64, 86.11, 5.52, 0.05, 95.417, 7807.919 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.2, 20.05, 86.18, 5.59, 0.1, 110.867, 8287.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.3, 30.93, 86.23, 5.63, 0.16, 122.714, 8628.781 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.4, 42.14, 86.26, 5.67, 0.21, 132.178, 8891.742 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.5, 53.6, 86.29, 5.7, 0.26, 139.884, 9096.82 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.6, 65.27, 86.31, 5.72, 0.31, 145.956, 9254.602 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.7, 77.09, 86.33, 5.75, 0.36, 150.79, 9379.121 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.8, 89.02, 86.35, 5.77, 0.42, 154.468, 9476.689 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 0.9, 101.04, 86.37, 5.78, 0.47, 157.026, 9549.979 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 1, 113.11, 86.38, 5.79, 0.52, 158.512, 9602.148 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 2 Пр.Б' AND ship_id=2), 1.1, 125.22, 86.4, 5.81, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0, 0, 58.19, -5.58, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.1, 8.38, 58.19, -5.58, 0.05, 86.259, 4890.568 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.2, 17.35, 58.19, -5.64, 0.1, 99.193, 5123.633 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.3, 26.67, 58.19, -5.68, 0.15, 108.805, 5285.912 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.4, 36.24, 58.19, -5.72, 0.21, 116.637, 5408.59 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.5, 46, 58.19, -5.74, 0.26, 122.847, 5503.064 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.6, 55.91, 58.19, -5.77, 0.31, 127.624, 5573.479 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.7, 65.93, 58.19, -5.79, 0.36, 131.359, 5626.841 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.8, 76.03, 58.19, -5.81, 0.41, 134.082, 5665.342 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 0.9, 86.18, 58.19, -5.82, 0.46, 135.477, 5686.004 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 1, 96.36, 58.19, -5.83, 0.52, 136.162, 5694.421 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 ЛБ' AND ship_id=2), 1.1, 106.55, 58.19, -5.84, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0, 0, 58.19, 5.58, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.1, 8.38, 58.19, 5.58, 0.05, 86.259, 4890.568 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.2, 17.35, 58.19, 5.64, 0.1, 99.193, 5123.633 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.3, 26.67, 58.19, 5.68, 0.15, 108.805, 5285.912 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.4, 36.24, 58.19, 5.72, 0.21, 116.637, 5408.59 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.5, 46, 58.19, 5.74, 0.26, 122.847, 5503.064 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.6, 55.91, 58.19, 5.77, 0.31, 127.624, 5573.479 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.7, 65.93, 58.19, 5.79, 0.36, 131.359, 5626.841 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.8, 76.03, 58.19, 5.81, 0.41, 134.082, 5665.342 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 0.9, 86.18, 58.19, 5.82, 0.46, 135.477, 5686.004 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 1, 96.36, 58.19, 5.83, 0.52, 136.162, 5694.421 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 3 Пр.Б' AND ship_id=2), 1.1, 106.55, 58.19, 5.84, 0.57, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0, 0, 31.32, -4, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.1, 9.37, 31.32, -4, 0.05, 401.351, 5713.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.2, 19.67, 31.23, -4.09, 0.1, 434.476, 6066.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.3, 30.49, 31.18, -4.15, 0.16, 459.235, 6315.775 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.4, 41.7, 31.14, -4.2, 0.21, 479.033, 6510.746 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.5, 53.23, 31.11, -4.24, 0.26, 495.46, 6676.805 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.6, 65.01, 31.07, -4.27, 0.31, 508.92, 6814.02 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.7, 77.02, 31.04, -4.3, 0.37, 520.068, 6930.647 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.8, 89.21, 31.01, -4.33, 0.42, 529.3, 7032.436 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 0.9, 101.57, 30.99, -4.35, 0.47, 536.491, 7115.524 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 1, 114.07, 30.96, -4.37, 0.52, 542.162, 7186.152 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 ЛБ' AND ship_id=2), 1.1, 126.68, 30.93, -4.39, 0.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0, 0, 31.29, 3.99, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.1, 9.37, 31.29, 3.99, 0.05, 405.154, 5717.927 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.2, 19.68, 31.21, 4.08, 0.1, 438.538, 6070.816 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.3, 30.51, 31.16, 4.14, 0.16, 463.361, 6318.237 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.4, 41.72, 31.12, 4.18, 0.21, 483.307, 6513.679 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.5, 53.24, 31.09, 4.22, 0.26, 499.772, 6677.983 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.6, 65.03, 31.05, 4.26, 0.31, 513.285, 6814.479 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.7, 77.03, 31.03, 4.29, 0.37, 524.527, 6931.077 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.8, 89.23, 31, 4.32, 0.42, 533.766, 7031.875 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 0.9, 101.59, 30.97, 4.34, 0.47, 541.064, 7115.226 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 1, 114.08, 30.94, 4.36, 0.52, 546.647, 7184.351 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Танк ДД 4 Пр.Б' AND ship_id=2), 1.1, 126.69, 30.91, 4.38, 0.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0, 0, 112.45, -5.07, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.1, 0.84, 112.45, -5.07, 1.15, 10.911, 144.231 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.2, 1.78, 112.45, -5.09, 1.2, 12.142, 159.531 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.3, 2.8, 112.45, -5.1, 1.26, 13.277, 173.557 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.4, 3.91, 112.46, -5.12, 1.31, 14.326, 186.449 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.5, 5.08, 112.47, -5.13, 1.37, 15.275, 197.959 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.6, 6.33, 112.47, -5.14, 1.42, 16.165, 208.712 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.7, 7.64, 112.48, -5.16, 1.48, 16.988, 218.577 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.8, 9.01, 112.49, -5.17, 1.54, 17.751, 227.617 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 0.9, 10.43, 112.5, -5.18, 1.59, 18.465, 236.048 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1, 11.91, 112.5, -5.19, 1.65, 19.122, 243.698 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.1, 13.43, 112.51, -5.2, 1.71, 19.75, 250.98 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.2, 14.99, 112.52, -5.21, 1.76, 20.34, 257.673 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.3, 16.6, 112.52, -5.22, 1.82, 20.906, 264.06 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.4, 18.24, 112.53, -5.23, 1.88, 21.444, 270.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.5, 19.93, 112.54, -5.23, 1.93, 21.965, 275.657 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.6, 21.64, 112.54, -5.24, 1.99, 22.46, 280.965 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.7, 23.39, 112.55, -5.25, 2.05, 22.936, 286.037 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.8, 25.18, 112.55, -5.26, 2.1, 23.405, 290.968 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 1.9, 26.99, 112.55, -5.26, 2.16, 23.86, 295.689 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2, 28.84, 112.56, -5.27, 2.22, 24.3, 300.244 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.1, 30.71, 112.56, -5.28, 2.28, 24.73, 304.691 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.2, 32.62, 112.56, -5.29, 2.33, 25.162, 309.152 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.3, 34.55, 112.57, -5.29, 2.39, 25.591, 313.612 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.4, 36.51, 112.57, -5.3, 2.45, 26.012, 318.029 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.5, 38.5, 112.57, -5.3, 2.5, 26.425, 322.403 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.6, 40.52, 112.58, -5.31, 2.56, 26.833, 326.781 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.7, 42.56, 112.58, -5.32, 2.62, 27.242, 331.254 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.8, 44.64, 112.58, -5.32, 2.67, 27.651, 335.845 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 2.9, 46.74, 112.59, -5.33, 2.73, 28.059, 340.484 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3, 48.88, 112.59, -5.33, 2.79, 28.466, 345.184 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.1, 51.04, 112.6, -5.34, 2.85, 28.876, 349.998 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.2, 53.23, 112.6, -5.34, 2.91, 29.292, 354.991 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.3, 55.45, 112.61, -5.35, 2.96, 29.716, 360.153 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.4, 57.7, 112.61, -5.36, 3.02, 30.141, 365.391 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.5, 59.98, 112.62, -5.36, 3.08, 30.568, 370.73 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.6, 62.3, 112.62, -5.37, 3.14, 31.001, 376.246 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.7, 64.65, 112.63, -5.37, 3.2, 31.438, 381.903 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.8, 67.03, 112.63, -5.38, 3.25, 31.879, 387.582 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 3.9, 69.44, 112.64, -5.38, 3.31, 32.324, 393.447 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4, 71.88, 112.65, -5.39, 3.37, 32.772, 399.391 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.1, 74.36, 112.66, -5.39, 3.43, 33.226, 405.539 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.2, 76.88, 112.66, -5.39, 3.49, 33.687, 411.832 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.3, 79.43, 112.67, -5.4, 3.55, 34.153, 418.267 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.4, 82.02, 112.68, -5.4, 3.61, 34.624, 424.982 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.5, 84.65, 112.69, -5.41, 3.67, 35.097, 431.65 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.6, 87.31, 112.7, -5.41, 3.73, 35.569, 438.323 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.7, 90.01, 112.71, -5.42, 3.79, 36.041, 444.967 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.8, 92.75, 112.71, -5.42, 3.85, 36.518, 451.972 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 4.9, 95.54, 112.72, -5.43, 3.91, 37.001, 459.075 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5, 98.36, 112.73, -5.43, 3.98, 37.482, 466.05 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.1, 101.22, 112.74, -5.44, 4.04, 37.961, 472.948 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.2, 104.13, 112.76, -5.44, 4.1, 38.442, 480.055 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.3, 105.31, 112.74, -5.45, 4.12, 4.196, 151.784 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.4, 106.28, 112.72, -5.47, 4.15, 4.598, 166.028 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.5, 107.29, 112.7, -5.48, 4.17, 4.962, 179.429 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.6, 108.34, 112.68, -5.49, 4.19, 5.297, 192.288 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.7, 109.43, 112.66, -5.5, 4.22, 5.618, 205.003 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.8, 110.57, 112.65, -5.51, 4.24, 5.918, 217.336 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 5.9, 111.75, 112.64, -5.53, 4.27, 6.194, 229.219 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6, 112.98, 112.62, -5.54, 4.3, 6.449, 240.673 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.1, 114.25, 112.61, -5.55, 4.34, 6.685, 251.666 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.2, 115.56, 112.6, -5.56, 4.37, 6.906, 262.399 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.3, 116.92, 112.59, -5.58, 4.4, 7.122, 273.289 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.4, 118.33, 112.59, -5.59, 4.44, 7.324, 283.884 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.5, 119.78, 112.58, -5.6, 4.48, 7.515, 294.127 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.6, 121.28, 112.57, -5.62, 4.52, 7.697, 304.29 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.7, 122.82, 112.57, -5.63, 4.56, 7.872, 314.413 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.8, 124.42, 112.57, -5.64, 4.6, 8.04, 324.295 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 6.9, 126.06, 112.57, -5.66, 4.64, 8.203, 333.99 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7, 127.75, 112.57, -5.67, 4.69, 8.363, 343.507 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.1, 129.49, 112.57, -5.68, 4.73, 8.523, 352.892 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.2, 131.28, 112.57, -5.7, 4.78, 8.682, 362.115 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.3, 133.12, 112.57, -5.71, 4.83, 8.844, 371.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.4, 135.01, 112.58, -5.73, 4.88, 9.011, 379.98 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.5, 136.95, 112.58, -5.74, 4.93, 9.184, 388.699 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.6, 138.94, 112.59, -5.75, 4.99, 9.372, 397.319 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.7, 140.99, 112.59, -5.77, 5.04, 9.57, 405.683 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.8, 143.08, 112.6, -5.78, 5.1, 9.779, 413.863 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 7.9, 145.23, 112.61, -5.8, 5.15, 10.002, 421.873 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8, 147.43, 112.62, -5.81, 5.21, 10.24, 429.709 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.1, 149.67, 112.63, -5.83, 5.27, 10.495, 437.371 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.2, 151.97, 112.64, -5.84, 5.33, 10.77, 444.886 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.3, 154.32, 112.66, -5.86, 5.39, 11.066, 452.279 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.4, 156.72, 112.67, -5.87, 5.46, 11.386, 459.539 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.5, 159.18, 112.68, -5.89, 5.52, 11.728, 466.603 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 ЛБ' AND ship_id=2), 8.55, 160.42, 112.69, -5.89, 5.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0, 0, 112.45, 5.07, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.1, 0.84, 112.45, 5.07, 1.15, 10.911, 144.231 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.2, 1.78, 112.45, 5.09, 1.2, 12.142, 159.531 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.3, 2.8, 112.45, 5.1, 1.26, 13.277, 173.557 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.4, 3.91, 112.46, 5.12, 1.31, 14.326, 186.449 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.5, 5.08, 112.47, 5.13, 1.37, 15.275, 197.959 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.6, 6.33, 112.47, 5.14, 1.42, 16.165, 208.712 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.7, 7.64, 112.48, 5.16, 1.48, 16.988, 218.577 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.8, 9.01, 112.49, 5.17, 1.54, 17.751, 227.617 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 0.9, 10.43, 112.5, 5.18, 1.59, 18.465, 236.048 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1, 11.91, 112.5, 5.19, 1.65, 19.122, 243.698 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.1, 13.43, 112.51, 5.2, 1.71, 19.75, 250.98 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.2, 14.99, 112.52, 5.21, 1.76, 20.34, 257.673 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.3, 16.6, 112.52, 5.22, 1.82, 20.906, 264.06 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.4, 18.24, 112.53, 5.23, 1.88, 21.444, 270.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.5, 19.93, 112.54, 5.23, 1.93, 21.965, 275.657 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.6, 21.64, 112.54, 5.24, 1.99, 22.46, 280.965 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.7, 23.39, 112.55, 5.25, 2.05, 22.936, 286.037 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.8, 25.18, 112.55, 5.26, 2.1, 23.405, 290.968 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 1.9, 26.99, 112.55, 5.26, 2.16, 23.86, 295.689 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2, 28.84, 112.56, 5.27, 2.22, 24.3, 300.244 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.1, 30.71, 112.56, 5.28, 2.28, 24.73, 304.691 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.2, 32.62, 112.56, 5.29, 2.33, 25.162, 309.152 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.3, 34.55, 112.57, 5.29, 2.39, 25.591, 313.612 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.4, 36.51, 112.57, 5.3, 2.45, 26.012, 318.029 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.5, 38.5, 112.57, 5.3, 2.5, 26.425, 322.403 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.6, 40.52, 112.58, 5.31, 2.56, 26.833, 326.781 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.7, 42.56, 112.58, 5.32, 2.62, 27.242, 331.254 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.8, 44.64, 112.58, 5.32, 2.67, 27.651, 335.845 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 2.9, 46.74, 112.59, 5.33, 2.73, 28.059, 340.484 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3, 48.88, 112.59, 5.33, 2.79, 28.466, 345.184 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.1, 51.04, 112.6, 5.34, 2.85, 28.876, 349.998 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.2, 53.23, 112.6, 5.34, 2.91, 29.292, 354.991 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.3, 55.45, 112.61, 5.35, 2.96, 29.716, 360.153 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.4, 57.7, 112.61, 5.36, 3.02, 30.141, 365.391 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.5, 59.98, 112.62, 5.36, 3.08, 30.568, 370.73 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.6, 62.3, 112.62, 5.37, 3.14, 31.001, 376.246 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.7, 64.65, 112.63, 5.37, 3.2, 31.438, 381.903 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.8, 67.03, 112.63, 5.38, 3.25, 31.879, 387.582 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 3.9, 69.44, 112.64, 5.38, 3.31, 32.324, 393.447 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4, 71.88, 112.65, 5.39, 3.37, 32.772, 399.391 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.1, 74.36, 112.66, 5.39, 3.43, 33.226, 405.539 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.2, 76.88, 112.66, 5.39, 3.49, 33.687, 411.832 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.3, 79.43, 112.67, 5.4, 3.55, 34.153, 418.267 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.4, 82.02, 112.68, 5.4, 3.61, 34.624, 424.982 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.5, 84.65, 112.69, 5.41, 3.67, 35.097, 431.65 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.6, 87.31, 112.7, 5.41, 3.73, 35.569, 438.323 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.7, 90.01, 112.71, 5.42, 3.79, 36.041, 444.967 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.8, 92.75, 112.71, 5.42, 3.85, 36.518, 451.972 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 4.9, 95.54, 112.72, 5.43, 3.91, 37.001, 459.075 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5, 98.36, 112.73, 5.43, 3.98, 37.482, 466.05 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.1, 101.22, 112.74, 5.44, 4.04, 37.961, 472.948 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.2, 104.13, 112.76, 5.44, 4.1, 38.442, 480.055 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.3, 105.31, 112.74, 5.45, 4.12, 4.196, 151.784 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.4, 106.28, 112.72, 5.47, 4.15, 4.598, 166.028 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.5, 107.29, 112.7, 5.48, 4.17, 4.962, 179.429 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.6, 108.34, 112.68, 5.49, 4.19, 5.297, 192.288 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.7, 109.43, 112.66, 5.5, 4.22, 5.618, 205.003 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.8, 110.57, 112.65, 5.51, 4.24, 5.918, 217.336 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 5.9, 111.75, 112.64, 5.53, 4.27, 6.194, 229.219 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6, 112.98, 112.62, 5.54, 4.3, 6.449, 240.673 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.1, 114.25, 112.61, 5.55, 4.34, 6.685, 251.666 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.2, 115.56, 112.6, 5.56, 4.37, 6.906, 262.399 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.3, 116.92, 112.59, 5.58, 4.4, 7.122, 273.289 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.4, 118.33, 112.59, 5.59, 4.44, 7.324, 283.884 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.5, 119.78, 112.58, 5.6, 4.48, 7.515, 294.127 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.6, 121.28, 112.57, 5.62, 4.52, 7.697, 304.29 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.7, 122.82, 112.57, 5.63, 4.56, 7.872, 314.413 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.8, 124.42, 112.57, 5.64, 4.6, 8.04, 324.295 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 6.9, 126.06, 112.57, 5.66, 4.64, 8.203, 333.99 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7, 127.75, 112.57, 5.67, 4.69, 8.363, 343.507 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.1, 129.49, 112.57, 5.68, 4.73, 8.523, 352.892 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.2, 131.28, 112.57, 5.7, 4.78, 8.682, 362.115 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.3, 133.12, 112.57, 5.71, 4.83, 8.844, 371.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.4, 135.01, 112.58, 5.73, 4.88, 9.011, 379.98 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.5, 136.95, 112.58, 5.74, 4.93, 9.184, 388.699 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.6, 138.94, 112.59, 5.75, 4.99, 9.372, 397.319 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.7, 140.99, 112.59, 5.77, 5.04, 9.57, 405.683 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.8, 143.08, 112.6, 5.78, 5.1, 9.779, 413.863 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 7.9, 145.23, 112.61, 5.8, 5.15, 10.002, 421.873 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8, 147.43, 112.62, 5.81, 5.21, 10.24, 429.709 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.1, 149.67, 112.63, 5.83, 5.27, 10.495, 437.371 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.2, 151.97, 112.64, 5.84, 5.33, 10.77, 444.886 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.3, 154.32, 112.66, 5.86, 5.39, 11.066, 452.279 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.4, 156.72, 112.67, 5.87, 5.46, 11.386, 459.539 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.5, 159.18, 112.68, 5.89, 5.52, 11.728, 466.603 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 1 Пр.Б' AND ship_id=2), 8.55, 160.42, 112.69, 5.89, 5.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0, 0, 87.28, -7.24, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.1, 4.23, 87.28, -7.24, 1.15, 6.041, 3792.78 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.2, 8.48, 87.33, -7.24, 1.2, 6.096, 3849.469 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.3, 12.76, 87.38, -7.24, 1.25, 6.144, 3897.334 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.4, 17.07, 87.42, -7.24, 1.3, 6.187, 3938.649 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.5, 21.39, 87.45, -7.24, 1.35, 6.225, 3974.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.6, 25.73, 87.49, -7.25, 1.4, 6.257, 4004.215 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.7, 30.08, 87.52, -7.25, 1.45, 6.286, 4030.271 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.8, 34.45, 87.54, -7.25, 1.5, 6.312, 4053.364 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 0.9, 38.82, 87.57, -7.25, 1.55, 6.335, 4073.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1, 43.2, 87.59, -7.25, 1.6, 6.355, 4091.726 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.1, 47.59, 87.61, -7.25, 1.65, 6.373, 4107.614 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.2, 51.99, 87.63, -7.25, 1.7, 6.389, 4121.864 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.3, 56.39, 87.65, -7.25, 1.76, 6.404, 4134.664 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.4, 60.8, 87.67, -7.25, 1.81, 6.418, 4146.157 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.5, 65.22, 87.68, -7.25, 1.86, 6.43, 4156.594 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.6, 69.63, 87.7, -7.25, 1.91, 6.442, 4166.219 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.7, 74.06, 87.71, -7.25, 1.96, 6.452, 4175.112 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.8, 78.48, 87.73, -7.25, 2.01, 6.463, 4183.501 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 1.9, 82.91, 87.74, -7.25, 2.06, 6.472, 4191.553 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2, 87.34, 87.75, -7.25, 2.11, 6.482, 4199.129 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.1, 91.78, 87.76, -7.25, 2.16, 6.491, 4206.187 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.2, 96.22, 87.77, -7.25, 2.21, 6.499, 4213.195 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.3, 100.66, 87.78, -7.25, 2.26, 6.508, 4219.977 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.4, 105.1, 87.79, -7.26, 2.31, 6.516, 4226.61 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.5, 109.55, 87.8, -7.26, 2.36, 6.524, 4232.874 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.6, 114, 87.81, -7.26, 2.41, 6.532, 4238.898 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.7, 118.45, 87.82, -7.26, 2.46, 6.54, 4244.746 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.8, 122.9, 87.82, -7.26, 2.51, 6.547, 4250.418 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 2.9, 127.36, 87.83, -7.26, 2.56, 6.554, 4255.953 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3, 131.82, 87.84, -7.26, 2.61, 6.561, 4261.266 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.1, 136.28, 87.85, -7.26, 2.66, 6.568, 4266.419 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.2, 140.74, 87.85, -7.26, 2.71, 6.575, 4271.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.3, 145.21, 87.86, -7.26, 2.76, 6.582, 4276.293 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.4, 149.68, 87.87, -7.26, 2.81, 6.588, 4280.929 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.5, 154.14, 87.87, -7.26, 2.86, 6.594, 4285.353 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.6, 158.61, 87.88, -7.26, 2.91, 6.6, 4289.576 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.7, 163.09, 87.89, -7.26, 2.96, 6.605, 4293.566 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.8, 167.56, 87.89, -7.26, 3.01, 6.611, 4297.281 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 3.9, 172.03, 87.9, -7.26, 3.06, 6.616, 4300.717 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4, 176.51, 87.9, -7.26, 3.12, 6.62, 4303.991 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.1, 180.99, 87.91, -7.26, 3.17, 6.625, 4307.112 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.2, 185.47, 87.91, -7.26, 3.22, 6.629, 4309.95 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.3, 189.95, 87.92, -7.26, 3.27, 6.633, 4312.499 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.4, 194.43, 87.92, -7.26, 3.32, 6.636, 4314.804 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.5, 198.91, 87.93, -7.26, 3.37, 6.64, 4316.929 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.6, 203.39, 87.93, -7.26, 3.42, 6.643, 4318.939 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.7, 207.87, 87.94, -7.26, 3.47, 6.646, 4320.838 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.8, 212.36, 87.94, -7.26, 3.52, 6.648, 4322.619 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 4.9, 216.84, 87.95, -7.26, 3.57, 6.651, 4324.23 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5, 221.33, 87.95, -7.26, 3.62, 6.653, 4325.69 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.1, 225.81, 87.95, -7.26, 3.67, 6.655, 4326.981 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.2, 230.3, 87.96, -7.26, 3.72, 6.657, 4328.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.3, 234.78, 87.96, -7.26, 3.77, 6.658, 4329.035 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.4, 239.27, 87.97, -7.26, 3.82, 6.66, 4329.86 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.5, 243.76, 87.97, -7.26, 3.87, 6.661, 4330.588 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.6, 248.24, 87.97, -7.26, 3.92, 6.662, 4331.221 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.7, 252.73, 87.98, -7.26, 3.97, 6.663, 4331.759 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.8, 257.22, 87.98, -7.26, 4.02, 6.663, 4332.203 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 5.9, 261.7, 87.98, -7.26, 4.07, 6.664, 4332.555 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6, 266.19, 87.99, -7.26, 4.12, 6.664, 4332.841 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.1, 270.68, 87.99, -7.26, 4.17, 6.665, 4333.069 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.2, 275.17, 87.99, -7.26, 4.22, 6.665, 4333.238 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.3, 279.66, 87.99, -7.26, 4.27, 6.665, 4333.36 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.4, 284.14, 88, -7.26, 4.32, 6.665, 4333.439 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.5, 288.63, 88, -7.26, 4.37, 6.665, 4333.476 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.6, 293.12, 88, -7.26, 4.42, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.7, 297.61, 88, -7.26, 4.47, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.8, 302.09, 88.01, -7.26, 4.52, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 6.9, 306.58, 88.01, -7.26, 4.57, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7, 311.07, 88.01, -7.26, 4.62, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.1, 315.56, 88.01, -7.26, 4.67, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.2, 320.05, 88.01, -7.26, 4.72, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.3, 324.53, 88.02, -7.26, 4.77, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.4, 329.02, 88.02, -7.26, 4.82, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.5, 333.51, 88.02, -7.26, 4.87, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.6, 338, 88.02, -7.26, 4.92, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.7, 342.48, 88.02, -7.26, 4.97, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.8, 346.97, 88.03, -7.26, 5.02, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 7.9, 351.46, 88.03, -7.26, 5.07, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8, 355.95, 88.03, -7.26, 5.12, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.1, 360.44, 88.03, -7.26, 5.17, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.2, 364.92, 88.03, -7.26, 5.22, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.3, 369.41, 88.03, -7.26, 5.27, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.4, 373.9, 88.04, -7.26, 5.33, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.5, 378.39, 88.04, -7.26, 5.38, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 ЛБ' AND ship_id=2), 8.55, 380.63, 88.04, -7.26, 5.4, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0, 0, 87.28, 7.24, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.1, 4.23, 87.28, 7.24, 1.15, 6.041, 3792.78 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.2, 8.48, 87.33, 7.24, 1.2, 6.096, 3849.469 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.3, 12.76, 87.38, 7.24, 1.25, 6.144, 3897.334 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.4, 17.07, 87.42, 7.24, 1.3, 6.187, 3938.649 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.5, 21.39, 87.45, 7.24, 1.35, 6.225, 3974.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.6, 25.73, 87.49, 7.25, 1.4, 6.257, 4004.215 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.7, 30.08, 87.52, 7.25, 1.45, 6.286, 4030.271 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.8, 34.45, 87.54, 7.25, 1.5, 6.312, 4053.364 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 0.9, 38.82, 87.57, 7.25, 1.55, 6.335, 4073.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1, 43.2, 87.59, 7.25, 1.6, 6.355, 4091.726 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.1, 47.59, 87.61, 7.25, 1.65, 6.373, 4107.614 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.2, 51.99, 87.63, 7.25, 1.7, 6.389, 4121.864 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.3, 56.393, 87.65, 7.25, 1.76, 6.404, 4134.664 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.4, 60.8, 87.67, 7.25, 1.81, 6.418, 4146.157 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.5, 65.22, 87.68, 7.25, 1.86, 6.43, 4156.594 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.6, 69.63, 87.7, 7.25, 1.91, 6.442, 4166.219 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.7, 74.055, 87.71, 7.25, 1.96, 6.452, 4175.112 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.8, 78.48, 87.73, 7.25, 2.01, 6.463, 4183.501 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 1.9, 82.91, 87.74, 7.25, 2.06, 6.472, 4191.553 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2, 87.34, 87.75, 7.25, 2.11, 6.482, 4199.129 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.1, 91.78, 87.76, 7.25, 2.16, 6.491, 4206.187 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.2, 96.22, 87.77, 7.25, 2.21, 6.499, 4213.195 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.3, 100.66, 87.78, 7.25, 2.26, 6.508, 4219.977 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.4, 105.1, 87.79, 7.26, 2.31, 6.516, 4226.61 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.5, 109.55, 87.8, 7.26, 2.36, 6.524, 4232.874 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.6, 114, 87.81, 7.26, 2.41, 6.532, 4238.898 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.7, 118.45, 87.82, 7.26, 2.46, 6.54, 4244.746 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.8, 122.9, 87.82, 7.26, 2.51, 6.547, 4250.418 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 2.9, 127.36, 87.83, 7.26, 2.56, 6.554, 4255.953 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3, 131.82, 87.84, 7.26, 2.61, 6.561, 4261.266 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.1, 136.28, 87.85, 7.26, 2.66, 6.568, 4266.419 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.2, 140.74, 87.85, 7.26, 2.71, 6.575, 4271.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.3, 145.21, 87.86, 7.26, 2.76, 6.582, 4276.293 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.4, 149.68, 87.87, 7.26, 2.81, 6.588, 4280.929 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.5, 154.14, 87.87, 7.26, 2.86, 6.594, 4285.353 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.6, 158.61, 87.88, 7.26, 2.91, 6.6, 4289.576 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.7, 163.09, 87.89, 7.26, 2.96, 6.605, 4293.566 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.8, 167.56, 87.89, 7.26, 3.01, 6.611, 4297.281 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 3.9, 172.03, 87.9, 7.26, 3.06, 6.616, 4300.717 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4, 176.51, 87.9, 7.26, 3.12, 6.62, 4303.991 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.1, 180.99, 87.91, 7.26, 3.17, 6.625, 4307.112 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.2, 185.47, 87.91, 7.26, 3.22, 6.699, 4309.95 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.3, 189.95, 87.92, 7.26, 3.27, 6.633, 4312.499 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.4, 194.43, 87.92, 7.26, 3.32, 6.636, 4314.804 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.5, 198.91, 87.93, 7.26, 3.37, 6.64, 4316.929 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.6, 203.39, 87.93, 7.26, 3.42, 6.643, 4318.939 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.7, 207.87, 87.94, 7.26, 3.47, 6.646, 4320.838 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.8, 212.36, 87.94, 7.26, 3.52, 6.648, 4322.619 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 4.9, 216.84, 87.95, 7.26, 3.57, 6.651, 4324.23 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5, 221.33, 87.95, 7.26, 3.62, 6.653, 4325.69 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.1, 225.81, 87.95, 7.26, 3.67, 6.655, 4326.981 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.2, 230.3, 87.96, 7.26, 3.72, 6.657, 4328.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.3, 234.78, 87.96, 7.26, 3.77, 6.658, 4329.035 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.4, 239.27, 87.97, 7.26, 3.82, 6.66, 4329.86 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.5, 243.76, 87.97, 7.26, 3.87, 6.661, 4330.588 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.6, 248.24, 87.97, 7.26, 3.92, 6.662, 4331.221 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.7, 252.73, 87.98, 7.26, 3.97, 6.663, 4331.759 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.8, 257.22, 87.98, 7.26, 4.02, 6.663, 4332.203 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 5.9, 261.7, 87.98, 7.26, 4.07, 6.664, 4332.555 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6, 266.19, 87.99, 7.26, 4.12, 6.664, 4332.841 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.1, 270.68, 87.99, 7.26, 4.17, 6.665, 4333.069 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.2, 275.17, 87.99, 7.26, 4.22, 6.665, 4333.238 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.3, 279.66, 87.99, 7.26, 4.27, 6.665, 4333.36 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.4, 284.14, 88, 7.26, 4.32, 6.665, 4333.439 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.5, 288.63, 88, 7.26, 4.37, 6.665, 4333.476 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.6, 293.12, 88, 7.26, 4.42, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.7, 297.61, 88, 7.26, 4.47, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.8, 302.09, 88.01, 7.26, 4.52, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 6.9, 306.58, 88.01, 7.26, 4.57, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7, 311.07, 88.01, 7.26, 4.62, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.1, 315.56, 88.01, 7.26, 4.67, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.2, 320.05, 88.01, 7.26, 4.72, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.3, 324.53, 88.02, 7.26, 4.77, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.4, 329.02, 88.02, 7.26, 4.82, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.5, 333.51, 88.02, 7.26, 4.87, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.6, 338, 88.02, 7.26, 4.92, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.7, 342.48, 88.02, 7.26, 4.97, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.8, 346.97, 88.03, 7.26, 5.02, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 7.9, 351.46, 88.03, 7.26, 5.07, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8, 355.95, 88.03, 7.26, 5.12, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.1, 360.44, 88.03, 7.26, 5.17, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.2, 364.92, 88.03, 7.26, 5.22, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.3, 369.41, 88.03, 7.26, 5.27, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.4, 373.9, 88.04, 7.26, 5.33, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.5, 378.39, 88.04, 7.26, 5.38, 6.665, 4333.478 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 2 Пр.Б' AND ship_id=2), 8.55, 380.63, 88.04, 7.26, 5.4, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0, 0, 59.67, -7.27, 1.16, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.1, 3.03, 59.67, -7.27, 1.16, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.2, 6.06, 59.67, -7.27, 1.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.3, 9.1, 59.67, -7.27, 1.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.4, 12.13, 59.67, -7.27, 1.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.5, 15.16, 59.67, -7.27, 1.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.6, 18.19, 59.67, -7.27, 1.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.7, 21.22, 59.67, -7.27, 1.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.8, 24.26, 59.67, -7.27, 1.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 0.9, 27.29, 59.67, -7.27, 1.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1, 30.32, 59.67, -7.27, 1.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.1, 33.35, 59.67, -7.27, 1.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.2, 36.38, 59.67, -7.27, 1.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.3, 39.41, 59.67, -7.27, 1.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.4, 42.45, 59.67, -7.27, 1.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.5, 45.48, 59.67, -7.27, 1.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.6, 48.51, 59.67, -7.27, 1.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.7, 51.54, 59.67, -7.27, 1.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.8, 54.57, 59.67, -7.27, 2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 1.9, 57.61, 59.67, -7.27, 2.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2, 60.64, 59.67, -7.27, 2.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.1, 63.67, 59.67, -7.27, 2.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.2, 66.7, 59.67, -7.27, 2.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.3, 69.73, 59.67, -7.27, 2.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.4, 72.76, 59.67, -7.27, 2.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.5, 75.8, 59.67, -7.27, 2.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.6, 78.83, 59.67, -7.27, 2.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.7, 81.86, 59.67, -7.27, 2.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.8, 84.89, 59.67, -7.27, 2.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 2.9, 87.92, 59.67, -7.27, 2.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3, 90.96, 59.67, -7.27, 2.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.1, 93.99, 59.67, -7.27, 2.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.2, 97.02, 59.67, -7.27, 2.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.3, 100.05, 59.67, -7.27, 2.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.4, 103.08, 59.67, -7.27, 2.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.5, 106.11, 59.67, -7.27, 2.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.6, 109.15, 59.67, -7.27, 2.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.7, 112.18, 59.67, -7.27, 2.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.8, 115.21, 59.67, -7.27, 3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 3.9, 118.24, 59.67, -7.27, 3.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4, 121.27, 59.67, -7.27, 3.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.1, 124.31, 59.67, -7.27, 3.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.2, 127.34, 59.67, -7.27, 3.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.3, 130.37, 59.67, -7.27, 3.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.4, 133.4, 59.67, -7.27, 3.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.5, 136.43, 59.67, -7.27, 3.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.6, 139.46, 59.67, -7.27, 3.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.7, 142.5, 59.67, -7.27, 3.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.8, 145.53, 59.67, -7.27, 3.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 4.9, 148.56, 59.67, -7.27, 3.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5, 151.59, 59.67, -7.27, 3.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.1, 154.62, 59.67, -7.27, 3.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.2, 157.66, 59.67, -7.27, 3.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.3, 160.69, 59.67, -7.27, 3.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.4, 163.72, 59.67, -7.27, 3.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.5, 166.75, 59.67, -7.27, 3.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.6, 169.78, 59.67, -7.27, 3.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.7, 172.82, 59.67, -7.27, 3.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.8, 175.85, 59.67, -7.27, 4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 5.9, 178.88, 59.67, -7.27, 4.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6, 181.91, 59.67, -7.27, 4.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.1, 184.94, 59.67, -7.27, 4.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.2, 187.97, 59.67, -7.27, 4.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.3, 191.01, 59.67, -7.27, 4.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.4, 194.04, 59.67, -7.27, 4.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.5, 197.07, 59.67, -7.27, 4.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.6, 200.1, 59.67, -7.27, 4.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.7, 203.13, 59.67, -7.27, 4.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.8, 206.17, 59.67, -7.27, 4.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 6.9, 209.2, 59.67, -7.27, 4.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7, 212.23, 59.67, -7.27, 4.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.1, 215.26, 59.67, -7.27, 4.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.2, 218.29, 59.67, -7.27, 4.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.3, 221.32, 59.67, -7.27, 4.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.4, 224.36, 59.67, -7.27, 4.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.5, 227.39, 59.67, -7.27, 4.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.6, 230.42, 59.67, -7.27, 4.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.7, 233.45, 59.67, -7.27, 4.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.8, 236.48, 59.67, -7.27, 5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 7.9, 239.52, 59.67, -7.27, 5.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8, 242.55, 59.67, -7.27, 5.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.1, 245.58, 59.67, -7.27, 5.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.2, 248.61, 59.67, -7.27, 5.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.3, 251.64, 59.67, -7.27, 5.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.4, 254.67, 59.67, -7.27, 5.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.5, 257.71, 59.67, -7.27, 5.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 ЛБ' AND ship_id=2), 8.55, 259.22, 59.67, -7.27, 5.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0, 0, 59.67, 7.27, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.1, 3.03, 59.67, 7.27, 1.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.2, 6.06, 59.67, 7.27, 1.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.3, 9.1, 59.67, 7.27, 1.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.4, 12.13, 59.67, 7.27, 1.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.5, 15.16, 59.67, 7.27, 1.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.6, 18.19, 59.67, 7.27, 1.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.7, 21.22, 59.67, 7.27, 1.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.8, 24.26, 59.67, 7.27, 1.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 0.9, 27.29, 59.67, 7.27, 1.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1, 30.32, 59.67, 7.27, 1.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.1, 33.35, 59.67, 7.27, 1.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.2, 36.38, 59.67, 7.27, 1.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.3, 39.41, 59.67, 7.27, 1.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.4, 42.45, 59.67, 7.27, 1.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.5, 45.48, 59.67, 7.27, 1.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.6, 48.51, 59.67, 7.27, 1.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.7, 51.54, 59.67, 7.27, 1.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.8, 54.57, 59.67, 7.27, 2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 1.9, 57.61, 59.67, 7.27, 2.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2, 60.64, 59.67, 7.27, 2.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.1, 63.67, 59.67, 7.27, 2.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.2, 66.7, 59.67, 7.27, 2.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.3, 69.73, 59.67, 7.27, 2.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.4, 72.76, 59.67, 7.27, 2.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.5, 75.8, 59.67, 7.27, 2.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.6, 78.83, 59.67, 7.27, 2.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.7, 81.86, 59.67, 7.27, 2.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.8, 84.89, 59.67, 7.27, 2.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 2.9, 87.92, 59.67, 7.27, 2.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3, 90.96, 59.67, 7.27, 2.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.1, 93.99, 59.67, 7.27, 2.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.2, 97.02, 59.67, 7.27, 2.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.3, 100.05, 59.67, 7.27, 2.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.4, 103.08, 59.67, 7.27, 2.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.5, 106.11, 59.67, 7.27, 2.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.6, 109.15, 59.67, 7.27, 2.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.7, 112.18, 59.67, 7.27, 2.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.8, 115.21, 59.67, 7.27, 3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 3.9, 118.24, 59.67, 7.27, 3.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4, 121.27, 59.67, 7.27, 3.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.1, 124.31, 59.67, 7.27, 3.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.2, 127.34, 59.67, 7.27, 3.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.3, 130.37, 59.67, 7.27, 3.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.4, 133.4, 59.67, 7.27, 3.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.5, 136.43, 59.67, 7.27, 3.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.6, 139.46, 59.67, 7.27, 3.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.7, 142.5, 59.67, 7.27, 3.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.8, 145.53, 59.67, 7.27, 3.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 4.9, 148.56, 59.67, 7.27, 3.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5, 151.59, 59.67, 7.27, 3.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.1, 154.62, 59.67, 7.27, 3.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.2, 157.66, 59.67, 7.27, 3.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.3, 160.69, 59.67, 7.27, 3.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.4, 163.72, 59.67, 7.27, 3.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.5, 166.75, 59.67, 7.27, 3.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.6, 169.78, 59.67, 7.27, 3.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.7, 172.82, 59.67, 7.27, 3.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.8, 175.85, 59.67, 7.27, 4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 5.9, 178.88, 59.67, 7.27, 4.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6, 181.91, 59.67, 7.27, 4.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.1, 184.94, 59.67, 7.27, 4.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.2, 187.97, 59.67, 7.27, 4.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.3, 191.01, 59.67, 7.27, 4.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.4, 194.04, 59.67, 7.27, 4.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.5, 197.07, 59.67, 7.27, 4.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.6, 200.1, 59.67, 7.27, 4.4, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.7, 203.13, 59.67, 7.27, 4.45, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.8, 206.17, 59.67, 7.27, 4.5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 6.9, 209.2, 59.67, 7.27, 4.55, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7, 212.23, 59.67, 7.27, 4.6, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.1, 215.26, 59.67, 7.27, 4.65, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.2, 218.29, 59.67, 7.27, 4.7, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.3, 221.32, 59.67, 7.27, 4.75, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.4, 224.36, 59.67, 7.27, 4.8, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.5, 227.39, 59.67, 7.27, 4.85, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.6, 230.42, 59.67, 7.27, 4.9, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.7, 233.45, 59.67, 7.27, 4.95, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.8, 236.48, 59.67, 7.27, 5, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 7.9, 239.52, 59.67, 7.27, 5.05, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8, 242.55, 59.67, 7.27, 5.1, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.1, 245.58, 59.67, 7.27, 5.15, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.2, 248.61, 59.67, 7.27, 5.2, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.3, 251.64, 59.67, 7.27, 5.25, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.4, 254.67, 59.67, 7.27, 5.3, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.5, 257.71, 59.67, 7.27, 5.35, 4.503, 1329.569 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 3 Пр.Б' AND ship_id=2), 8.55, 259.22, 59.67, 7.27, 5.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0, 0, 42.28, -7.27, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.1, 1.57, 42.28, -7.27, 1.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.2, 3.13, 42.28, -7.27, 1.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.3, 4.7, 42.28, -7.27, 1.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.4, 6.26, 42.28, -7.27, 1.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.5, 7.83, 42.28, -7.27, 1.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.6, 9.39, 42.28, -7.27, 1.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.7, 10.96, 42.28, -7.27, 1.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.8, 12.52, 42.28, -7.27, 1.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 0.9, 14.09, 42.28, -7.27, 1.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1, 15.65, 42.28, -7.27, 1.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.1, 17.22, 42.28, -7.27, 1.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.2, 18.78, 42.28, -7.27, 1.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.3, 20.35, 42.28, -7.27, 1.75, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.4, 21.91, 42.28, -7.27, 1.8, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.5, 23.48, 42.28, -7.27, 1.85, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.6, 25.04, 42.28, -7.27, 1.9, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.7, 26.61, 42.28, -7.27, 1.95, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.8, 28.17, 42.28, -7.27, 2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 1.9, 29.74, 42.28, -7.27, 2.05, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2, 31.3, 42.28, -7.27, 2.1, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.1, 32.87, 42.28, -7.27, 2.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.2, 34.44, 42.28, -7.27, 2.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.3, 36, 42.28, -7.27, 2.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.4, 37.57, 42.28, -7.27, 2.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.5, 39.13, 42.28, -7.27, 2.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.6, 40.7, 42.28, -7.27, 2.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.7, 42.26, 42.28, -7.27, 2.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.8, 43.83, 42.28, -7.27, 2.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 2.9, 45.39, 42.28, -7.27, 2.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3, 46.96, 42.28, -7.27, 2.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.1, 48.52, 42.28, -7.27, 2.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.2, 50.09, 42.28, -7.27, 2.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.3, 51.65, 42.28, -7.27, 2.75, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.4, 53.22, 42.28, -7.27, 2.8, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.5, 54.78, 42.28, -7.27, 2.85, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.6, 56.35, 42.28, -7.27, 2.9, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.7, 57.91, 42.28, -7.27, 2.95, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.8, 59.48, 42.28, -7.27, 3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 3.9, 61.04, 42.28, -7.27, 3.05, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4, 62.61, 42.28, -7.27, 3.1, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.1, 64.17, 42.28, -7.27, 3.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.2, 65.74, 42.28, -7.27, 3.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.3, 67.3, 42.28, -7.27, 3.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.4, 68.87, 42.28, -7.27, 3.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.5, 70.44, 42.28, -7.27, 3.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.6, 72, 42.28, -7.27, 3.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.7, 73.57, 42.28, -7.27, 3.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.8, 75.13, 42.28, -7.27, 3.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 4.9, 76.7, 42.28, -7.27, 3.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5, 78.26, 42.28, -7.27, 3.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.1, 79.83, 42.28, -7.27, 3.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.2, 81.39, 42.28, -7.27, 3.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.3, 84.97, 41.93, -7.27, 3.81, 5.694, 2800.875 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.4, 88.86, 41.56, -7.27, 3.93, 5.706, 2807.152 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.5, 92.74, 41.23, -7.27, 4.04, 5.717, 2812.831 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.6, 96.63, 40.91, -7.27, 4.14, 5.727, 2817.975 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.7, 100.53, 40.62, -7.27, 4.24, 5.737, 2822.675 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.8, 104.42, 40.36, -7.27, 4.34, 5.745, 2826.907 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 5.9, 108.32, 40.11, -7.27, 4.43, 5.754, 2830.731 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6, 112.22, 39.88, -7.27, 4.53, 5.761, 2834.247 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.1, 116.12, 39.66, -7.27, 4.61, 5.768, 2837.45 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.2, 120.03, 39.46, -7.27, 4.7, 5.774, 2840.314 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.3, 123.93, 39.27, -7.27, 4.78, 5.78, 2842.849 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.4, 127.84, 39.09, -7.27, 4.86, 5.785, 2845.048 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.5, 131.74, 38.92, -7.27, 4.94, 5.789, 2846.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.6, 135.65, 38.76, -7.27, 5.02, 5.792, 2848.546 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.7, 139.56, 38.61, -7.27, 5.1, 5.796, 2849.989 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.8, 143.47, 38.47, -7.27, 5.17, 5.799, 2851.222 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 6.9, 147.38, 38.34, -7.27, 5.25, 5.801, 2852.251 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7, 151.29, 38.21, -7.27, 5.32, 5.803, 2853.149 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.1, 155.2, 38.09, -7.27, 5.39, 5.805, 2853.926 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.2, 159.11, 37.97, -7.27, 5.46, 5.806, 2854.579 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.3, 163.03, 37.86, -7.27, 5.53, 5.807, 2855.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.4, 166.94, 37.76, -7.27, 5.6, 5.808, 2855.52 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.5, 170.85, 37.66, -7.27, 5.67, 5.809, 2855.886 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.6, 174.76, 37.56, -7.27, 5.73, 5.81, 2856.192 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.7, 178.68, 37.47, -7.27, 5.8, 5.81, 2856.436 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.8, 182.59, 37.39, -7.27, 5.87, 5.811, 2856.616 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 7.9, 186.5, 37.3, -7.27, 5.93, 5.811, 2856.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8, 190.41, 37.22, -7.27, 5.99, 5.811, 2856.849 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.1, 194.33, 37.15, -7.27, 6.06, 5.811, 2856.926 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.2, 198.24, 37.07, -7.27, 6.12, 5.811, 2856.979 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.3, 202.15, 37, -7.27, 6.18, 5.812, 2857.014 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.4, 206.07, 36.93, -7.27, 6.25, 5.812, 2857.033 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.5, 209.98, 36.87, -7.27, 6.31, 5.812, 2857.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 ЛБ' AND ship_id=2), 8.55, 211.94, 36.83, -7.27, 6.34, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0, 0, 42.28, 7.27, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.1, 1.57, 42.28, 7.27, 1.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.2, 3.13, 42.28, 7.27, 1.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.3, 4.7, 42.28, 7.27, 1.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.4, 6.26, 42.28, 7.27, 1.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.5, 7.83, 42.28, 7.27, 1.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.6, 9.39, 42.28, 7.27, 1.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.7, 10.96, 42.28, 7.27, 1.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.8, 12.52, 42.28, 7.27, 1.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 0.9, 14.09, 42.28, 7.27, 1.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1, 15.65, 42.28, 7.27, 1.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.1, 17.22, 42.28, 7.27, 1.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.2, 18.78, 42.28, 7.27, 1.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.3, 20.35, 42.28, 7.27, 1.75, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.4, 21.91, 42.28, 7.27, 1.8, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.5, 23.48, 42.28, 7.27, 1.85, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.6, 25.34, 42.28, 7.27, 1.9, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.7, 26.61, 42.28, 7.27, 1.95, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.8, 28.17, 42.28, 7.27, 2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 1.9, 29.74, 42.28, 7.27, 2.05, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2, 31.3, 42.28, 7.27, 2.1, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.1, 32.87, 42.28, 7.27, 2.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.2, 34.44, 42.28, 7.27, 2.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.3, 36, 42.28, 7.27, 2.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.4, 37.57, 42.28, 7.27, 2.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.5, 39.13, 42.28, 7.27, 2.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.6, 40.7, 42.28, 7.27, 2.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.7, 42.26, 42.28, 7.27, 2.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.8, 43.83, 42.28, 7.27, 2.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 2.9, 45.39, 42.28, 7.27, 2.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3, 46.96, 42.28, 7.27, 2.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.1, 48.52, 42.28, 7.27, 2.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.2, 50.09, 42.28, 7.27, 2.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.3, 51.65, 42.28, 7.27, 2.75, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.4, 53.22, 42.28, 7.27, 2.8, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.5, 54.78, 42.28, 7.27, 2.85, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.6, 56.35, 42.28, 7.27, 2.9, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.7, 57.91, 42.28, 7.27, 2.95, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.8, 59.48, 42.28, 7.27, 3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 3.9, 61.04, 42.28, 7.27, 3.05, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4, 62.61, 42.28, 7.27, 3.1, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.1, 64.17, 42.28, 7.27, 3.15, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.2, 65.74, 42.28, 7.27, 3.2, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.3, 67.3, 42.28, 7.27, 3.25, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.4, 68.87, 42.28, 7.27, 3.3, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.5, 70.44, 42.28, 7.27, 3.35, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.6, 72, 42.28, 7.27, 3.4, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.7, 73.57, 42.28, 7.27, 3.45, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.8, 75.13, 42.28, 7.27, 3.5, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 4.9, 76.7, 42.28, 7.27, 3.55, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5, 78.26, 42.28, 7.27, 3.6, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.1, 79.83, 42.28, 7.27, 3.65, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.2, 81.39, 42.28, 7.27, 3.7, 2.325, 182.85 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.3, 84.97, 41.93, 7.27, 3.81, 5.694, 2800.875 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.4, 88.86, 41.56, 7.27, 3.93, 5.706, 2807.152 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.5, 92.74, 41.23, 7.27, 4.04, 5.717, 2812.831 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.6, 96.63, 40.91, 7.27, 4.14, 5.727, 2817.975 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.7, 100.53, 40.62, 7.27, 4.24, 5.737, 2822.675 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.8, 104.42, 40.36, 7.27, 4.34, 5.745, 2826.907 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 5.9, 108.32, 40.11, 7.27, 4.43, 5.754, 2830.731 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6, 112.22, 39.88, 7.27, 4.53, 5.761, 2834.247 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.1, 116.12, 39.66, 7.27, 4.61, 5.768, 2837.45 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.2, 120.03, 39.46, 7.27, 4.7, 5.774, 2840.314 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.3, 123.93, 39.27, 7.27, 4.78, 5.78, 2842.849 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.4, 127.84, 39.09, 7.27, 4.86, 5.785, 2845.048 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.5, 131.74, 38.92, 7.27, 4.94, 5.789, 2846.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.6, 135.65, 38.76, 7.27, 5.02, 5.792, 2848.546 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.7, 139.56, 38.61, 7.27, 5.1, 5.796, 2849.989 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.8, 143.47, 38.47, 7.27, 5.17, 5.799, 2851.222 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 6.9, 147.38, 38.34, 7.27, 5.25, 5.801, 2852.251 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7, 151.29, 38.21, 7.27, 5.32, 5.803, 2853.149 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.1, 155.2, 38.09, 7.27, 5.39, 5.805, 2853.926 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.2, 159.11, 37.97, 7.27, 5.46, 5.806, 2854.579 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.3, 163.03, 37.86, 7.27, 5.53, 5.807, 2855.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.4, 166.94, 37.76, 7.27, 5.6, 5.808, 2855.52 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.5, 170.85, 37.66, 7.27, 5.67, 5.809, 2855.886 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.6, 174.76, 37.56, 7.27, 5.73, 5.81, 2856.192 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.7, 178.68, 37.47, 7.27, 5.8, 5.81, 2856.436 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.8, 182.59, 37.39, 7.27, 5.87, 5.811, 2856.616 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 7.9, 186.5, 37.3, 7.27, 5.93, 5.811, 2856.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8, 190.41, 37.22, 7.27, 5.99, 5.811, 2856.849 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.1, 194.33, 37.15, 7.27, 6.06, 5.811, 2856.926 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.2, 198.24, 37.07, 7.27, 6.12, 5.811, 2856.979 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.3, 202.15, 37, 7.27, 6.18, 5.812, 2857.014 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.4, 206.07, 36.93, 7.27, 6.25, 5.812, 2857.033 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.5, 209.98, 36.87, 7.27, 6.31, 5.812, 2857.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 4 Пр.Б' AND ship_id=2), 8.55, 211.94, 36.83, 7.27, 6.34, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0, 0, 29.64, -6.86, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.1, 1.46, 29.64, -6.86, 1.15, 9.488, 358.257 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.2, 3.01, 29.46, -6.84, 1.2, 10.36, 394.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.3, 4.64, 29.3, -6.83, 1.25, 11.095, 427.187 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.4, 6.35, 29.16, -6.82, 1.31, 11.712, 455.724 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.5, 8.14, 29.03, -6.82, 1.36, 12.242, 481.447 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.6, 9.99, 28.9, -6.81, 1.41, 12.702, 504.793 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.7, 11.91, 28.79, -6.8, 1.47, 13.102, 526.098 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.8, 13.89, 28.68, -6.8, 1.52, 13.455, 545.943 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 0.9, 15.92, 28.58, -6.79, 1.58, 13.77, 564.53 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1, 18.01, 28.48, -6.79, 1.63, 14.05, 581.968 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.1, 20.16, 28.4, -6.79, 1.69, 14.3, 598.343 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.2, 22.35, 28.31, -6.79, 1.74, 14.524, 613.814 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.3, 24.59, 28.23, -6.78, 1.8, 14.726, 628.468 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.4, 26.87, 28.15, -6.78, 1.85, 14.91, 642.348 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.5, 29.2, 28.08, -6.78, 1.91, 15.076, 655.519 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.6, 31.57, 28.01, -6.78, 1.97, 15.228, 668.018 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.7, 33.98, 27.94, -6.78, 2.02, 15.368, 679.931 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.8, 36.43, 27.88, -6.78, 2.08, 15.497, 691.304 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 1.9, 38.92, 27.82, -6.78, 2.13, 15.618, 702.151 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2, 41.44, 27.76, -6.78, 2.19, 15.732, 712.495 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.1, 43.99, 27.7, -6.78, 2.24, 15.838, 722.354 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.2, 46.57, 27.64, -6.78, 2.3, 15.94, 731.79 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.3, 49.19, 27.59, -6.78, 2.36, 16.038, 740.822 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.4, 51.83, 27.54, -6.78, 2.41, 16.132, 749.451 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.5, 54.5, 27.49, -6.78, 2.47, 16.223, 757.678 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.6, 57.2, 27.45, -6.79, 2.52, 16.312, 765.514 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.7, 59.23, 27.48, -6.8, 2.57, 2.776, 414.27 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.8, 61.2, 27.51, -6.81, 2.61, 2.807, 427.787 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 2.9, 63.2, 27.55, -6.83, 2.65, 2.836, 440.511 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3, 65.21, 27.57, -6.84, 2.69, 2.862, 452.5 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.1, 67.25, 27.6, -6.85, 2.74, 2.886, 463.794 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.2, 69.31, 27.62, -6.86, 2.78, 2.909, 474.405 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.3, 71.38, 27.63, -6.87, 2.83, 2.931, 484.388 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.4, 73.48, 27.65, -6.88, 2.87, 2.953, 493.749 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.5, 75.59, 27.66, -6.89, 2.92, 2.974, 502.498 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.6, 77.71, 27.67, -6.9, 2.97, 2.995, 510.702 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.7, 79.85, 27.68, -6.91, 3.02, 3.016, 518.348 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.8, 82, 27.69, -6.92, 3.06, 3.037, 525.48 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 3.9, 84.16, 27.7, -6.93, 3.11, 3.057, 532.127 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4, 86.34, 27.7, -6.93, 3.16, 3.077, 538.283 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.1, 88.52, 27.7, -6.94, 3.21, 3.097, 544.01 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.2, 90.72, 27.71, -6.95, 3.26, 3.117, 549.314 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.3, 92.93, 27.71, -6.96, 3.31, 3.137, 554.24 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.4, 95.14, 27.71, -6.96, 3.36, 3.156, 558.8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.5, 97.36, 27.71, -6.97, 3.41, 3.174, 563.005 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.6, 99.59, 27.71, -6.98, 3.46, 3.192, 566.9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.7, 101.83, 27.71, -6.98, 3.51, 3.209, 570.483 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.8, 104.07, 27.71, -6.99, 3.56, 3.226, 573.799 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 4.9, 106.32, 27.71, -6.99, 3.61, 3.242, 576.851 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 5, 108.57, 27.71, -7, 3.66, 3.257, 579.641 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 5.1, 110.83, 27.7, -7, 3.71, 3.272, 582.199 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 5.2, 113.1, 27.7, -7.01, 3.76, 3.285, 584.534 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 ЛБ' AND ship_id=2), 5.21, 113.39, 27.7, -7.01, 3.77, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0, 0, 29.64, 6.86, 1.15, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.1, 1.46, 29.64, 6.86, 1.15, 9.488, 358.257 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.2, 3.01, 29.46, 6.84, 1.2, 10.36, 394.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.3, 4.64, 29.3, 6.83, 1.25, 11.095, 427.187 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.4, 6.35, 29.16, 6.82, 1.31, 11.712, 455.724 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.5, 8.14, 29.03, 6.82, 1.36, 12.242, 481.447 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.6, 9.99, 28.9, 6.81, 1.41, 12.702, 504.793 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.7, 11.91, 28.79, 6.8, 1.47, 13.102, 526.098 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.8, 13.89, 28.68, 6.8, 1.52, 13.455, 545.943 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 0.9, 15.92, 28.58, 6.79, 1.58, 13.77, 564.53 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1, 18.01, 28.48, 6.79, 1.63, 14.05, 581.968 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.1, 20.16, 28.4, 6.79, 1.69, 14.3, 598.343 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.2, 22.35, 28.31, 6.79, 1.74, 14.524, 613.814 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.3, 24.59, 28.23, 6.78, 1.8, 14.726, 628.468 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.4, 26.87, 28.15, 6.78, 1.85, 14.91, 642.348 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.5, 29.2, 28.08, 6.78, 1.91, 15.076, 655.519 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.6, 31.57, 28.01, 6.78, 1.97, 15.228, 668.018 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.7, 33.98, 27.94, 6.78, 2.02, 15.368, 679.931 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.8, 36.43, 27.88, 6.78, 2.08, 15.497, 691.304 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 1.9, 38.92, 27.82, 6.78, 2.13, 15.618, 702.151 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2, 41.44, 27.76, 6.78, 2.19, 15.732, 712.495 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.1, 43.99, 27.7, 6.78, 2.24, 15.838, 722.354 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.2, 46.57, 27.64, 6.78, 2.3, 15.94, 731.79 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.3, 49.19, 27.59, 6.78, 2.36, 16.038, 740.822 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.4, 51.83, 27.54, 6.78, 2.41, 16.132, 749.451 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.5, 54.5, 27.49, 6.78, 2.47, 16.223, 757.678 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.6, 57.2, 27.45, 6.79, 2.52, 16.312, 765.514 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.7, 59.23, 27.48, 6.8, 2.57, 2.776, 414.27 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.8, 61.2, 27.51, 6.81, 2.61, 2.807, 427.787 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 2.9, 63.2, 27.55, 6.83, 2.65, 2.836, 440.511 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3, 65.21, 27.57, 6.84, 2.69, 2.862, 452.5 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.1, 67.25, 27.6, 6.85, 2.74, 2.886, 463.794 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.2, 69.31, 27.62, 6.86, 2.78, 2.909, 474.405 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.3, 71.38, 27.63, 6.87, 2.83, 2.931, 484.388 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.4, 73.48, 27.65, 6.88, 2.87, 2.953, 493.749 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.5, 75.59, 27.66, 6.89, 2.92, 2.974, 502.498 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.6, 77.71, 27.67, 6.9, 2.97, 2.995, 510.702 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.7, 79.85, 27.68, 6.91, 3.02, 3.016, 518.348 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.8, 82, 27.69, 6.92, 3.06, 3.037, 525.48 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 3.9, 84.16, 27.7, 6.93, 3.11, 3.057, 532.127 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4, 86.34, 27.7, 6.93, 3.16, 3.077, 538.283 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.1, 88.52, 27.7, 6.94, 3.21, 3.097, 544.01 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.2, 90.72, 27.71, 6.95, 3.26, 3.117, 549.314 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.3, 92.93, 27.71, 6.96, 3.31, 3.137, 554.24 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.4, 95.14, 27.71, 6.96, 3.36, 3.156, 558.8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.5, 97.36, 27.71, 6.97, 3.41, 3.174, 563.005 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.6, 99.59, 27.71, 6.98, 3.46, 3.192, 566.9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.7, 101.83, 27.71, 6.98, 3.51, 3.209, 570.483 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.8, 104.07, 27.71, 6.99, 3.56, 3.226, 573.799 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 4.9, 106.32, 27.71, 6.99, 3.61, 3.242, 576.851 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 5, 108.57, 27.71, 7, 3.66, 3.257, 579.641 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 5.1, 110.83, 27.7, 7, 3.71, 3.272, 582.199 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 5.2, 113.1, 27.7, 7.01, 3.76, 3.285, 584.534 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 5 Пр.Б' AND ship_id=2), 5.21, 113.39, 27.7, 7.01, 3.77, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0, 0, 15.73, -3.96, 1.66, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.1, 0, 15.73, -3.96, 1.66, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.2, 0, 15.69, -3.98, 1.73, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.3, 0.01, 15.66, -3.99, 1.81, 0, 0.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.4, 17, 15.62, -4.01, 1.88, 0.001, 0.003 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.5, 31, 15.58, -4.02, 1.96, 0.001, 0.007 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.6, 0.05, 15.55, -4.04, 2.03, 0.002, 0.012 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.7, 0.08, 15.51, -4.06, 2.11, 0.004, 21 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.8, 0.11, 15.48, -4.08, 2.18, 0.008, 0.035 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 0.9, 0.15, 15.44, -4.1, 2.26, 0.779, 4.024 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1, 0.57, 16.68, -4.45, 2.47, 0.911, 4.684 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.1, 1.02, 16.86, -4.52, 2.55, 1.062, 5.433 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.2, 1.5, 16.91, -4.55, 2.62, 1.23, 6.283 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.3, 2.02, 16.92, -4.58, 2.68, 1.418, 7.265 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.4, 2.59, 16.92, -4.6, 2.74, 1.627, 8.374 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.5, 3.19, 16.9, -4.62, 2.8, 1.858, 9.626 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.6, 3.83, 16.88, -4.64, 2.86, 2.114, 11.049 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.7, 4.52, 16.85, -4.66, 2.92, 2.396, 12.647 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.8, 5.26, 16.82, -4.68, 2.98, 2.699, 14.355 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 1.9, 6.04, 16.79, -4.69, 3.04, 3.014, 16.034 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2, 6.87, 16.76, -4.71, 3.1, 3.342, 17.663 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.1, 7.75, 16.72, -4.73, 3.16, 3.698, 19.287 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.2, 8.68, 16.69, -4.75, 3.23, 4.079, 20.872 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.3, 9.65, 16.66, -4.77, 3.29, 4.474, 22.423 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.4, 10.67, 16.63, -4.78, 3.35, 4.889, 23.951 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.5, 11.74, 16.6, -4.8, 3.42, 5.33, 25.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.6, 12.85, 16.57, -4.82, 3.48, 5.795, 26.897 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.7, 14.01, 16.54, -4.84, 3.54, 6.279, 28.322 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.8, 15.21, 16.51, -4.86, 3.61, 6.787, 29.706 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 2.9, 16.46, 16.49, -4.88, 3.67, 7.321, 31.065 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3, 17.75, 16.46, -4.9, 3.73, 7.878, 32.375 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.1, 19.09, 16.44, -4.92, 3.8, 8.458, 33.646 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.2, 20.46, 16.42, -4.95, 3.86, 9.058, 34.89 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.3, 21.88, 16.4, -4.97, 3.93, 9.676, 36.093 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.4, 23.34, 16.37, -4.99, 3.99, 10.309, 37.245 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.5, 24.84, 16.36, -5.01, 4.05, 10.955, 38.358 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.6, 26.37, 16.34, -5.03, 4.12, 11.614, 39.446 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.7, 27.94, 16.32, -5.05, 4.18, 12.279, 40.474 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.8, 29.55, 16.3, -5.07, 4.25, 12.951, 41.464 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 3.9, 31.19, 16.29, -5.09, 4.31, 13.628, 42.422 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4, 32.86, 16.27, -5.11, 4.37, 14.3, 43.332 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.1, 34.56, 16.25, -5.13, 4.44, 14.971, 44.199 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.2, 36.3, 16.24, -5.15, 4.5, 15.637, 45.022 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.3, 38.06, 16.23, -5.17, 4.56, 16.297, 45.805 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.4, 39.85, 16.21, -5.18, 4.62, 16.946, 46.548 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.5, 41.66, 16.2, -5.2, 4.69, 17.585, 47.249 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.6, 43.5, 16.19, -5.22, 4.75, 18.216, 47.917 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.7, 45.36, 16.18, -5.24, 4.81, 18.837, 48.558 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.8, 46.24, 16.18, -5.26, 4.84, 2.769, 19.987 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 4.9, 47, 16.19, -5.28, 4.86, 2.894, 23.33 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5, 47.79, 16.19, -5.3, 4.89, 3.021, 26.906 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.1, 48.62, 16.19, -5.33, 4.92, 3.148, 30.22 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.2, 49.47, 16.19, -5.35, 4.95, 3.275, 33.241 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.3, 50.36, 16.19, -5.37, 4.99, 3.402, 36.018 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.4, 51.27, 16.19, -5.4, 5.02, 3.527, 38.607 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.5, 52.22, 16.19, -5.42, 5.06, 3.653, 41.023 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.6, 53.19, 16.18, -5.45, 5.1, 3.778, 43.265 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.7, 54.18, 16.18, -5.47, 5.14, 3.901, 45.344 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.8, 55.2, 16.17, -5.5, 5.18, 4.022, 47.272 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 5.9, 56.24, 16.16, -5.52, 5.22, 4.14, 49.072 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6, 57.3, 16.16, -5.54, 5.26, 4.255, 50.743 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.1, 58.38, 16.15, -5.57, 5.31, 4.367, 52.276 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.2, 59.48, 16.14, -5.59, 5.35, 4.475, 53.69 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.3, 60.6, 16.13, -5.62, 5.4, 4.579, 55.01 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.4, 61.73, 16.12, -5.64, 5.44, 4.677, 56.221 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.5, 62.87, 16.11, -5.66, 5.49, 4.771, 57.316 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.6, 64.03, 16.1, -5.68, 5.54, 4.861, 58.347 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.7, 65.21, 16.09, -5.71, 5.59, 4.946, 59.301 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.8, 66.39, 16.08, -5.73, 5.64, 5.024, 60.149 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 6.9, 67.59, 16.07, -5.75, 5.69, 5.098, 60.931 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7, 68.79, 16.06, -5.77, 5.74, 5.167, 61.658 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.1, 70, 16.05, -5.79, 5.79, 5.23, 62.321 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.2, 71.22, 16.04, -5.81, 5.84, 5.287, 62.894 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.3, 72.45, 16.03, -5.83, 5.89, 5.341, 63.431 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.4, 73.69, 16.02, -5.85, 5.94, 5.39, 63.932 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.5, 74.93, 16.01, -5.87, 5.99, 5.434, 64.381 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.6, 76.17, 16, -5.88, 6.04, 5.473, 64.76 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.7, 77.42, 15.99, -5.9, 6.1, 5.508, 65.11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.8, 78.68, 15.98, -5.92, 6.15, 5.541, 65.433 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 7.9, 79.93, 15.97, -5.93, 6.2, 5.569, 65.727 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 8, 81.19, 15.96, -5.95, 6.25, 5.594, 65.976 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 ЛБ' AND ship_id=2), 8.05, 81.82, 15.96, -5.96, 6.28, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0, 0, 15.73, 3.96, 1.66, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.1, 0, 15.73, 3.96, 1.66, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.2, 0, 15.69, 3.98, 1.73, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.3, 0.01, 15.66, 3.99, 1.81, 0, 0.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.4, 0.02, 15.62, 4.01, 1.88, 0.001, 0.003 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.5, 0.03, 15.58, 4.02, 1.96, 0.001, 0.007 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.6, 0.05, 15.55, 4.04, 2.03, 0.003, 0.012 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.7, 0.08, 15.51, 4.06, 2.11, 0.005, 0.021 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.8, 0.11, 15.48, 4.08, 2.18, 0.008, 0.035 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 0.9, 0.15, 15.44, 4.1, 2.26, 0.781, 4.037 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1, 0.57, 16.68, 4.45, 2.47, 0.913, 4.696 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.1, 1.02, 16.86, 4.52, 2.55, 1.063, 5.449 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.2, 1.51, 16.91, 4.55, 2.62, 1.232, 6.302 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.3, 2.03, 16.92, 4.58, 2.68, 1.421, 7.281 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.4, 2.59, 16.92, 4.6, 2.74, 1.63, 8.388 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.5, 3.2, 16.9, 4.62, 2.8, 1.862, 9.649 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.6, 3.84, 16.88, 4.64, 2.86, 2.119, 11.085 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.7, 4.53, 16.85, 4.66, 2.92, 2.401, 12.691 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.8, 5.27, 16.82, 4.68, 2.98, 2.708, 14.496 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 1.9, 6.06, 16.79, 4.69, 3.04, 3.044, 16.538 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2, 6.9, 16.75, 4.71, 3.1, 3.414, 18.804 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.1, 7.79, 16.71, 4.73, 3.16, 3.817, 21.362 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.2, 8.74, 16.67, 4.74, 3.23, 4.253, 24.234 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.3, 9.75, 16.63, 4.76, 3.29, 4.724, 27.404 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.4, 10.81, 16.59, 4.78, 3.36, 5.227, 30.934 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.5, 11.94, 16.54, 4.79, 3.42, 5.773, 34.9 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.6, 13.13, 16.49, 4.81, 3.49, 6.366, 39.271 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.7, 14.39, 16.44, 4.83, 3.56, 6.996, 44.135 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.8, 15.73, 16.39, 4.84, 3.62, 7.663, 49.404 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 2.9, 17.13, 16.34, 4.86, 3.69, 8.339, 54.446 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3, 18.6, 16.29, 4.88, 3.76, 9.027, 59.381 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.1, 20.14, 16.23, 4.9, 3.83, 9.733, 64.13 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.2, 21.75, 16.18, 4.91, 3.9, 10.454, 68.68 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.3, 23.43, 16.13, 4.93, 3.96, 11.194, 73.127 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.4, 25.17, 16.08, 4.95, 4.03, 11.955, 77.339 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.5, 26.97, 16.04, 4.97, 4.1, 12.732, 81.409 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.6, 28.84, 15.99, 4.99, 4.17, 13.528, 85.325 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.7, 30.77, 15.95, 5, 4.236, 14.344, 89.035 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.8, 32.76, 15.9, 5.02, 4.3, 15.179, 92.597 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 3.9, 34.8, 15.86, 5.04, 4.37, 16.029, 95.987 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4, 36.9, 15.82, 5.06, 4.44, 16.888, 99.244 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.1, 39.06, 15.79, 5.08, 4.51, 17.756, 102.354 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.2, 41.26, 15.75, 5.1, 4.57, 18.63, 105.269 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.3, 43.51, 15.72, 5.12, 4.64, 19.507, 108.007 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.4, 45.81, 15.69, 5.14, 4.7, 20.386, 110.638 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.5, 48.15, 15.65, 5.15, 4.77, 21.261, 113.163 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.6, 50.53, 15.63, 5.17, 4.83, 22.127, 115.504 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.7, 52.96, 15.6, 5.19, 4.9, 22.991, 117.722 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.8, 54.31, 15.62, 5.2, 4.94, 23.51, 23.462 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 4.9, 55.52, 15.65, 5.21, 4.97, 24.278, 27.378 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5, 56.77, 15.67, 5.22, 5, 25.033, 31.688 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.1, 58.05, 15.69, 5.23, 5.04, 25.763, 35.678 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.2, 59.36, 15.71, 5.25, 5.08, 26.466, 39.344 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.3, 60.71, 15.73, 5.26, 5.12, 27.14, 42.739 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.4, 62.08, 15.75, 5.27, 5.16, 27.79, 45.948 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.5, 63.48, 15.77, 5.28, 5.2, 28.421, 48.981 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.6, 64.91, 15.78, 5.3, 5.24, 29.026, 51.8 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.7, 66.36, 15.79, 5.31, 5.29, 29.602, 54.405 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.8, 67.83, 15.8, 5.33, 5.33, 30.156, 56.879 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 5.9, 69.33, 15.81, 5.34, 5.38, 30.684, 59.199 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6, 70.85, 15.82, 5.35, 5.42, 31.186, 61.344 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.1, 72.39, 15.83, 5.37, 5.47, 31.659, 63.32 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.2, 73.95, 15.84, 5.38, 5.52, 32.105, 65.159 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.3, 75.52, 15.85, 5.4, 5.57, 32.525, 66.855 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.4, 77.11, 15.85, 5.41, 5.62, 32.918, 68.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.5, 78.71, 15.86, 5.42, 5.67, 33.285, 69.895 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.6, 80.33, 15.86, 5.44, 5.72, 33.626, 71.223 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.7, 81.96, 15.87, 5.45, 5.77, 33.944, 72.466 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.8, 83.61, 15.87, 5.47, 5.82, 34.235, 73.594 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 6.9, 85.26, 15.87, 5.48, 5.87, 34.504, 74.622 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7, 86.92, 15.88, 5.49, 5.92, 34.751, 75.559 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.1, 88.59, 15.88, 5.5, 5.97, 34.979, 76.434 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.2, 90.27, 15.88, 5.52, 6.02, 35.185, 77.227 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.3, 91.96, 15.88, 5.53, 6.07, 35.371, 77.932 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.4, 93.65, 15.88, 5.54, 6.13, 35.54, 78.587 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.5, 95.35, 15.88, 5.55, 6.18, 35.694, 79.188 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.6, 97.05, 15.89, 5.56, 6.23, 35.828, 79.706 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.7, 98.76, 15.89, 5.57, 6.28, 35.949, 80.176 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.8, 100.47, 15.89, 5.58, 6.34, 36.057, 80.596 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 7.9, 102.19, 15.89, 5.59, 6.39, 36.152, 80.973 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 8, 103.91, 15.89, 5.6, 6.44, 36.235, 81.306 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 6 Пр.Б' AND ship_id=2), 8.05, 104.77, 15.89, 5.61, 6.47, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0, 0, 9.474, -2.212, 3.325, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.1, 0, 9.474, -2.212, 3.325, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.2, 0.001, 9.445, -2.225, 3.401, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.3, 0.003, 9.416, -2.24, 3.478, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.4, 0.007, 9.384, -2.257, 3.556, 0, 0.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.5, 0.014, 9.351, -2.275, 3.633, 0.001, 0.002 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.6, 0.026, 9.316, -2.295, 3.712, 0.001, 0.005 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.7, 0.045, 9.279, -2.317, 3.791, 0.003, 0.01 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.8, 0.071, 9.24, 2.341, 3.87, 0.006, 0.019 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 0.9, 0.108, 9.199, -2.367, 3.95, 0.012, 0.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1, 0.159, 9.157, -2.395, 4.03, 0.022, 0.063 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.1, 0.226, 9.111, -2.425, 4.111, 0.038, 0.106 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.2, 0.313, 9.063, -2.458, 4.192, 0.065, 0.173 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.3, 0.424, 9.012, -2.492, 4.273, 0.105, 0.276 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.4, 0.565, 8.957, -2.528, 4.355, 0.166, 0.432 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.5, 0.74, 8.899, -2.566, 4.437, 0.254, 0.662 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.6, 0.956, 8.837, -2.606, 4.519, 0.38, 0.998 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.7, 1.219, 8.77, -2.647, 4.602, 0.551, 1.479 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.8, 1.537, 8.7, -2.689, 4.684, 0.782, 2.143 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 1.9, 1.915, 8.625, -2.732, 4.767, 1.079, 3.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2, 2.36, 8.549, -2.776, 4.849, 1.436, 3.92 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.1, 2.87, 8.478, -2.822, 4.929, 1.848, 4.75 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.2, 3.446, 8.414, -2.87, 5.008, 2.338, 5.546 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.3, 4.087, 8.357, -2.919, 5.085, 2.899, 6.298 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.4, 4.793, 8.306, -2.97, 5.161, 3.561, 7.031 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.5, 5.561, 8.261, -3.021, 5.236, 4.29, 7.725 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.6, 6.39, 8.222, -3.072, 5.309, 5.094, 8.39 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.7, 7.276, 8.187, -3.124, 5.381, 5.971, 9.015 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.8, 8.218, 8.156, -3.174, 5.452, 6.923, 9.614 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 2.9, 9.214, 8.128, -3.224, 5.522, 7.963, 10.193 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 3, 10.263, 8.104, -3.274, 5.591, 9.065, 10.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 ЛБ' AND ship_id=2), 3.06, 10.951, 8.09, -3.304, 5.635, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0, 0, 9.47, 2.21, 3.33, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.1, 0, 9.47, 2.21, 3.33, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.2, 0, 9.45, 2.23, 3.4, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.3, 0, 9.42, 2.24, 3.48, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.4, 0.01, 9.38, 2.26, 3.56, 0, 0.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.5, 0.01, 9.35, 2.28, 3.63, 0.001, 0.002 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.6, 0.03, 9.32, 2.3, 3.71, 0.001, 0.005 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.7, 0.05, 9.28, 2.32, 3.79, 0.003, 0.01 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.8, 0.07, 9.24, 2.34, 3.87, 0.006, 0.019 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 0.9, 0.11, 9.2, 2.37, 3.95, 0.012, 0.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1, 0.16, 9.16, 2.4, 4.03, 0.022, 0.063 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.1, 0.23, 9.11, 2.43, 4.11, 0.038, 0.106 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.2, 0.31, 9.06, 2.46, 4.19, 0.065, 0.173 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.3, 0.42, 9.01, 2.49, 4.27, 0.105, 0.276 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.4, 0.57, 8.96, 2.53, 4.36, 0.166, 0.432 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.5, 0.74, 8.9, 2.57, 4.44, 0.254, 0.662 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.6, 0.96, 8.84, 2.61, 4.52, 0.38, 0.998 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.7, 1.22, 8.77, 2.65, 4.6, 0.551, 1.479 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.8, 1.54, 8.7, 2.69, 4.68, 0.782, 2.143 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 1.9, 1.92, 8.63, 2.73, 4.77, 1.079, 3.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2, 2.36, 8.55, 2.78, 4.85, 1.436, 3.92 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.1, 2.87, 8.48, 2.82, 4.93, 1.848, 4.75 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.2, 3.45, 8.41, 2.87, 5.01, 2.338, 5.546 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.3, 4.09, 8.36, 2.92, 5.09, 2.899, 6.298 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.4, 4.79, 8.31, 2.97, 5.16, 3.561, 7.031 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.5, 5.56, 8.26, 3.02, 5.24, 4.29, 7.725 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.6, 6.39, 8.22, 3.07, 5.31, 5.094, 8.39 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.7, 7.28, 8.19, 3.12, 5.38, 5.971, 9.015 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.8, 8.22, 8.16, 3.17, 5.45, 6.923, 9.614 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 2.9, 9.21, 8.13, 3.22, 5.52, 7.963, 10.193 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 3, 10.26, 8.1, 3.27, 5.59, 9.065, 10.745 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. танк 7 Пр.Б' AND ship_id=2), 3.06, 10.95, 8.09, 3.3, 5.64, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0, 0, 2.15, -3.38, 7.3, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.1, 1.37, 2.15, -3.38, 7.3, 8.755, 49.796 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.2, 2.84, 2.09, -3.39, 7.35, 9.976, 57.489 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.3, 4.41, 2.04, -3.41, 7.41, 11.197, 64.519 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.4, 6.08, 1.99, -3.43, 7.46, 12.437, 70.976 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.5, 7.84, 1.94, -3.45, 7.51, 13.725, 76.993 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.6, 9.68, 1.9, -3.47, 7.57, 15, 82.582 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.7, 11.6, 1.87, -3.49, 7.62, 16.338, 87.872 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.8, 13.6, 1.84, -3.51, 7.68, 17.703, 92.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 0.9, 15.68, 1.8, -3.53, 7.73, 19.081, 97.719 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1, 17.83, 1.78, -3.55, 7.79, 20.53, 102.352 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.1, 20.05, 1.75, -3.57, 7.85, 21.99, 106.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.2, 22.34, 1.73, -3.6, 7.9, 23.463, 111.018 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.3, 24.7, 1.7, -3.62, 7.96, 25.006, 115.258 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.4, 27.13, 1.68, -3.64, 8.02, 26.563, 119.346 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.5, 29.61, 1.66, -3.66, 8.08, 28.12, 123.276 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.6, 32.16, 1.64, -3.68, 8.13, 29.739, 127.201 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.7, 34.77, 1.62, -3.7, 8.19, 31.393, 131.067 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.8, 37.45, 1.61, -3.72, 8.25, 33.01, 134.72 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 1.9, 40.17, 1.59, -3.74, 8.31, 34.683, 138.38 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2, 42.96, 1.57, -3.76, 8.36, 36.412, 142.054 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.1, 45.81, 1.56, -3.78, 8.42, 38.105, 145.581 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.2, 48.7, 1.54, -3.79, 8.48, 39.799, 149.007 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.3, 51.66, 1.53, -3.81, 8.54, 41.515, 152.406 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик ЛБ' AND ship_id=2), 2.4, 54.66, 1.52, -3.83, 8.6, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0, 0, 2.15, 3.37, 7.3, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.1, 1.37, 2.15, 3.37, 7.3, 8.755, 49.796 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.2, 2.84, 2.09, 3.39, 7.35, 9.976, 57.489 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.3, 4.41, 2.04, 3.41, 7.41, 11.197, 64.519 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.4, 6.08, 1.99, 3.43, 7.46, 12.437, 70.976 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.5, 7.84, 1.94, 3.45, 7.51, 13.725, 76.993 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.6, 9.68, 1.9, 3.47, 7.57, 15, 82.582 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.7, 11.6, 1.87, 3.49, 7.62, 16.338, 87.872 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.8, 13.6, 1.84, 3.51, 7.68, 17.703, 92.908 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 0.9, 15.68, 1.8, 3.53, 7.73, 19.081, 97.719 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1, 17.83, 1.78, 3.55, 7.79, 20.53, 102.352 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.1, 20.05, 1.75, 3.57, 7.85, 21.99, 106.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.2, 22.34, 1.73, 3.6, 7.9, 23.463, 111.018 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.3, 24.7, 1.7, 3.62, 7.96, 25.006, 115.258 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.4, 27.13, 1.68, 3.64, 8.02, 26.563, 119.346 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.5, 29.61, 1.66, 3.66, 8.08, 28.12, 123.276 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.6, 32.16, 1.64, 3.68, 8.13, 29.739, 127.201 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.7, 34.77, 1.62, 3.7, 8.19, 31.393, 131.067 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.8, 37.45, 1.61, 3.72, 8.25, 33.01, 134.72 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 1.9, 40.17, 1.59, 3.74, 8.31, 34.683, 138.38 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2, 42.96, 1.57, 3.76, 8.36, 36.412, 142.054 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.1, 45.81, 1.56, 3.78, 8.42, 38.105, 145.581 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.2, 48.7, 1.54, 3.79, 8.48, 39.799, 149.007 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.3, 51.66, 1.53, 3.81, 8.54, 41.515, 152.406 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Ахтерпик Пр.Б' AND ship_id=2), 2.4, 54.66, 1.52, 3.83, 8.6, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0, 0, 17.5, -0.22, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.1, 0.62, 17.5, -0.22, 6.36, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.2, 1.24, 17.5, -0.22, 6.41, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.3, 1.86, 17.5, -0.22, 6.46, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.4, 2.48, 17.5, -0.22, 6.51, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.5, 3.1, 17.5, -0.22, 6.56, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.6, 3.72, 17.5, -0.22, 6.61, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.7, 4.34, 17.5, -0.22, 6.66, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.8, 4.96, 17.5, -0.22, 6.71, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 0.9, 5.58, 17.5, -0.22, 6.76, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1, 6.21, 17.5, -0.22, 6.81, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.1, 6.83, 17.5, -0.22, 6.86, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.2, 7.45, 17.5, -0.22, 6.91, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.3, 8.07, 17.5, -0.22, 6.96, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.4, 8.69, 17.5, -0.22, 7.01, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.5, 9.31, 17.5, -0.22, 7.06, 5.01, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.6, 9.93, 17.5, -0.22, 7.11, 5, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.7, 10.55, 17.5, -0.22, 7.16, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.8, 11.17, 17.5, -0.22, 7.21, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 1.9, 11.79, 17.5, -0.22, 7.26, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2, 12.41, 17.5, -0.22, 7.31, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.1, 13.03, 17.5, -0.22, 7.36, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.2, 13.65, 17.5, -0.22, 7.41, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.3, 14.27, 17.5, -0.22, 7.46, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.4, 14.89, 17.5, -0.22, 7.51, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.5, 15.51, 17.5, -0.22, 7.56, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.6, 16.13, 17.5, -0.22, 7.61, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.7, 16.75, 17.5, -0.22, 7.66, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.8, 17.37, 17.5, -0.22, 7.71, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 2.9, 17.99, 17.5, -0.22, 7.76, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3, 18.62, 17.5, -0.22, 7.81, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.1, 19.24, 17.5, -0.22, 7.86, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.2, 19.86, 17.5, -0.22, 7.91, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.3, 20.48, 17.5, -0.22, 7.96, 5.006, 2.207 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна отстойного топлива' AND ship_id=2), 3.34, 20.71, 17.5, -0.22, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0, 0, 17.37, -3.8, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.1, 0.54, 17.37, -3.8, 6.36, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.2, 1.08, 17.37, -3.8, 6.41, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.3, 1.61, 17.37, -3.8, 6.46, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.4, 2.15, 17.37, -3.8, 6.51, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.5, 2.69, 17.37, -3.8, 6.56, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.6, 3.22, 17.37, -3.8, 6.61, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.7, 3.76, 17.37, -3.8, 6.66, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.8, 4.3, 17.37, -3.8, 6.71, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 0.9, 4.84, 17.37, -3.8, 6.76, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1, 5.37, 17.37, -3.8, 6.81, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.1, 5.91, 17.37, -3.8, 6.86, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.2, 6.45, 17.37, -3.8, 6.91, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.3, 6.98, 17.37, -3.8, 6.96, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.4, 7.52, 17.37, -3.8, 7.01, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.5, 8.06, 17.37, -3.8, 7.06, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.6, 8.6, 17.37, -3.8, 7.11, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.7, 9.13, 17.37, -3.8, 7.16, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.8, 9.67, 17.37, -3.8, 7.21, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 1.9, 10.21, 17.37, -3.8, 7.26, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2, 10.75, 17.37, -3.8, 7.31, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.1, 11.28, 17.37, -3.8, 7.36, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.2, 11.82, 17.37, -3.8, 7.41, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.3, 12.36, 17.37, -3.8, 7.46, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.4, 12.89, 17.37, -3.8, 7.51, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.5, 13.43, 17.37, -3.8, 7.56, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.6, 13.97, 17.37, -3.8, 7.61, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.7, 14.51, 17.37, -3.8, 7.66, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.8, 15.04, 17.37, -3.8, 7.71, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 2.9, 15.58, 17.37, -3.8, 7.76, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3, 16.12, 17.37, -3.8, 7.81, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.1, 16.66, 17.37, -3.8, 7.86, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.2, 17.19, 17.37, -3.8, 7.91, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.3, 17.73, 17.37, -3.8, 7.96, 4.838, 1.599 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна расходного топлива' AND ship_id=2), 3.34, 17.93, 17.37, -3.8, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.1, 1.08, 17.2, 0, 0.05, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.2, 2.16, 17.2, 0, 0.1, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.3, 3.24, 17.2, 0, 0.15, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.4, 4.32, 17.2, 0, 0.2, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.5, 5.4, 17.2, 0, 0.25, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.6, 6.48, 17.2, 0, 0.3, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.7, 7.57, 17.2, 0, 0.35, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.8, 8.65, 17.2, 0, 0.4, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 0.9, 9.73, 17.2, 0, 0.45, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 1, 10.81, 17.2, 0, 0.5, 13.855, 7.062 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Переливная цистерна' AND ship_id=2), 1.1, 11.89, 17.2, 0, 0.55, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0, 0, 10.2, -4.6, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.1, 0.18, 10.2, -4.6, 6.36, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.2, 0.37, 10.2, -4.6, 6.41, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.3, 0.55, 10.2, -4.6, 6.46, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.4, 0.73, 10.2, -4.6, 6.51, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.5, 0.92, 10.2, -4.6, 6.56, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.6, 1.1, 10.2, -4.6, 6.61, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.7, 1.28, 10.2, -4.6, 6.66, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.8, 1.47, 10.2, -4.6, 6.71, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 0.9, 1.65, 10.2, -4.6, 6.76, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1, 1.83, 10.2, -4.6, 6.81, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.1, 2.02, 10.2, -4.6, 6.86, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.2, 2.2, 10.2, -4.6, 6.91, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.3, 2.38, 10.2, -4.6, 6.96, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.4, 2.56, 10.2, -4.6, 7.01, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.5, 2.75, 10.2, -4.6, 7.06, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.6, 2.93, 10.2, -4.6, 7.11, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.7, 3.11, 10.2, -4.6, 7.16, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.8, 3.3, 10.2, -4.6, 7.21, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 1.9, 3.48, 10.2, -4.6, 7.26, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2, 3.66, 10.2, -4.6, 7.31, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.1, 3.85, 10.2, -4.6, 7.36, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.2, 4.03, 10.2, -4.6, 7.41, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.3, 4.21, 10.2, -4.6, 7.46, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.4, 4.4, 10.2, -4.6, 7.51, 0.272, 0.233 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.5, 4.58, 10.2, -4.6, 7.56, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.6, 4.76, 10.2, -4.6, 7.61, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.7, 4.95, 10.2, -4.6, 7.66, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.8, 5.13, 10.2, -4.6, 7.71, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 2.9, 5.31, 10.2, -4.6, 7.76, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3, 5.5, 10.2, -4.6, 7.81, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.1, 5.68, 10.2, -4.6, 7.86, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.2, 5.86, 10.2, -4.6, 7.91, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.3, 6.04, 10.2, -4.6, 7.96, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 1' AND ship_id=2), 3.34, 6.11, 10.2, -4.6, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0, 0, 15.13, 1.34, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.1, 0.19, 15.13, 1.34, 0.05, 0.524, 0.366 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.2, 0.44, 15.13, 1.43, 0.11, 0.783, 0.419 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.3, 0.71, 15.12, 1.5, 0.16, 1.023, 0.459 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.4, 1, 15.12, 1.55, 0.22, 1.253, 0.492 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.5, 1.31, 15.12, 1.6, 0.27, 1.473, 0.519 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.6, 1.63, 15.12, 1.64, 0.33, 1.681, 0.543 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.7, 1.97, 15.12, 1.68, 0.38, 1.877, 0.563 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.8, 2.33, 15.12, 1.71, 0.44, 2.062, 0.581 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 0.9, 2.69, 15.12, 1.74, 0.49, 2.239, 0.597 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1, 3.06, 15.12, 1.77, 0.55, 2.408, 0.612 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.1, 3.44, 15.12, 1.8, 0.61, 2.574, 0.626 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.2, 3.82, 15.12, 1.82, 0.66, 2.739, 0.639 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.3, 4.22, 15.12, 1.85, 0.72, 2.904, 0.651 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.4, 4.62, 15.12, 1.87, 0.77, 3.073, 0.663 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.5, 5.03, 15.12, 1.89, 0.83, 3.245, 0.675 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна протечек газойля' AND ship_id=2), 1.6, 5.45, 15.12, 1.91, 0.88, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0, 0, 7.56, -4.77, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.1, 0.33, 7.56, -4.77, 6.36, 1.067, 2.967 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.2, 0.7, 7.57, -4.82, 6.42, 1.302, 3.421 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.3, 1.12, 7.57, -4.86, 6.47, 1.551, 3.853 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.4, 1.58, 7.57, -4.9, 6.53, 1.814, 4.262 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.5, 2.08, 7.58, -4.93, 6.58, 2.091, 4.653 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.6, 2.61, 7.58, -4.97, 6.64, 2.383, 5.025 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.7, 3.18, 7.58, -5.01, 6.7, 2.687, 5.38 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.8, 3.79, 7.59, -5.04, 6.76, 3.006, 5.722 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 0.9, 4.43, 7.59, -5.07, 6.82, 3.337, 6.049 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1, 5.23, 7.54, -5.1, 6.89, 4.701, 14.424 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.1, 6.15, 7.47, -5.12, 6.96, 5.17, 15.183 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.2, 7.11, 7.42, -5.14, 7.03, 5.657, 15.92 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.3, 8.12, 7.38, -5.16, 7.09, 6.158, 16.623 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.4, 9.16, 7.34, -5.19, 7.16, 6.673, 17.306 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.5, 10.23, 7.31, -5.21, 7.22, 7.194, 17.953 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.6, 11.35, 7.29, -5.23, 7.28, 7.731, 18.582 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.7, 12.49, 7.27, -5.25, 7.35, 8.273, 19.188 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.8, 13.68, 7.25, -5.28, 7.41, 8.828, 19.784 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 1.9, 14.89, 7.24, -5.3, 7.47, 9.374, 20.343 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2, 16.13, 7.22, -5.32, 7.53, 9.927, 20.884 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.1, 17.41, 7.21, -5.34, 7.59, 10.477, 21.399 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.2, 18.71, 7.2, -5.36, 7.65, 11.022, 21.891 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.3, 20.04, 7.19, -5.38, 7.71, 11.571, 22.369 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.4, 21.39, 7.18, -5.4, 7.77, 12.1, 22.814 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.5, 22.77, 7.18, -5.42, 7.83, 12.631, 23.248 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.6, 24.18, 7.17, -5.44, 7.89, 13.148, 23.655 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.7, 25.6, 7.16, -5.46, 7.95, 13.651, 24.041 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.8, 27.05, 7.15, -5.48, 8.01, 14.151, 24.414 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 2.9, 28.52, 7.15, -5.5, 8.07, 14.622, 24.757 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3, 30.01, 7.14, -5.51, 8.13, 15.084, 25.085 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.1, 31.51, 7.14, -5.53, 8.19, 15.537, 25.399 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.2, 33.03, 7.13, -5.55, 8.25, 15.958, 25.685 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.3, 34.57, 7.13, -5.56, 8.31, 16.367, 25.958 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 1' AND ship_id=2), 3.34, 35.15, 7.13, -5.57, 8.33, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0, 0, 8.8, -4.6, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.1, 0.18, 8.8, -4.6, 6.36, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.2, 0.37, 8.8, -4.6, 6.41, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.3, 0.55, 8.8, -4.6, 6.46, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.4, 0.73, 8.8, -4.6, 6.51, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.5, 0.92, 8.8, -4.6, 6.56, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.6, 1.1, 8.8, -4.6, 6.61, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.7, 1.28, 8.8, -4.6, 6.66, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.8, 1.47, 8.8, -4.6, 6.71, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 0.9, 1.65, 8.8, -4.6, 6.76, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1, 1.83, 8.8, -4.6, 6.81, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.1, 2.02, 8.8, -4.6, 6.86, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.2, 2.2, 8.8, -4.6, 6.91, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.3, 2.38, 8.8, -4.6, 6.96, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.4, 2.56, 8.8, -4.6, 7.01, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.5, 2.75, 8.8, -4.6, 7.06, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.6, 2.93, 8.8, -4.6, 7.11, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.7, 3.11, 8.8, -4.6, 7.16, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.8, 3.3, 8.8, -4.6, 7.21, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 1.9, 3.48, 8.8, -4.6, 7.26, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2, 3.66, 8.8, -4.6, 7.31, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.1, 3.85, 8.8, -4.6, 7.36, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.2, 4.03, 8.8, -4.6, 7.41, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.3, 4.21, 8.8, -4.6, 7.46, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.4, 4.4, 8.8, -4.6, 7.51, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.5, 4.58, 8.8, -4.6, 7.56, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.6, 4.76, 8.8, -4.6, 7.61, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.7, 4.95, 8.8, -4.6, 7.66, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.8, 5.13, 8.8, -4.6, 7.71, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 2.9, 5.31, 8.8, -4.6, 7.76, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3, 5.5, 8.8, -4.6, 7.81, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.1, 5.68, 8.8, -4.6, 7.86, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.2, 5.86, 8.8, -4.6, 7.91, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.3, 6.04, 8.8, -4.6, 7.96, 0.272, 0.299 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Расходная цистерна газойля 2' AND ship_id=2), 3.34, 6.11, 8.8, -4.6, 7.98, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0, 0, 7.17, 4.55, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.1, 0.25, 7.17, 4.55, 6.36, 0.43, 0.952 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.2, 0.54, 7.16, 4.59, 6.42, 0.56, 1.063 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.3, 0.85, 7.15, 4.62, 6.47, 0.709, 1.167 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.4, 1.19, 7.15, 4.66, 6.53, 0.874, 1.266 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.5, 1.55, 7.14, 4.69, 6.58, 1.055, 1.36 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.6, 1.94, 7.14, 4.72, 6.64, 1.25, 1.447 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.7, 2.35, 7.13, 4.75, 6.7, 1.457, 1.531 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.8, 2.78, 7.13, 4.79, 6.75, 1.676, 1.611 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 0.9, 3.23, 7.13, 4.82, 6.81, 1.909, 1.688 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1, 3.71, 7.12, 4.85, 6.87, 2.153, 1.761 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.1, 4.2, 7.12, 4.88, 6.93, 2.406, 1.831 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.2, 4.71, 7.12, 4.9, 6.98, 2.67, 1.898 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.3, 5.24, 7.11, 4.93, 7.04, 2.945, 1.964 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.4, 5.78, 7.11, 4.96, 7.1, 3.229, 2.028 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.5, 6.35, 7.11, 4.99, 7.16, 3.512, 2.088 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.6, 6.93, 7.11, 5.01, 7.22, 3.806, 2.147 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.7, 7.52, 7.11, 5.04, 7.28, 4.113, 2.205 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.8, 8.13, 7.1, 5.06, 7.34, 4.426, 2.261 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 1.9, 8.76, 7.1, 5.09, 7.4, 4.732, 2.313 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2, 9.39, 7.1, 5.11, 7.46, 5.045, 2.365 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.1, 10.05, 7.1, 5.13, 7.51, 5.357, 2.414 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.2, 10.71, 7.1, 5.16, 7.57, 5.668, 2.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.3, 11.39, 7.1, 5.18, 7.63, 5.977, 2.506 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.4, 12.08, 7.1, 5.2, 7.69, 6.281, 2.549 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.5, 12.78, 7.09, 5.22, 7.75, 6.586, 2.591 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.6, 13.5, 7.09, 5.24, 7.81, 6.879, 2.63 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.7, 14.22, 7.09, 5.26, 7.87, 7.17, 2.667 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.8, 14.95, 7.09, 5.28, 7.93, 7.457, 2.703 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 2.9, 15.69, 7.09, 5.3, 7.98, 7.726, 2.736 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3, 16.44, 7.09, 5.32, 8.04, 7.994, 2.768 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.1, 17.2, 7.09, 5.34, 8.1, 8.252, 2.798 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.2, 17.97, 7.09, 5.35, 8.16, 8.493, 2.826 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.3, 18.75, 7.09, 5.37, 8.22, 8.729, 2.853 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла главного двигателя' AND ship_id=2), 3.34, 19.03, 7.09, 5.38, 8.24, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.1, 0.69, 13, 0, 0.65, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.2, 1.39, 13, 0, 0.7, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.3, 2.08, 13, 0, 0.75, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.4, 2.77, 13, 0, 0.8, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.5, 3.47, 13, 0, 0.85, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.6, 4.16, 13, 0, 0.9, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.7, 4.86, 13, 0, 0.95, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.8, 5.55, 13, 0, 1, 0.86, 18.126 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 0.9, 6.16, 13, 0, 1.04, 0.645, 7.647 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна газойля 2' AND ship_id=2), 1, 6.68, 13, 0, 1.08, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0, 0, 9.15, 5.59, 8.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.1, 0.23, 9.15, 5.59, 8.05, 2.195, 0.095 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.2, 0.47, 9.15, 5.61, 8.1, 2.299, 0.097 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.3, 0.71, 9.15, 5.62, 8.15, 2.399, 0.098 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.4, 0.95, 9.15, 5.63, 8.2, 2.497, 0.1 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.5, 1.2, 9.15, 5.65, 8.25, 2.592, 0.101 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.6, 1.44, 9.15, 5.66, 8.3, 2.683, 0.102 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.7, 1.7, 9.15, 5.67, 8.36, 2.77, 0.103 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.8, 1.95, 9.15, 5.68, 8.41, 2.854, 0.104 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 0.9, 2.21, 9.15, 5.69, 8.46, 2.931, 0.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1, 2.46, 9.15, 5.7, 8.51, 3.006, 0.106 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.1, 2.72, 9.15, 5.71, 8.56, 3.076, 0.107 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.2, 2.99, 9.15, 5.72, 8.61, 3.142, 0.108 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.3, 3.25, 9.15, 5.73, 8.67, 3.202, 0.108 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.4, 3.52, 9.15, 5.74, 8.72, 3.258, 0.109 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.5, 3.78, 9.15, 5.74, 8.77, 3.309, 0.109 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.6, 4.05, 9.15, 5.75, 8.82, 3.357, 0.11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла редуктора' AND ship_id=2), 1.65, 4.19, 9.15, 5.76, 8.85, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0, 0, 8.45, 5.53, 8.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.1, 0.22, 8.45, 5.53, 8.05, 1.942, 0.091 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.2, 0.45, 8.45, 5.54, 8.1, 2.048, 0.093 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.3, 0.68, 8.45, 5.56, 8.15, 2.154, 0.095 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.4, 0.91, 8.45, 5.57, 8.2, 2.257, 0.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.5, 1.15, 8.45, 5.59, 8.25, 2.358, 0.098 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.6, 1.39, 8.45, 5.6, 8.31, 2.456, 0.099 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.7, 1.63, 8.45, 5.61, 8.36, 2.551, 0.1 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.8, 1.88, 8.45, 5.62, 8.41, 2.644, 0.101 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 0.9, 2.13, 8.45, 5.64, 8.46, 2.731, 0.102 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1, 2.38, 8.45, 5.65, 8.51, 2.816, 0.104 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.1, 2.64, 8.45, 5.66, 8.56, 2.896, 0.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.2, 2.89, 8.45, 5.67, 8.62, 2.973, 0.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.3, 3.15, 8.45, 5.68, 8.67, 3.043, 0.106 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.4, 3.42, 8.45, 5.69, 8.72, 3.111, 0.107 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.5, 3.68, 8.45, 5.7, 8.77, 3.173, 0.108 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.6, 3.94, 8.45, 5.71, 8.83, 3.231, 0.108 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна смазочного масла вспомогательного двигателя' AND ship_id=2), 1.65, 4.08, 8.45, 5.71, 8.85, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0, 0, 12.95, -3.89, 3.31, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.1, 0, 12.95, -3.89, 3.31, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.2, 0, 12.91, -3.91, 3.38, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.3, 0.01, 12.86, -3.94, 3.46, 0, 0.001 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.4, 0.02, 12.81, -3.96, 3.53, 0.001, 0.005 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.5, 0.04, 12.76, -3.99, 3.61, 0.004, 0.012 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.6, 0.07, 12.71, -4.02, 3.69, 0.008, 0.027 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.7, 0.11, 12.66, -4.04, 3.76, 0.015, 0.052 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.8, 0.17, 12.61, -4.07, 3.84, 0.027, 0.091 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 0.9, 0.24, 12.55, -4.1, 3.92, 0.045, 0.153 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1, 0.34, 12.5, -4.13, 3.99, 0.071, 0.247 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.1, 0.46, 12.44, -4.16, 4.07, 0.106, 0.368 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.2, 0.61, 12.39, -4.19, 4.15, 0.151, 0.481 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.3, 0.78, 12.34, -4.23, 4.22, 0.208, 0.591 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.4, 0.97, 12.3, -4.26, 4.29, 0.278, 0.7 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.5, 1.2, 12.27, -4.3, 4.37, 0.363, 0.805 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.6, 1.45, 12.24, -4.33, 4.44, 0.463, 0.906 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.7, 1.72, 12.21, -4.37, 4.51, 0.584, 1.006 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.8, 2.02, 12.19, -4.41, 4.58, 0.722, 1.104 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 1.9, 2.34, 12.17, -4.44, 4.65, 0.877, 1.199 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2, 2.69, 12.15, -4.48, 4.72, 1.05, 1.29 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.1, 3.06, 12.14, -4.52, 4.79, 1.245, 1.379 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.2, 3.46, 12.13, -4.56, 4.86, 1.457, 1.466 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.3, 3.87, 12.11, -4.59, 4.92, 1.688, 1.551 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.4, 4.31, 12.1, -4.63, 4.99, 1.933, 1.631 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.5, 4.77, 12.09, -4.67, 5.06, 2.191, 1.707 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.6, 5.25, 12.08, -4.7, 5.12, 2.463, 1.782 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.7, 5.75, 12.08, -4.74, 5.19, 2.745, 1.854 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.8, 6.27, 12.07, -4.77, 5.26, 3.034, 1.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 2.9, 6.81, 12.06, -4.8, 5.32, 3.33, 1.987 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 3, 7.36, 12.06, -4.83, 5.39, 3.629, 2.049 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Шламовая цистерна' AND ship_id=2), 3.08, 7.81, 12.05, -4.86, 5.437, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0, 0, 8.46, 4.8, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.1, 0.12, 8.46, 4.8, 6.36, 0.337, 0.051 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.2, 0.25, 8.46, 4.83, 6.42, 0.407, 0.055 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.3, 0.39, 8.46, 4.86, 6.47, 0.481, 0.058 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.4, 0.53, 8.46, 4.89, 6.52, 0.561, 0.061 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.5, 0.69, 8.46, 4.92, 6.58, 0.645, 0.064 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.6, 0.85, 8.46, 4.94, 6.63, 0.731, 0.066 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.7, 1.01, 8.46, 4.97, 6.68, 0.823, 0.069 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.8, 1.18, 8.46, 5, 6.74, 0.917, 0.072 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 0.9, 1.36, 8.46, 5.03, 6.8, 1.012, 0.074 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1, 1.55, 8.46, 5.05, 6.85, 1.112, 0.076 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.1, 1.74, 8.46, 5.08, 6.91, 1.215, 0.079 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.2, 1.93, 8.46, 5.1, 6.96, 1.324, 0.081 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.3, 2.13, 8.46, 5.13, 7.02, 1.43, 0.083 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.4, 2.34, 8.46, 5.15, 7.08, 1.539, 0.085 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.5, 2.55, 8.46, 5.17, 7.13, 1.648, 0.087 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.6, 2.77, 8.46, 5.2, 7.19, 1.757, 0.089 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 1' AND ship_id=2), 1.69, 2.96, 8.46, 5.22, 7.24, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0, 0, 9.16, 4.92, 6.36, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.1, 0.14, 9.16, 4.92, 6.36, 0.49, 0.058 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.2, 0.28, 9.16, 4.95, 6.42, 0.572, 0.061 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.3, 0.44, 9.16, 4.97, 6.47, 0.657, 0.064 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.4, 0.6, 9.16, 5, 6.52, 0.746, 0.067 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.5, 0.76, 9.16, 5.03, 6.57, 0.84, 0.069 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.6, 0.94, 9.16, 5.05, 6.63, 0.935, 0.072 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.7, 1.12, 9.16, 5.08, 6.68, 1.034, 0.074 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.8, 1.3, 9.16, 5.1, 6.74, 1.136, 0.077 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 0.9, 1.49, 9.16, 5.13, 6.79, 1.239, 0.079 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1, 1.69, 9.16, 5.15, 6.85, 1.346, 0.081 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.1, 1.89, 9.16, 5.18, 6.9, 1.453, 0.083 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.2, 2.1, 9.16, 5.2, 6.96, 1.564, 0.085 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.3, 2.31, 9.15, 5.22, 7.01, 1.674, 0.087 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.4, 2.53, 9.15, 5.24, 7.07, 1.784, 0.089 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.5, 2.75, 9.15, 5.26, 7.12, 1.894, 0.091 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.6, 2.97, 9.15, 5.29, 7.18, 2.004, 0.093 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна гидравлического масла 2' AND ship_id=2), 1.69, 3.17, 9.15, 5.3, 7.23, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0, 0, 5.42, 4.81, 7.3, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.1, 0.21, 5.42, 4.81, 7.3, 0.608, 0.263 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.2, 0.44, 5.42, 4.83, 7.35, 0.711, 0.278 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.3, 0.68, 5.42, 4.86, 7.4, 0.819, 0.292 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.4, 0.93, 5.42, 4.88, 7.46, 0.934, 0.305 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.5, 1.19, 5.42, 4.91, 7.51, 1.056, 0.318 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.6, 1.46, 5.42, 4.93, 7.56, 1.181, 0.33 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.7, 1.74, 5.42, 4.96, 7.62, 1.314, 0.342 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.8, 2.03, 5.42, 4.98, 7.67, 1.453, 0.354 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 0.9, 2.33, 5.42, 5, 7.73, 1.594, 0.366 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1, 2.64, 5.42, 5.03, 7.78, 1.742, 0.377 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.1, 2.96, 5.42, 5.05, 7.84, 1.893, 0.387 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.2, 3.29, 5.42, 5.07, 7.9, 2.046, 0.398 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.3, 3.62, 5.42, 5.09, 7.95, 2.204, 0.408 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.4, 3.97, 5.42, 5.11, 8.01, 2.362, 0.417 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.5, 4.32, 5.42, 5.13, 8.06, 2.523, 0.427 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.6, 4.68, 5.42, 5.15, 8.12, 2.689, 0.436 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.7, 5.05, 5.41, 5.17, 8.18, 2.854, 0.445 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.8, 5.42, 5.41, 5.19, 8.23, 3.015, 0.453 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 1.9, 5.81, 5.41, 5.21, 8.29, 3.179, 0.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2, 6.19, 5.41, 5.23, 8.35, 3.347, 0.469 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.1, 6.59, 5.41, 5.25, 8.41, 3.507, 0.477 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.2, 6.99, 5.41, 5.27, 8.46, 3.664, 0.484 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.3, 7.4, 5.41, 5.29, 8.52, 3.821, 0.491 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна котельного масла' AND ship_id=2), 2.4, 7.81, 5.41, 5.3, 8.58, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0, 0, 13.73, 1.18, 0.06, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.1, 0.15, 13.73, 1.18, 0.06, 0.267, 0.288 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.2, 0.34, 13.73, 1.27, 0.11, 0.427, 0.338 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.3, 0.56, 13.73, 1.33, 0.17, 0.58, 0.375 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.4, 0.8, 13.73, 1.39, 0.22, 0.73, 0.405 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.5, 1.06, 13.73, 1.43, 0.28, 0.874, 0.431 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.6, 1.33, 13.72, 1.47, 0.33, 1.012, 0.453 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.7, 1.61, 13.72, 1.51, 0.39, 1.141, 0.471 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.8, 1.91, 13.72, 1.54, 0.44, 1.26, 0.487 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 0.9, 2.21, 13.72, 1.57, 0.5, 1.369, 0.501 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1, 2.52, 13.72, 1.59, 0.56, 1.469, 0.513 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.1, 2.84, 13.72, 1.62, 0.61, 1.564, 0.524 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.2, 3.16, 13.72, 1.64, 0.67, 1.655, 0.534 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.3, 3.49, 13.72, 1.66, 0.72, 1.743, 0.543 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.4, 3.83, 13.72, 1.68, 0.78, 1.829, 0.552 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.5, 4.17, 13.72, 1.69, 0.83, 1.916, 0.56 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна слива холодной воды' AND ship_id=2), 1.6, 4.52, 13.72, 1.71, 0.89, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0, 0, 14.52, -1.27, 0.05, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.1, 0.35, 14.52, -1.27, 0.05, 0.829, 2.628 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.2, 0.79, 14.51, -1.36, 0.11, 1.259, 3.047 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.3, 1.28, 14.5, -1.43, 0.16, 1.663, 3.359 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.4, 1.82, 14.5, -1.48, 0.22, 2.052, 3.614 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.5, 2.4, 14.49, -1.53, 0.27, 2.427, 3.83 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.6, 3, 14.49, -1.57, 0.33, 2.783, 4.015 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.7, 3.64, 14.49, -1.6, 0.39, 3.116, 4.174 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.8, 4.29, 14.49, -1.63, 0.44, 3.427, 4.312 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 0.9, 4.96, 14.48, -1.66, 0.5, 3.72, 4.433 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1, 5.66, 14.48, -1.69, 0.55, 4, 4.542 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.1, 6.36, 14.48, -1.72, 0.61, 4.27, 4.641 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.2, 7.08, 14.48, -1.74, 0.66, 4.535, 4.733 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.3, 7.82, 14.48, -1.76, 0.72, 4.798, 4.82 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.4, 8.57, 14.48, -1.78, 0.77, 5.062, 4.903 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.5, 9.33, 14.48, -1.8, 0.83, 5.335, 4.986 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна грязного масла' AND ship_id=2), 1.6, 10.11, 14.48, -1.82, 0.88, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0, 0, 11.81, 0.98, 0.06, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.1, 0.17, 11.81, 0.98, 0.06, 0.18, 1.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.2, 0.43, 11.77, 1.07, 0.11, 0.322, 1.821 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.3, 0.74, 11.75, 1.12, 0.17, 0.466, 2.082 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.4, 1.08, 11.74, 1.17, 0.23, 0.613, 2.298 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.5, 1.46, 11.73, 1.21, 0.29, 0.761, 2.483 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.6, 1.86, 11.73, 1.25, 0.34, 0.907, 2.643 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.7, 2.28, 11.72, 1.28, 0.4, 1.043, 2.779 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.8, 2.72, 11.72, 1.31, 0.46, 1.171, 2.896 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 0.9, 3.17, 11.71, 1.33, 0.51, 1.287, 2.994 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1, 3.64, 11.71, 1.36, 0.57, 1.39, 3.077 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.1, 4.13, 11.71, 1.38, 0.63, 1.481, 3.145 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.2, 4.62, 11.71, 1.4, 0.68, 1.56, 3.202 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.3, 5.12, 11.7, 1.41, 0.74, 1.634, 3.252 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.4, 5.62, 11.7, 1.43, 0.79, 1.701, 3.295 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.5, 6.14, 11.7, 1.44, 0.85, 1.764, 3.332 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Цистерна льяльных вод' AND ship_id=2), 1.6, 6.66, 11.7, 1.45, 0.9, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0, 0, 11.81, -0.98, 0.06, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.1, 0.17, 11.81, -0.98, 0.06, 0.18, 1.461 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.2, 0.43, 11.77, -1.07, 0.11, 0.322, 1.821 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.3, 0.74, 11.75, -1.12, 0.17, 0.466, 2.082 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.4, 1.08, 11.74, -1.17, 0.23, 0.613, 2.298 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.5, 1.46, 11.73, -1.21, 0.29, 0.761, 2.483 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.6, 1.86, 11.73, -1.25, 0.34, 0.907, 2.643 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.7, 2.28, 11.72, -1.28, 0.4, 1.043, 2.779 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.8, 2.72, 11.72, -1.31, 0.46, 1.171, 2.896 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 0.9, 3.17, 11.71, -1.33, 0.51, 1.287, 2.994 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1, 3.64, 11.71, -1.36, 0.57, 1.39, 3.077 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.1, 4.13, 11.71, -1.38, 0.63, 1.481, 3.145 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.2, 4.62, 11.71, -1.4, 0.68, 1.56, 3.202 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.3, 5.12, 11.7, -1.41, 0.74, 1.634, 3.252 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.4, 5.62, 11.7, -1.43, 0.79, 1.701, 3.295 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.5, 6.14, 11.7, -1.44, 0.85, 1.764, 3.332 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Авар. сточная цистерна' AND ship_id=2), 1.6, 6.66, 11.7, -1.45, 0.9, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0, 0, 5.47, -0.34, 3.55, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.1, 0.07, 5.47, -0.34, 3.55, 0.029, 0.084 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.2, 0.15, 5.47, -0.34, 3.6, 0.029, 0.084 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.3, 0.22, 5.47, -0.34, 3.65, 0.029, 0.084 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.4, 0.29, 5.47, -0.34, 3.7, 0.031, 0.084 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.5, 0.37, 5.47, -0.34, 3.75, 0.033, 0.086 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.6, 0.44, 5.48, -0.34, 3.8, 0.036, 0.088 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.7, 0.52, 5.48, -0.34, 3.86, 0.041, 0.091 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.8, 0.6, 5.48, -0.35, 3.91, 0.048, 0.096 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 0.9, 0.69, 5.48, -0.36, 3.96, 0.058, 0.102 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1, 0.78, 5.48, -0.36, 4.02, 0.073, 0.11 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.1, 0.89, 5.48, -0.38, 4.08, 0.097, 0.122 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.2, 1, 5.48, -0.39, 4.15, 0.134, 0.137 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.3, 1.16, 5.45, -0.41, 4.23, 0.245, 0.535 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.4, 1.36, 5.41, -0.43, 4.32, 0.365, 0.693 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.5, 1.59, 5.38, -0.46, 4.41, 0.548, 0.944 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.6, 1.87, 5.33, -0.5, 4.51, 0.823, 1.345 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.7, 2.21, 5.28, -0.55, 4.61, 1.223, 1.98 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.8, 2.64, 5.22, -0.6, 4.71, 1.785, 2.958 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 1.9, 3.15, 5.15, -0.66, 4.82, 2.544, 4.436 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2, 3.76, 5.06, -0.72, 4.92, 3.549, 6.596 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.1, 4.5, 4.97, -0.78, 5.02, 4.86, 9.646 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.2, 5.38, 4.86, -0.85, 5.13, 6.453, 13.842 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.3, 6.4, 4.75, -0.91, 5.23, 8.441, 19.327 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.4, 7.58, 4.63, -0.98, 5.32, 10.824, 26.468 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.5, 8.93, 4.5, -1.04, 5.42, 13.572, 35.384 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.6, 10.46, 4.37, -1.1, 5.51, 16.776, 46.316 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.7, 12.19, 4.24, -1.17, 5.6, 20.415, 59.48 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.8, 14.11, 4.11, -1.22, 5.69, 24.512, 75.119 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 2.9, 15.78, 3.93, -1.25, 5.76, 17.555, 51.608 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3, 17.56, 3.75, -1.28, 5.83, 21.168, 65.137 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.1, 19.54, 3.57, -1.32, 5.9, 25.071, 80.342 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.2, 21.71, 3.4, -1.35, 5.98, 28.908, 93.477 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.3, 24.04, 3.24, -1.39, 6.05, 32.774, 104.95 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.4, 26.53, 3.09, -1.43, 6.13, 36.698, 115.212 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.5, 29.17, 2.95, -1.47, 6.2, 40.641, 124.349 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.6, 31.94, 2.83, -1.51, 6.28, 44.673, 132.771 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.7, 34.83, 2.72, -1.55, 6.35, 48.681, 140.389 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 ЛБ' AND ship_id=2), 3.75, 36.32, 2.66, -1.57, 6.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0, 0, 5.47, 0.32, 3.55, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.1, 0.08, 5.47, 0.32, 3.55, 0.032, 0.087 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.2, 0.15, 5.47, 0.32, 3.6, 0.032, 0.087 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.3, 0.23, 5.47, 0.32, 3.65, 0.033, 0.087 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.4, 0.3, 5.47, 0.32, 3.7, 0.034, 0.088 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.5, 0.38, 5.47, 0.32, 3.75, 0.036, 0.089 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.6, 0.46, 5.47, 0.33, 3.8, 0.04, 0.091 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.7, 0.54, 5.47, 0.33, 3.86, 0.045, 0.094 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.8, 0.62, 5.47, 0.33, 3.91, 0.052, 0.099 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 0.9, 0.71, 5.48, 0.34, 3.96, 0.063, 0.105 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1, 0.81, 5.48, 0.35, 4.02, 0.079, 0.113 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.1, 0.91, 5.48, 0.36, 4.08, 0.104, 0.124 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.2, 1.03, 5.48, 0.38, 4.15, 0.142, 0.14 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.3, 1.2, 5.44, 0.39, 4.23, 0.259, 0.57 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.4, 1.39, 5.41, 0.42, 4.32, 0.384, 0.732 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.5, 1.63, 5.37, 0.44, 4.41, 0.573, 0.986 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.6, 1.92, 5.33, 0.48, 4.51, 0.857, 1.392 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.7, 2.26, 5.28, 0.53, 4.61, 1.267, 2.036 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.8, 2.69, 5.22, 0.58, 4.71, 1.838, 3.028 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 1.9, 3.2, 5.14, 0.64, 4.81, 2.609, 4.521 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2, 3.82, 5.06, 0.7, 4.92, 3.631, 6.702 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.1, 4.57, 4.96, 0.76, 5.02, 4.962, 9.787 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.2, 5.44, 4.86, 0.83, 5.12, 6.576, 14.022 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.3, 6.46, 4.74, 0.89, 5.22, 8.585, 19.563 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.4, 7.65, 4.62, 0.96, 5.32, 11.002, 26.754 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.5, 9, 4.5, 1.02, 5.41, 13.772, 35.722 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.6, 10.53, 4.37, 1.08, 5.51, 16.982, 46.701 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.7, 12.26, 4.24, 1.15, 5.6, 20.692, 59.956 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.8, 14.17, 4.1, 1.2, 5.69, 24.791, 75.617 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 2.9, 15.84, 3.93, 1.23, 5.76, 17.786, 52.033 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3, 17.63, 3.75, 1.26, 5.83, 21.418, 65.606 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.1, 19.61, 3.57, 1.3, 5.9, 25.331, 80.699 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.2, 21.77, 3.4, 1.33, 5.97, 29.179, 93.634 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.3, 24.1, 3.24, 1.37, 6.05, 33.042, 104.953 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.4, 26.58, 3.09, 1.41, 6.12, 36.981, 115.038 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.5, 29.2, 2.95, 1.45, 6.2, 40.938, 124.1 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.6, 31.96, 2.83, 1.49, 6.27, 44.978, 132.372 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.7, 34.84, 2.71, 1.53, 6.34, 48.993, 139.914 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Борт. цистерна 4 Пр.Б' AND ship_id=2), 3.75, 36.32, 2.66, 1.55, 6.38, 0, 0;


DELETE FROM compartment_curve WHERE space_id IN (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2);

INSERT INTO compartment_curve
  (ship_id, space_id, level, volume, buoyancy_x, buoyancy_y, buoyancy_z, trans_inertia_moment_self, long_inertia_moment_self)
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0, 0, 0, 0, 0, 0, 0 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.1, 9.01, 14.45, 0, 9.7, 405, 1331 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.2, 18.01, 14.45, 0, 9.75, 405, 1331 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.3, 27.02, 14.45, 0, 9.8, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.4, 36.03, 14.45, 0, 9.85, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.5, 45.03, 14.45, 0, 9.9, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.6, 54.04, 14.45, 0, 9.95, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.7, 63.05, 14.45, 0, 10, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.8, 72.05, 14.45, 0, 10.05, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 0.9, 81.06, 14.45, 0, 10.1, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1, 90.07, 14.45, 0, 10.15, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.1, 99.07, 14.45, 0, 10.2, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.2, 108.08, 14.45, 0, 10.25, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.3, 117.09, 14.45, 0, 10.3, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.4, 126.09, 14.45, 0, 10.35, 1330.816, 404.922 UNION ALL
SELECT 2, (SELECT space_id FROM compartment WHERE name_rus='Палубный колодец' AND ship_id=2), 1.5, 135.1, 14.45, 0, 10.4, 0, 0;


