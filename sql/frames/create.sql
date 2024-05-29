-- Теоретические шпангоуты
DROP TABLE IF EXISTS theoretical_frame CASCADE;

CREATE TABLE if not exists theoretical_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_index INT NOT NULL, 
  pos_x FLOAT8 NOT NULL,
  CONSTRAINT theoretical_frame_pk PRIMARY KEY (id),
  CONSTRAINT theoretical_frame_index_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, frame_index),
  CONSTRAINT theoretical_frame_pos_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, pos_x)
);

-- Практические шпангоуты
DROP TABLE IF EXISTS physical_frame CASCADE;

CREATE TABLE if not exists physical_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_index INT NOT NULL, 
  pos_x FLOAT8 NOT NULL,
  CONSTRAINT physical_frame_pk PRIMARY KEY (id),
  CONSTRAINT physical_frame_index_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, frame_index),
  CONSTRAINT physical_frame_pos_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, pos_x)
);

-- Шпангоуты для бонжан
DROP TABLE IF EXISTS bonjean_frame CASCADE;

CREATE TABLE if not exists bonjean_frame (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_index INT NOT NULL, 
  pos_x FLOAT8 NOT NULL,
  CONSTRAINT bonjean_frame_pk PRIMARY KEY (id),
  CONSTRAINT bonjean_frame_index_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, frame_index),
  CONSTRAINT bonjean_frame_pos_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, pos_x)
);

-- Погруженные площади шпангоутов
DROP TABLE IF EXISTS frame_area CASCADE;

CREATE TABLE if not exists frame_area (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_index INT NOT NULL,
  draft FLOAT8 NOT NULL,
  area FLOAT8 NOT NULL,
  CONSTRAINT frame_area_pk PRIMARY KEY (id),
  CONSTRAINT frame_area_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, frame_index, draft)
);

-- Рассчитанные шпации для расчета прочности
DROP TABLE IF EXISTS computed_frame_space CASCADE;

CREATE TABLE
    IF NOT EXISTS computed_frame_space (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        index INT NOT NULL,
        start_x FLOAT8 NOT NULL,
        end_x FLOAT8 NOT NULL,
        CONSTRAINT computed_frame_space_pk PRIMARY KEY (id),
        CONSTRAINT computed_frame_space_index_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, index),
        CONSTRAINT computed_frame_space_start_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, start_x),
        CONSTRAINT computed_frame_space_end_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, end_x)
    );


