-- Координаты отметок заглубления на корпусе судна 
-- относительно центра, м
-- Z | X | Y
DROP TABLE IF EXISTS draft_mark CASCADE;

CREATE TABLE if not exists draft_mark (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  z FLOAT8 NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  CONSTRAINT draft_mark_pk PRIMARY KEY (id),
  CONSTRAINT draft_mark_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT draft_mark_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name, z)
);

-- Резальтаты расчета марок заглубления, м
DROP TABLE IF EXISTS draft_mark_result CASCADE;

CREATE TABLE if not exists draft_mark_result (
  id INT GENERATED ALWAYS AS IDENTITY,
  project_id INT,
  ship_id INT NOT NULL,
  name TEXT NOT NULL,
  x FLOAT8 NOT NULL,
  y FLOAT8 NOT NULL,
  draft_value FLOAT8 NOT NULL,
  CONSTRAINT draft_mark_result_pk PRIMARY KEY (id),
  CONSTRAINT draft_mark_result_name_check CHECK(char_length(name) > 0 AND char_length(name) <= 50),
  CONSTRAINT draft_mark_result_name_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, name)
);

INSERT INTO draft_mark
  (ship_id, name, z, x, y)
VALUES
  (1, stern, 

-- Координаты отметок заглубления на корпусе судна 
-- относительно центра, м
-- Z | X | Y
	stern	
Z	X	Y
0.6	-0	-0
0.8	-0	-0
1	115,153	0,614
1,2	115,546	0,541
1,4	115,86	0,495
1,6	116,119	0,467
1,8	116,339	0,449
2	116,528	0,44
2,2	116,694	0,436
2,4	116,841	0,436
2,6	116,972	0,44
2,8	117,091	0,447
3	117,2	0,456
3,2	117,299	0,468
3,4	117,392	0,482
3,6	117,478	0,498
3,8	117,559	0,516
4	117,636	0,537
4,2	117,708	0,56
4,4	117,777	0,587
4,6	117,844	0,616
4,8	117,908	0,65
5	117,969	0,688

	139 fr	
Z	X	Y
0,6	89,05	6,7
0,8	89,05	6,7
1	89,05	6,7
1,2	89,05	6,7
1,4	89,05	6,7
1,6	89,05	6,7
1,8	89,05	6,7
2	89,05	6,7
2,2	89,05	6,7
2,4	89,05	6,7
2,6	89,05	6,7
2,8	89,05	6,7
3	89,05	6,7
3,2	89,05	6,7
3,4	89,05	6,7
3,6	89,05	6,7
3,8	89,05	6,7
4	89,05	6,7
4,2	89,05	6,7
4,4	89,05	6,7
4,6	89,05	6,7
4,8	89,05	6,7
5	89,05	6,7

	95 fr	
Z	X	Y
0,6	60,45	6,7
0,8	60,45	6,7
1	60,45	6,7
1,2	60,45	6,7
1,4	60,45	6,7
1,6	60,45	6,7
1,8	60,45	6,7
2	60,45	6,7
2,2	60,45	6,7
2,4	60,45	6,7
2,6	60,45	6,7
2,8	60,45	6,7
3	60,45	6,7
3,2	60,45	6,7
3,4	60,45	6,7
3,6	60,45	6,7
3,8	60,45	6,7
4	60,45	6,7
4,2	60,45	6,7
4,4	60,45	6,7
4,6	60,45	6,7
4,8	60,45	6,7
5	60,45	6,7


	48 fr	
Z	X	Y
0,6	29,9	6,7
0,8	29,9	6,7
1	29,9	6,7
1,2	29,9	6,7
1,4	29,9	6,7
1,6	29,9	6,7
1,8	29,9	6,7
2	29,9	6,7
2,2	29,9	6,7
2,4	29,9	6,7
2,6	29,9	6,7
2,8	29,9	6,7
3	29,9	6,7
3,2	29,9	6,7
3,4	29,9	6,7
3,6	29,9	6,7
3,8	29,9	6,7
4	29,9	6,7
4,2	29,9	6,7
4,4	29,9	6,7
4,6	29,9	6,7
4,8	29,9	6,7
5	29,9	6,7

	10 fr	
Z	X	Y
0,6	-0	-0
0,8	-0	-0
1	-0	-0
1,2	-0	-0
1,4	6	6,523
1,6	6	6,633
1,8	6	6,688
2	6	6,7
2,2	6	6,7
2,4	6	6,7
2,6	6	6,7
2,8	6	6,7
3	6	6,7
3,2	6	6,7
3,4	6	6,7
3,6	6	6,7
3,8	6	6,7
4	6	6,7
4,2	6	6,7
4,4	6	6,7
4,6	6	6,7
4,8	6	6,7
5	6	6,7


