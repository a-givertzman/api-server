-- Типы элементов постоянной массы судна
DROP TYPE IF EXISTS load_constant_type CASCADE;

CREATE TYPE load_constant_type AS ENUM (
  'hull',
  'equipment'
);

-- Типы грузов судна
DROP TYPE IF EXISTS cargo_type CASCADE;

CREATE TYPE cargo_type AS ENUM (
  'BALLAST',
  'OILS_AND_FUELS',
  'FRESH_WATER',
  'ACIDS_AND_ALKALIS',
  'POLLUTED_LIQUIDS',
  'GENERAL_CARGO'
);

-- Постоянная нагрузка на судно, распределенная по шпациям
DROP TABLE IF EXISTS load_constant;

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  mass FLOAT8 NOT NULL,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  loading_type load_constant_type NOT NULL,
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_constant_bound_x_check CHECK(bound_x1 < bound_x2)
);

-- Типы элементов погрузки судна
DROP TYPE IF EXISTS loading_type CASCADE;

CREATE TYPE loading_type AS ENUM (
  'ballast',
  'store',
  'cargo'
);

-- Физический тип груза судна
DROP TYPE IF EXISTS physical_type CASCADE;

CREATE TYPE physical_type AS ENUM (
  'bulk',
  'liquid',
  'solid'
);

-- Координаты и параметры отсеков и цистерн.
DROP TABLE IF EXISTS compartment CASCADE;

CREATE TABLE if not exists compartment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  name TEXT NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE, 
  volume FLOAT8,
  volume_max FLOAT8,
  level FLOAT8,
  mass FLOAT8,
  density FLOAT8,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  bound_y1 FLOAT8,
  bound_y2 FLOAT8,
  bound_z1 FLOAT8,
  bound_z2 FLOAT8,
  mass_shift_x FLOAT8,
  mass_shift_y FLOAT8,
  mass_shift_z FLOAT8,
  m_f_s_y FLOAT8,
  m_f_s_x FLOAT8,
  loading_type loading_type NOT NULL,
  physical_type physical_type NOT NULL,
  svg_paths TEXT,
  cargo_type cargo_type NOT NULL,
  CONSTRAINT compartment_pk PRIMARY KEY (id),
  CONSTRAINT compartment_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id),
  CONSTRAINT compartment_name_unique UNIQUE (project_id, ship_id, name),
  CONSTRAINT compartment_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT compartment_bound_type_check CHECK(char_length(bound_type) <= 50),
  CONSTRAINT compartment_density_check CHECK(density IS NULL OR density > 0),
  CONSTRAINT compartment_volume_max_check CHECK(volume_max IS NULL OR volume_max > 0),
  CONSTRAINT compartment_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT compartment_volume_check CHECK(volume IS NULL OR volume >= 0),
  CONSTRAINT compartment_bound_x_check CHECK(bound_x1 < bound_x2),
  CONSTRAINT compartment_shift_x_check CHECK(mass_shift_x IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2)),
);


-- Элементы ЦГБ
DROP TABLE IF EXISTS compartment_curve CASCADE;

CREATE TABLE if not exists compartment_curve (
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
  CONSTRAINT compartment_curve_pk PRIMARY KEY (id),
  CONSTRAINT compartment_curve_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id, level)
);

-- Разделители и зависимые от них отсеки
DROP TABLE IF EXISTS compartment_separators CASCADE;

CREATE TABLE if not exists compartment_separators (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  compartment_space_id INT NOT NULL,  
  separator1_space_id INT NOT NULL,
  separator2_space_id INT,
  compartment_active BOOLEAN NOT NULL, -- состояние при наличии разделителя отсека
  CONSTRAINT compartment_separators_pk PRIMARY KEY (id),
  CONSTRAINT compartment_separators_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, compartment_space_id, separator1_space_id)
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
  loading_type loading_type NOT NULL,
  CONSTRAINT cargo_pk PRIMARY KEY (id),
  --CONSTRAINT cargo_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name),
  CONSTRAINT cargo_name_check CHECK(char_length(name) <= 50),
  CONSTRAINT cargo_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT cargo_horizontal_area_check CHECK(horizontal_area IS NULL OR horizontal_area >= 0),
  CONSTRAINT cargo_vertical_area_check CHECK(vertical_area IS NULL OR vertical_area >= 0),
  CONSTRAINT cargo_bound_x_check CHECK(bound_x1 < bound_x2), 
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








