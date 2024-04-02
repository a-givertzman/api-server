-- Постоянная нагрузка на судно, распределенная по шпациям
DROP TABLE IF EXISTS load_constant;

TRUNCATE TABLE load_constant;

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_space_index INT NOT NULL,
  key TEXT NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_constant_key_unique UNIQUE (ship_id, frame_space_index, key),
  CONSTRAINT load_constant_key_check CHECK(char_length(key) <= 50)
);
