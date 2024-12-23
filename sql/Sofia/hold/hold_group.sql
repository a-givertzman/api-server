DELETE FROM hold_group WHERE ship_id=2;

INSERT INTO hold_group
  (ship_id, space_id, name_rus, name_engl)
VALUES
  (2, 1001, 'Трюм №1', 'Hold №1'),
  (2, 1002, 'Трюм №2', 'Hold №2');