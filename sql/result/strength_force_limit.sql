DROP TABLE IF EXISTS strength_force_limit;

DROP TYPE IF EXISTS strength_limit;
DROP TYPE IF EXISTS strength_limit_area;
DROP TYPE IF EXISTS strength_force;

CREATE TYPE strength_force AS ENUM ('shear_force', 'bending_moment');
CREATE TYPE strength_limit_area AS ENUM ('sea', 'harbor');
CREATE TYPE strength_limit AS ENUM ('low', 'high');

CREATE TABLE
  strength_force_limit (
    id INT GENERATED ALWAYS AS IDENTITY,
    project_id INT,
    ship_id INT NOT NULL,
    frame_x REAL NOT NULL,
    value FLOAT8 NOT NULL,
    limit_type strength_limit NOT NULL,
    limit_area strength_limit_area NOT NULL,
    force_type strength_force NOT NULL,
    CONSTRAINT strength_limit_pk PRIMARY KEY (id),
    CONSTRAINT strength_limit_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, frame_x, limit_type, limit_area, force_type),
    CONSTRAINT strength_limit_value_check CHECK ((value >= 0 AND limit_type = 'high') OR (value <= 0 AND limit_type = 'low'))
  );