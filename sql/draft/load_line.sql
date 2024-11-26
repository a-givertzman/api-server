-- Осадки
DROP TABLE IF EXISTS load_line CASCADE;

CREATE TABLE if not exists load_line (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  criterion_id INT NOT NULL,
  name_engl TEXT NOT NULL,
  name_rus TEXT,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  z FLOAT8 NOT NULL,
  CONSTRAINT load_line_pk PRIMARY KEY (id),
  CONSTRAINT load_line_name_engl_check CHECK(char_length(name_engl) > 0 AND char_length(name_engl) <= 100),  
  CONSTRAINT load_line_name_engl_unique UNIQUE (project_id, ship_id, name_engl),
  CONSTRAINT load_line_name_rus_check CHECK(char_length(name_rus) > 0 AND char_length(name_rus) <= 100),
  CONSTRAINT load_line_name_rus_unique UNIQUE (project_id, ship_id, name_rus),
  CONSTRAINT load_line_criterion_id_unique UNIQUE (project_id, ship_id, criterion_id)
);
