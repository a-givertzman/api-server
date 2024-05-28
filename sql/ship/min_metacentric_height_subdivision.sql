-- Минимальная метацентрическая высота деления на отсеки в
-- зависимости от средней осадки
-- D, м | h, м
CREATE TABLE if not exists min_metacentric_height_subdivision (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  key FLOAT8 NOT NULL,
  value FLOAT8 NOT NULL,
  CONSTRAINT min_metacentric_height_subdivision_pk PRIMARY KEY (id),
  CONSTRAINT min_metacentric_height_subdivision_unique UNIQUE (ship_id, key)
);

INSERT INTO min_metacentric_height_subdivision
    (ship_id, key, value)
VALUES
    (1, 0.0, 2.547),
    (1, 3.05, 2.547),
    (1, 3.06, 2.526),
    (1, 3.07, 2.504),
    (1, 3.08, 2.483),
    (1, 3.09, 2.462),
    (1, 3.1, 2.44),
    (1, 3.11, 2.419),
    (1, 3.12, 2.397),
    (1, 3.13, 2.376),
    (1, 3.14, 2.355),
    (1, 3.15, 2.333),
    (1, 3.16, 2.312),
    (1, 3.17, 2.291),
    (1, 3.18, 2.269),
    (1, 3.19, 2.248),
    (1, 3.2, 2.227),
    (1, 3.21, 2.205),
    (1, 3.22, 2.184),
    (1, 3.23, 2.162),
    (1, 3.24, 2.141),
    (1, 3.25, 2.12),
    (1, 3.26, 2.098),
    (1, 3.27, 2.077),
    (1, 3.28, 2.056),
    (1, 3.29, 2.034),
    (1, 3.3, 2.013),
    (1, 3.31, 1.991),
    (1, 3.32, 1.97),
    (1, 3.33, 1.949),
    (1, 3.34, 1.927),
    (1, 3.35, 1.906),
    (1, 3.36, 1.885),
    (1, 3.37, 1.863),
    (1, 3.38, 1.842),
    (1, 3.39, 1.821),
    (1, 3.4, 1.799),
    (1, 3.41, 1.778),
    (1, 3.42, 1.756),
    (1, 3.43, 1.735),
    (1, 3.44, 1.714),
    (1, 3.45, 1.692),
    (1, 3.46, 1.671),
    (1, 3.47, 1.65),
    (1, 3.48, 1.628),
    (1, 3.49, 1.607),
    (1, 3.5, 1.586),
    (1, 3.51, 1.564),
    (1, 3.52, 1.543),
    (1, 3.53, 1.521),
    (1, 3.54, 1.5),
    (1, 3.55, 1.479),
    (1, 3.56, 1.457),
    (1, 3.57, 1.436),
    (1, 3.58, 1.415),
    (1, 3.59, 1.393),
    (1, 3.6, 1.372),
    (1, 3.61, 1.351),
    (1, 3.62, 1.329),
    (1, 3.63, 1.308),
    (1, 3.64, 1.286),
    (1, 3.65, 1.265),
    (1, 3.66, 1.244),
    (1, 3.67, 1.222),
    (1, 3.68, 1.201),
    (1, 3.69, 1.18),
    (1, 3.7, 1.158),
    (1, 3.71, 1.137),
    (1, 3.72, 1.116),
    (1, 3.73, 1.094),
    (1, 3.74, 1.073),
    (1, 3.75, 1.051),
    (1, 3.76, 1.03),
    (1, 3.77, 1.009),
    (1, 3.78, 0.987),
    (1, 3.79, 0.966),
    (1, 3.8, 0.945),
    (1, 3.81, 0.923),
    (1, 3.82, 0.902),
    (1, 3.83, 0.88),
    (1, 3.84, 0.859),
    (1, 3.85, 0.838),
    (1, 3.86, 0.816),
    (1, 3.87, 0.795),
    (1, 3.88, 0.774),
    (1, 3.89, 0.752),
    (1, 3.9, 0.731),
    (1, 3.91, 0.71),
    (1, 3.92, 0.688),
    (1, 3.93, 0.667),
    (1, 3.94, 0.645),
    (1, 3.95, 0.624),
    (1, 3.96, 0.603),
    (1, 3.97, 0.581),
    (1, 3.98, 0.56),
    (1, 3.99, 0.564),
    (1, 4,  	0.568),
    (1, 4.01, 0.571),
    (1, 4.02, 0.575),
    (1, 4.03, 0.579),
    (1, 4.04, 0.583),
    (1, 4.05, 0.587),
    (1, 4.06, 0.59),
    (1, 4.07, 0.594),
    (1, 4.08, 0.598),
    (1, 4.09, 0.602),
    (1, 4.1, 0.606),
    (1, 4.11, 0.609),
    (1, 4.12, 0.613),
    (1, 4.13, 0.617),
    (1, 4.14, 0.621),
    (1, 4.15, 0.625),
    (1, 4.16, 0.629),
    (1, 4.17, 0.632),
    (1, 4.18, 0.636),
    (1, 4.19, 0.64),
    (1, 4.2, 0.644),
    (1, 4.21, 0.648),
    (1, 4.22, 0.651),
    (1, 4.23, 0.655),
    (1, 4.24, 0.659),
    (1, 4.25, 0.663),
    (1, 4.26, 0.667),
    (1, 4.27, 0.67),
    (1, 4.28, 0.674),
    (1, 4.29, 0.678),
    (1, 4.3, 0.682),
    (1, 4.31, 0.686),
    (1, 4.32, 0.689),
    (1, 4.33, 0.693),
    (1, 4.34, 0.697),
    (1, 4.35, 0.701),
    (1, 4.36, 0.705),
    (1, 4.37, 0.708),
    (1, 4.38, 0.712),
    (1, 4.39, 0.716),
    (1, 4.4, 0.72),
    (1, 4.41, 0.724),
    (1, 4.42, 0.727),
    (1, 4.43, 0.731),
    (1, 4.44, 0.735),
    (1, 4.45, 0.739),
    (1, 4.46, 0.743),
    (1, 4.47, 0.747),
    (1, 4.48, 0.75),
    (1, 4.49, 0.754),
    (1, 4.5, 0.758),
    (1, 4.51, 0.762),
    (1, 4.52, 0.766),
    (1, 4.53, 0.769),
    (1, 4.54, 0.773),
    (1, 4.55, 0.777),
    (1, 4.56, 0.781),
    (1, 4.57, 0.785),
    (1, 4.58, 0.788),
    (1, 4.59, 0.792),
    (1, 4.6, 0.796),
    (1, 6.8, 0.796);