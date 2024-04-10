-- Теоретические шпангоуты
CREATE TABLE if not exists theoretical_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  index INT NOT NULL, 
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT theoretical_frame_pk PRIMARY KEY (id),
  CONSTRAINT theoretical_frame_index_unique UNIQUE (ship_id, index, key),
  CONSTRAINT theoretical_frame_key_check CHECK(char_length(key) <= 50)
);

-- Погруженные площади теоретических шпангоутов
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

-- Практические шпангоуты
CREATE TABLE if not exists physical_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  index INT NOT NULL, 
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT physical_frame_pk PRIMARY KEY (id),
  CONSTRAINT physical_frame_index_unique UNIQUE (ship_id, index, key),
  CONSTRAINT physical_frame_key_check CHECK(char_length(key) <= 50)
);
