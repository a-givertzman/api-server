-- Теоретические шпангоуты
DROP TABLE theoretical_frame CASCADE;

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
DROP TABLE frame_area CASCADE;

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
DROP TABLE physical_frame CASCADE;

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


-- Рассчитанные шпации для расчета прочности
DROP TABLE computed_frame CASCADE;

CREATE TABLE
    IF NOT EXISTS computed_frame (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        index INT NOT NULL,
        key TEXT NOT NULL,
        value FLOAT8 NOT NULL,
        CONSTRAINT computed_frame_pk PRIMARY KEY (id),
        CONSTRAINT computed_frame_index_unique UNIQUE (ship_id, index, key),
        CONSTRAINT computed_frame_key_check CHECK (
            char_length(key) > 0
            AND char_length(key) <= 50
        )
    );

-- Результаты расчета прочности
DROP TABLE strength_result CASCADE;

CREATE TABLE
    IF NOT EXISTS strength_result (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        index INT NOT NULL,
        key TEXT NOT NULL,
        value FLOAT8 NOT NULL,
        CONSTRAINT strength_result_pk PRIMARY KEY (id),
        CONSTRAINT strength_result_index_unique UNIQUE (ship_id, index, key),
        CONSTRAINT strength_result_key_check CHECK (
            char_length(key) > 0
            AND char_length(key) <= 50
        )
    );
