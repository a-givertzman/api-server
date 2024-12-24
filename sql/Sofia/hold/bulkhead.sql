DELETE FROM bulkhead WHERE ship_id=2;

INSERT INTO bulkhead
  (ship_id, name_rus, name_engl, mass, category_id)
VALUES
  (2, 'Зерновая переборка №1', 'Grain Bulkhead №1', 40, 22),
  (2, 'Зерновая переборка №2', 'Grain Bulkhead №2', 40, 22);