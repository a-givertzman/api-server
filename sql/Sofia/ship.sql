DELETE FROM ship WHERE id=2;

INSERT INTO ship
  (id, name, project, year_of_built, place_of_built, IMO, MMSI, ship_type_id, icing_type_id, icing_timber_type_id, navigation_area_id, freeboard_type, geometry_id)
VALUES
  (2, 'Sofia', NULL, '2002', 'Westerbroek, the Netherlands', '9245263', '273251830', (SELECT id FROM ship_type WHERE type_rmrs = (SELECT id FROM ship_type_rmrs WHERE title_eng = 'General dry cargo ship')), 1, 1, (SELECT id FROM navigation_area WHERE area ='Unrestricted'), 'B', 2);

DELETE FROM ship_parameters WHERE ship_id=2;

INSERT INTO ship_parameters
  (ship_id, key, value, unit_id)
VALUES
  (2, 'Shipbuilder hull number', 506, NULL),
  (2, 'LBP', 130.5, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'L.O.A', 138.86, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'MouldedBreadth', 15.87, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Moulded depth', 11.15, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'X midship from Fr0', 65.25, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'IMO number', 9245263, NULL),
  (2, 'Registration number', 10869, NULL),
  (2, 'MMSI', 273251830, NULL),
  (2, 'LightShip Weight', 3230.55, (SELECT id FROM unit WHERE symbol_eng = 't')),
  (2, 'LCG from middle', 59.837, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'VCG from BL', 7.81, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'TCG from CL', -0.44, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Minimum draft', 2.001, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Minimum operating draft', 4.308, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Length middle from stern', 68.82, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Overall height up to non-removable parts', 27.78, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Draught corresponding  to summer load line', 7.997, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Calculated minimum bow height', 4.653, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Calculated minimum bow area', 82, (SELECT id FROM unit WHERE symbol_eng = 'm^2')),
  (2, 'Maximum aft trim ', -0.6525, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'Maximum forward trim', 0.6525, (SELECT id FROM unit WHERE symbol_eng = 'm')),
  (2, 'DWT', 10890, (SELECT id FROM unit WHERE symbol_eng = 't')),
  (2, 'Year of build', 2002, NULL);