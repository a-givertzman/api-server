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

INSERT INTO delta_windage_moment
  (ship_id, draught, value_x, value_z)
VALUES
  (1, 0.5, -173.106, -93.6799),
  (1, 1, -66.8216, -53.0677),
  (1, 1.5, 13.45388, 16.2197),
  (1, 2, 57.9012, 115.3278),
  (1, 2.5, 60.4136, 245.4224),
  (1, 3, 16.236, 407.376),
  (1, 3.5, -49.044, 600.728),
  (1, 4, -107.878, 824.3113),
  (1, 4.5, -161.684, 1078.012),
  (1, 5, -210.654, 1361.637),
  (1, 5.5, -255.454, 1675.663),
  (1, 6, -297.371, 2020.581),
  (1, 6.5, -338.01, 2395.099),
  (1, 6.8, -362.152, 2634.193);