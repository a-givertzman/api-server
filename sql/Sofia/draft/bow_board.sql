DELETE FROM bow_board WHERE ship_id=2;

INSERT INTO bow_board
  (ship_id, criterion_id, name_rus, name_engl, x, y, z)
VALUES
  (2, 143, ' Высота на носовом перпендикуляре ПрБ', 'Depth at forward perpendicular SB', 130.5, 4.555, 12.63),
  (2, 144, ' Высота на носовом перпендикуляре ЛБ', 'Depth at forward perpendicular PS', 130.5, -4.555, 12.63);