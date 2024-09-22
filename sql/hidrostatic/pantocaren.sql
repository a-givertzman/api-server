--ПЛEЧИ OCTOЙЧИBOCTИ ФOPMЫ (ПAHTOKAPEHЫ)    
DROP TABLE IF EXISTS pantocaren CASCADE;

CREATE TABLE if not exists pantocaren (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  draught FLOAT8 NOT NULL, 
  roll FLOAT8 NOT NULL,
  moment FLOAT8 NOT NULL,
  CONSTRAINT pantocaren_pk PRIMARY KEY (id),
  CONSTRAINT pantocaren_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, draught, roll)
);
