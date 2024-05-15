-- Координаты и параметры отсеков и цистерн.
-- ИД судна, 
DROP TABLE IF EXISTS load_space CASCADE;

CREATE TABLE if not exists load_space (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  name TEXT NOT NULL,
  volume FLOAT8,
  volume_max FLOAT8,
  level FLOAT8,
  mass FLOAT8,
  density FLOAT8,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  bound_type TEXT NOT NULL,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  m_f_s_y FLOAT8,
  m_f_s_x FLOAT8,
  CONSTRAINT load_space_pk PRIMARY KEY (id),
  CONSTRAINT load_space_id_unique UNIQUE (ship_id, space_id),
  CONSTRAINT load_space_name_unique UNIQUE (name),
  CONSTRAINT load_space_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT load_space_bound_type_check CHECK(char_length(bound_type) <= 50),
  CONSTRAINT load_space_density_check CHECK(density IS NULL OR density > 0),
  CONSTRAINT load_space_volume_max_check CHECK(volume_max IS NULL OR volume_max > 0)
);


