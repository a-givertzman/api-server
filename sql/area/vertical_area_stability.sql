-- Зависимость площади и моментов парусности корпуса от осадки
-- d [m] | Av CS [m2] | Mvx CS [m3] | Mvz CS dmin [m3]

DROP TABLE IF EXISTS vertical_area_stability;

CREATE TABLE if not exists vertical_area_stability (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  draught REAL NOT NULL,
  area REAL NOT NULL,
  moment_x REAL NOT NULL,
  moment_z REAL NOT NULL,  
  CONSTRAINT vertical_area_stability_pk PRIMARY KEY (id),
  CONSTRAINT vertical_area_stability_draught_check CHECK(draught > 0),
  CONSTRAINT vertical_area_stability_area_check CHECK(area > 0),
  CONSTRAINT vertical_area_stability_moment_x_check CHECK(moment_x > 0),
  CONSTRAINT vertical_area_stability_moment_z_check CHECK(moment_z > 0),
  CONSTRAINT vertical_area_stability_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, draught)
);

