DELETE FROM horizontal_area_stability WHERE ship_id=2;

INSERT INTO horizontal_area_stability
  (ship_id, name, value, shift_x, shift_z, shift_y)
VALUES
  (2, 'Poopdeck', 204, 5.5, 11.6, 0),
  (2, 'Emergency generator room', 12, 3, 15, 3.5),
  (2, 'Boatdeck', 16, 7.5, 15, -6),
  (2, 'Bridge & topdeck', 60, 8.5, 25.5, 0),
  (2, 'Top funnel', 9, 2.4, 22, 0),
  (2, 'Maindeck fr. 17 - 28', 175, 15, 9.7, 0),
  (2, 'Gangways', 250, 66, 11.2, 0),
  (2, 'Crossbunker fr. 99 - 102', 29, 72.5, 12, 0),
  (2, 'Forecastle deck fr. 156 - 160', 40, 121, 11.2, 0),
  (2, '…opy', 140, 126.5, 15, 0),
  (2, 'Hatches', 1230, 72.5, 12.5, 0),
  (2, 'Crane aft', 35, 29, 20.5, -5.5),
  (2, 'Crane fore', 35, 70, 20.5, -5.5);