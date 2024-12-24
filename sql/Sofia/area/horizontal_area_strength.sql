DELETE FROM horizontal_area_strength WHERE ship_id=2;

INSERT INTO horizontal_area_strength
  (ship_id, name, value, bound_x1, bound_x2)
VALUES
  (2, 'Poopdeck', 204, -3.57, 10.9),
  (2, 'Emergency generator room', 12, 0.6, 3.9),
  (2, 'Boatdeck', 16, 4.8, 10.9),
  (2, 'Bridge & topdeck', 60, 4.8, 10.9),
  (2, 'Top funnel', 9, 0, 3.6),
  (2, 'Maindeck fr. 17 - 28', 175, 10.9, 18.6),
  (2, 'Gangways', 250, 25.26, 119.98),
  (2, 'Crossbunker fr. 99 - 102', 29, 71.14, 73.36),
  (2, 'Forecastle deck fr. 156 - 160', 40, 119.98, 122.94),
  (2, '…opy', 140, 120.72, 134.47),
  (2, 'Hatches', 1230, 18.6, 119.98),
  (2, 'Crane aft', 35, 40.34, 46.46),
  (2, 'Crane fore', 35, 92.14, 98.26);