-- Разница в статических моментах относительно миделя и ОП соответствеено, м³
-- d, м | delta_M_x, м | delta_M_z, м
DROP TABLE IF EXISTS delta_windage_moment CASCADE;

CREATE TABLE if not exists delta_windage_moment (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  draught FLOAT8 NOT NULL,
  value_x FLOAT8 NOT NULL,
  value_z FLOAT8 NOT NULL,
  CONSTRAINT delta_windage_moment_pk PRIMARY KEY (id),
  CONSTRAINT delta_windage_moment_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, draught),
  CONSTRAINT delta_windage_moment_key_check CHECK(draught >= 0),
  CONSTRAINT delta_windage_moment_draught_check CHECK(draught >= 0)
);
