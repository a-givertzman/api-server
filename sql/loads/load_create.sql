DROP TABLE IF EXISTS load_space;

CREATE TABLE if not exists load_space (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  name TEXT NOT NULL,
  volume FLOAT8 NOT NULL,
  volume_max FLOAT8 NOT NULL,
  level FLOAT8 NOT NULL,
  mass FLOAT8 NOT NULL,
  density FLOAT8 NOT NULL,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  mass_shift_x FLOAT8 NOT NULL,
  mass_shift_y FLOAT8 NOT NULL,
  mass_shift_z FLOAT8 NOT NULL,
  m_f_s_y FLOAT8 NOT NULL,
  m_f_s_x FLOAT8 NOT NULL,
  CONSTRAINT load_space_pk PRIMARY KEY (id),
  CONSTRAINT load_space_id_unique UNIQUE (ship_id, space_id),
  CONSTRAINT load_space_name_unique UNIQUE (name),
  CONSTRAINT load_space_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT load_space_density_check CHECK(density > 0),
);


