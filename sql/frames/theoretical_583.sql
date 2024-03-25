-- Теоретические шпангоуты
CREATE TABLE if not exists frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  index INT NOT NULL, 
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT frame_pk PRIMARY KEY (id),
  CONSTRAINT frame_index_unique UNIQUE (ship_id, index, key),
  CONSTRAINT frame_key_check CHECK(char_length(key) <= 50)
);

CREATE TABLE if not exists frame_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_index INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT frame_area_pk PRIMARY KEY (id),
  CONSTRAINT frame_area_key_unique UNIQUE (frame_index, key),
  CONSTRAINT frame_area_key_non_negative CHECK (key >= 0),
  CONSTRAINT frame_area_value_non_negative CHECK (value >= 0)
);

INSERT INTO frame
    (project_id, ship_id, index, key, value)
VALUES
    (NULL, 1, 0, 'x', 0),
    (NULL, 1, 0, 'delta_x', 5.83),
    (NULL, 1, 1, 'x', 5.83),
    (NULL, 1, 1, 'delta_x', 5.83),
    (NULL, 1, 2, 'x', 11.66),
    (NULL, 1, 2, 'delta_x', 5.83),
    (NULL, 1, 3, 'x', 17.49),
    (NULL, 1, 3, 'delta_x', 5.83),
    (NULL, 1, 4, 'x', 23.32),
    (NULL, 1, 4, 'delta_x', 5.83),
    (NULL, 1, 5, 'x', 29.15),
    (NULL, 1, 5, 'delta_x', 5.83),
    (NULL, 1, 6, 'x', 34.98),
    (NULL, 1, 6, 'delta_x', 5.83),
    (NULL, 1, 7, 'x', 40.81),
    (NULL, 1, 7, 'delta_x', 5.83),
    (NULL, 1, 8, 'x', 46.64),
    (NULL, 1, 8, 'delta_x', 5.83),
    (NULL, 1, 9, 'x', 52.47),
    (NULL, 1, 9, 'delta_x', 5.83),
    (NULL, 1, 10, 'x', 58.3),
    (NULL, 1, 10, 'delta_x', 5.83),
    (NULL, 1, 11, 'x', 64.13),
    (NULL, 1, 11, 'delta_x', 5.83),
    (NULL, 1, 12, 'x', 69.96),
    (NULL, 1, 12, 'delta_x', 5.83),
    (NULL, 1, 13, 'x', 75.79),
    (NULL, 1, 13, 'delta_x', 5.83),
    (NULL, 1, 14, 'x', 81.62),
    (NULL, 1, 14, 'delta_x', 5.83),
    (NULL, 1, 15, 'x', 87.45),
    (NULL, 1, 15, 'delta_x', 5.83),
    (NULL, 1, 16, 'x', 93.28),
    (NULL, 1, 16, 'delta_x', 5.83),
    (NULL, 1, 17, 'x', 99.11),
    (NULL, 1, 17, 'delta_x', 5.83),
    (NULL, 1, 18, 'x', 104.94),
    (NULL, 1, 18, 'delta_x', 5.83),
    (NULL, 1, 19, 'x', 110.770),
    (NULL, 1, 19, 'delta_x', 5.83),
    (NULL, 1, 20, 'x', 116.6),
    (NULL, 1, 20, 'delta_x', 5.83);


    