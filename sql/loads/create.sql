-- Типы элементов погрузки корабля
DROP TYPE IF EXISTS loading_type CASCADE;

CREATE TYPE loading_type AS ENUM (
  'lightship',
  'ballast',
  'store',
  'cargo'
);

-- Постоянная нагрузка на судно, распределенная по шпациям
DROP TABLE IF EXISTS load_constant;

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  frame_start_index INT NOT NULL,
  frame_end_index INT NOT NULL,
  mass FLOAT8 NOT NULL,
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_space_bound_x_check CHECK(frame_start_index < frame_end_index)
);

-- Координаты и параметры отсеков и цистерн.
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
  loading_type loading_type,
  CONSTRAINT load_space_pk PRIMARY KEY (id),
  CONSTRAINT load_space_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id),
  CONSTRAINT load_space_name_unique UNIQUE (project_id, ship_id, name),
  CONSTRAINT load_space_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT load_space_bound_type_check CHECK(char_length(bound_type) <= 50),
  CONSTRAINT load_space_density_check CHECK(density IS NULL OR density > 0),
  CONSTRAINT load_space_volume_max_check CHECK(volume_max IS NULL OR volume_max > 0),
  CONSTRAINT load_space_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT load_space_volume_check CHECK(volume IS NULL OR volume >= 0),
  CONSTRAINT load_space_bound_x_check CHECK(bound_x1 < bound_x2), 
  CONSTRAINT load_space_mass_shift_x_check CHECK(mass_shift_x IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2))
);


-- Элементы ЦГБ
DROP TABLE IF EXISTS tank_curve CASCADE;

CREATE TABLE if not exists tank_curve (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  level FLOAT8 NOT NULL,
  volume FLOAT8 NOT NULL,
  buoyancy_x FLOAT8 NOT NULL,
  buoyancy_y FLOAT8 NOT NULL,
  buoyancy_z FLOAT8 NOT NULL,
  static_moment_x FLOAT8 NOT NULL,
  static_moment_y FLOAT8 NOT NULL,
  static_moment_z FLOAT8 NOT NULL,
  area_vl FLOAT8 NOT NULL,
  trans_inertia_moment_self FLOAT8 NOT NULL,
  trans_inertia_moment_mov FLOAT8 NOT NULL,
  long_inertia_moment_self FLOAT8 NOT NULL,
  long_inertia_moment_mov FLOAT8 NOT NULL,
  CONSTRAINT tank_curve_pk PRIMARY KEY (id),
  CONSTRAINT tank_curve_key_unique UNIQUE (ship_id, space_id, level)
);

-- Координаты и параметры грузов
DROP TABLE IF EXISTS cargo CASCADE;

CREATE TABLE if not exists cargo (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  mass FLOAT8,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  bound_type TEXT NOT NULL,
  bound_y1 FLOAT8,
  bound_y2 FLOAT8,
  bound_z1 FLOAT8,
  bound_z2 FLOAT8,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  horizontal_area FLOAT8,
  horizontal_area_shift_x FLOAT8,
  horizontal_area_shift_y FLOAT8,
  horizontal_area_shift_z FLOAT8,
  vertical_area FLOAT8,
  vertical_area_shift_x FLOAT8,
  vertical_area_shift_y FLOAT8,
  vertical_area_shift_z FLOAT8,
  loading_type loading_type,
  CONSTRAINT cargo_pk PRIMARY KEY (id),
  --CONSTRAINT cargo_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name),
  CONSTRAINT cargo_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT cargo_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT cargo_horizontal_area_check CHECK(horizontal_area IS NULL OR horizontal_area >= 0),
  CONSTRAINT cargo_vertical_area_check CHECK(vertical_area IS NULL OR vertical_area >= 0),
  CONSTRAINT cargo_bound_x_check CHECK(bound_x1 < bound_x2), 
  CONSTRAINT cargo_mass_shift_x_check CHECK(mass_shift_x IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2)),
  CONSTRAINT cargo_horizontal_area_shift_x_check CHECK(horizontal_area_shift_x IS NULL OR (horizontal_area_shift_x >= bound_x1 AND horizontal_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_vertical_area_shift_x_check CHECK(vertical_area_shift_x IS NULL OR (vertical_area_shift_x >= bound_x1 AND vertical_area_shift_x <= bound_x2)),
  CONSTRAINT cargo_bound_y_check CHECK(bound_y1 IS NULL OR (bound_y1 < bound_y2)), 
  CONSTRAINT cargo_mass_shift_y_check CHECK(mass_shift_y IS NULL OR bound_y1 IS NULL OR (mass_shift_y >= bound_y1 AND mass_shift_y <= bound_y2)),
  CONSTRAINT cargo_horizontal_area_shift_y_check CHECK(horizontal_area_shift_y IS NULL OR bound_y1 IS NULL OR (horizontal_area_shift_y >= bound_y1 AND horizontal_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_vertical_area_shift_y_check CHECK(vertical_area_shift_y IS NULL OR bound_y1 IS NULL OR (vertical_area_shift_y >= bound_y1 AND vertical_area_shift_y <= bound_y2)),
  CONSTRAINT cargo_bound_z_check CHECK(bound_z1 IS NULL OR (bound_z1 < bound_z2)), 
  CONSTRAINT cargo_mass_shift_z_check CHECK(mass_shift_z IS NULL OR bound_z1 IS NULL OR (mass_shift_z >= bound_z1 AND mass_shift_z <= bound_z2)),
  CONSTRAINT cargo_horizontal_area_shift_z_check CHECK(horizontal_area_shift_z IS NULL OR bound_z1 IS NULL OR (horizontal_area_shift_z >= bound_z1 AND horizontal_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_vertical_area_shift_z_check CHECK(vertical_area_shift_z IS NULL OR bound_z1 IS NULL OR (vertical_area_shift_z >= bound_z1 AND vertical_area_shift_z <= bound_z2))
);








