--ПЛEЧИ OCTOЙЧИBOCTИ ФOPMЫ (ПAHTOKAPEHЫ) в
-- зависимости от дифферента, осадки и крена   
DROP TABLE IF EXISTS pantocaren CASCADE;

CREATE TABLE if not exists pantocaren (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  trim FLOAT8 NOT NULL DEFAULT 0, 
  draught FLOAT8 NOT NULL,  
  roll FLOAT8 NOT NULL,
  moment FLOAT8 NOT NULL,
  CONSTRAINT pantocaren_pk PRIMARY KEY (id),
  CONSTRAINT pantocaren_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, trim, draught, roll),
  CONSTRAINT pantocaren_draught_check CHECK(draught >= 0)
);
