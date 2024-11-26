CREATE TABLE if not exists ship_geometry (
  id INT NOT NULL,
  hull_svg TEXT NOT NULL,
  hull_beauty_svg TEXT NOT NULL,
  CONSTRAINT ship_geometry_pk PRIMARY KEY (id)
);