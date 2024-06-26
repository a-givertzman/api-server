-- Угол заливания палубы, зависимость 
-- угла от осадки судна
CREATE TABLE if not exists  open_deck_angle (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT open_deck_angle_pk PRIMARY KEY (id),
  CONSTRAINT open_deck_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, key)
);

INSERT INTO  open_deck_angle
    (ship_id, key, value)
VALUES
    (1, 2.3, 36.3),
    (1, 2.5, 34.2),
    (1, 3.0, 29.8),
    (1, 3.5, 25.8),
    (1, 4.0, 21.9),
    (1, 4.6, 16.7);