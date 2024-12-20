DELETE FROM horizontal_area_strength WHERE ship_id=2;

INSERT INTO horizontal_area_strength
  (ship_id, name, value, bound_x1, bound_x2)
VALUES
  (2, 'Poopdeck', 204.0, -3.6, 10.9),
  (2, 'Emergency generator room', 12.0, 0.6, 3.9),
  (2, 'Boatdeck', 16.0, 4.8, 10.9),
  (2, 'Bridge & topdeck', 60.0, 4.8, 10.9),
  (2, 'Top funnel', 9.0, 0.0, 3.6),
  (2, 'Maindeck fr. 17 - 28', 175.0, 10.9, 18.6),
  (2, 'Gangways', 250.0, 25.3, 120.0),
  (2, 'Crossbunker fr. 99 - 102', 29.0, 71.1, 73.4),
  (2, 'Forecastle deck fr. 156 - 160', 40.0, 120.0, 122.9),
  (2, '…opy', 140.0, 120.7, 134.5),
  (2, 'Hatches', 1230.0, 18.6, 120.0),
  (2, 'Crane aft', 35.0, 40.3, 46.5),
  (2, 'Crane fore', 35.0, 92.1, 98.3);