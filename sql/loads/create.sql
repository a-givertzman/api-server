-- Постоянная нагрузка на судно, распределенная по шпациям
DROP TABLE IF EXISTS load_constant;

CREATE TABLE if not exists load_constant (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  mass FLOAT8 NOT NULL,
  bound_x1 FLOAT8 NOT NULL,
  bound_x2 FLOAT8 NOT NULL,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  CONSTRAINT load_constant_pk PRIMARY KEY (id),
  CONSTRAINT load_constant_bound_x_check CHECK(bound_x1 < bound_x2),
  CONSTRAINT load_constant_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
);


-- Координаты и параметры отсеков и цистерн.
DROP TABLE IF EXISTS compartment CASCADE;

CREATE TABLE if not exists compartment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  name_rus TEXT NOT NULL,
  ab_rus TEXT,
  name_engl TEXT,
  ab_engl TEXT,
  active BOOLEAN NOT NULL DEFAULT TRUE, 
  use_max_m_f_s BOOLEAN NOT NULL DEFAULT FALSE, 
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
  max_m_f_s_y FLOAT8,
  max_m_f_s_x FLOAT8,
  grain_moment FLOAT8, 
  svg_paths TEXT,
  category_id INT NOT NULL, -- ID of the cargo_category entry;
  CONSTRAINT compartment_pk PRIMARY KEY (id),
  CONSTRAINT compartment_id_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id),
  CONSTRAINT compartment_name_rus_unique UNIQUE (project_id, ship_id, name_rus),
  CONSTRAINT compartment_name_rus_check CHECK(char_length(name_rus) <= 100),
  CONSTRAINT compartment_ab_rus_unique UNIQUE (project_id, ship_id, ab_rus),
  CONSTRAINT compartment_ab_rus_check CHECK(char_length(ab_rus) <= 50),
  CONSTRAINT compartment_name_engl_unique UNIQUE (project_id, ship_id, name_engl),
  CONSTRAINT compartment_name_engl_check CHECK(char_length(name_engl) <= 100),
  CONSTRAINT compartment_ab_engl_unique UNIQUE (project_id, ship_id, ab_engl),
  CONSTRAINT compartment_ab_engl_check CHECK(char_length(ab_engl) <= 50),
  CONSTRAINT compartment_density_check CHECK(density IS NULL OR density > 0),
  CONSTRAINT compartment_volume_max_check CHECK(volume_max IS NULL OR volume_max > 0),
  CONSTRAINT compartment_mass_check CHECK(mass IS NULL OR mass >= 0),
  CONSTRAINT compartment_volume_check CHECK(volume IS NULL OR volume >= 0),
  CONSTRAINT compartment_bound_x_check CHECK(bound_x1 < bound_x2),
  CONSTRAINT compartment_shift_x_check CHECK(mass_shift_x IS NULL OR (mass_shift_x >= bound_x1 AND mass_shift_x <= bound_x2)),
  CONSTRAINT compartment_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
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
  static_moment_x FLOAT8,
  static_moment_y FLOAT8,
  static_moment_z FLOAT8,
  area_vl FLOAT8,
  trans_inertia_moment_self FLOAT8 NOT NULL DEFAULT 0,
  trans_inertia_moment_mov FLOAT8,
  long_inertia_moment_self FLOAT8 NOT NULL DEFAULT 0,
  long_inertia_moment_mov FLOAT8,
  CONSTRAINT compartment_curve_pk PRIMARY KEY (id),
  CONSTRAINT compartment_curve_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id, level)
);


-- Кренящий момент от смещения сыпучего груза
DROP TABLE IF EXISTS grain_moment CASCADE;

CREATE TABLE if not exists grain_moment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  space_id INT NOT NULL,
  level FLOAT8 NOT NULL,
  moment FLOAT8 NOT NULL,
  CONSTRAINT grain_moment_pk PRIMARY KEY (id),
  CONSTRAINT grain_moment_key_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, space_id, level)
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
  timber BOOLEAN NOT NULL DEFAULT FALSE,
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
  category_id INT NOT NULL, -- ID of the cargo_category entry;
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
  CONSTRAINT cargo_vertical_area_shift_z_check CHECK(vertical_area_shift_z IS NULL OR bound_z1 IS NULL OR (vertical_area_shift_z >= bound_z1 AND vertical_area_shift_z <= bound_z2)),
  CONSTRAINT cargo_category_fk FOREIGN KEY (category_id) REFERENCES cargo_category (id)
);