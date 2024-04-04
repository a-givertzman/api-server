
drop table ship;
drop table load_constant;
drop table load_space;
drop table computed_frame;

CREATE TABLE if not exists ship (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  name TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT ship_pk PRIMARY KEY (id),
  CONSTRAINT ship_unique UNIQUE (ship_id, key),
  CONSTRAINT ship_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_value_check CHECK(char_length(value) > 0 AND char_length(value) <= 50),
  CONSTRAINT ship_type_check CHECK(char_length(value_type) > 0 AND char_length(value_type) <= 10),
  CONSTRAINT ship_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT ship_unit_check CHECK(char_length(unit) <= 10)
);

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

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_space_index INT NOT NULL,
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_constant_key_unique UNIQUE (ship_id, frame_space_index, key),
  CONSTRAINT load_constant_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50)
);

CREATE TABLE if not exists load_space (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  key TEXT NOT NULL,
  value TEXT NOT NULL,
  value_type TEXT NOT NULL,
  unit TEXT,
  CONSTRAINT load_space_pk PRIMARY KEY (id),
  CONSTRAINT load_space_key_unique UNIQUE (ship_id, space_id, key),
  CONSTRAINT ship_value_check CHECK(char_length(value) <= 50),
  CONSTRAINT ship_type_check CHECK(char_length(value_type) <= 10),
  CONSTRAINT load_space_key_check CHECK(char_length(key) > 0 AND char_length(key) <= 50),
  CONSTRAINT ship_unit_check CHECK(char_length(unit) <= 10)
);


truncate table ship;
truncate table load_constant;

INSERT INTO ship
  (ship_id, key, value, value_type, name, unit)
VALUES
  (1, 'name', 'M/V "YURIY ARSHENEVSKIY"', 'text', 'Name of ship', NULL),
  (1, 'length', '118.39', 'real', 'Ship hull length', 'm');

INSERT INTO load_constant
  (project_id, ship_id, frame_space_index, key, value)
VALUES
  (NULL, 1, 0, 'hull', 90.95),
  (NULL, 1, 0, 'equipment', 48.39);

