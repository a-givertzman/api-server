CREATE TABLE if not exists ship_geometry (
  id INT NOT NULL,
  hull_svg TEXT NOT NULL,
  hull_beauty_svg TEXT NOT NULL,
  CONSTRAINT ship_geometry_pk PRIMARY KEY (id),
  CONSTRAINT ship_geometry_hull_svgcheck CHECK(char_length(hull_svg) > 0 AND char_length(hull_svg) <= 10000),
  CONSTRAINT ship_geometry_hull_beauty_svgcheck CHECK(char_length(hull_beauty_svg) > 0 AND char_length(hull_beauty_svg) <= 10000)
);