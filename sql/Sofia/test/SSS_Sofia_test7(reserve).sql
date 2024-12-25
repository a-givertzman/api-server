UPDATE ship SET limit_area='sea' WHERE id=2;
UPDATE ship_parameters SET value=1.025 WHERE key='Water Density' AND ship_id=2;
UPDATE ship SET icing_type_id=(SELECT id FROM ship_icing WHERE icing_type='none') WHERE id=2;
UPDATE ship_parameters SET value=0 WHERE key='Wetting of deck timber' AND ship_id=2;


UPDATE compartment SET density=1.025, mass=115.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=214;
UPDATE compartment SET density=1.025, mass=38.2, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=216;
UPDATE compartment SET density=1.025, mass=129.9, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=218;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=227;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=228;
UPDATE compartment SET density=0.97, mass=107.9, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=303;
UPDATE compartment SET density=0.97, mass=107.9, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=304;
UPDATE compartment SET density=0.97, mass=77.8, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=305;
UPDATE compartment SET density=0.97, mass=99.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=306;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=229;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=230;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=231;
UPDATE compartment SET density=1.025, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=232;
UPDATE compartment SET density=0.97, mass=19.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=301;
UPDATE compartment SET density=0.97, mass=17, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=302;
UPDATE compartment SET density=0.97, mass=11.3, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=307;
UPDATE compartment SET density=0.85, mass=5.2, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=400;
UPDATE compartment SET density=0.85, mass=0.5, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=401;
UPDATE compartment SET density=0.85, mass=29.9, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=402;
UPDATE compartment SET density=0.9, mass=17.1, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=501;
UPDATE compartment SET density=0.9, mass=3.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=504;
UPDATE compartment SET density=0.97, mass=0.8, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=308;
UPDATE compartment SET density=1, mass=2.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=700;
UPDATE compartment SET density=1, mass=0.9, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=704;
UPDATE compartment SET density=1, mass=0.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=705;
UPDATE compartment SET density=1, mass=0.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=706;
UPDATE compartment SET density=1, mass=36.3, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=601;
UPDATE compartment SET density=1, mass=36.3, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=602;


UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №1') WHERE ship_id=2 AND code='SP101';
UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №2') WHERE ship_id=2 AND code='SP102';


DELETE FROM cargo WHERE ship_id=2;

INSERT INTO cargo
  (ship_id, name, mass, timber, is_on_deck, bound_x1, bound_x2, bound_y1, bound_y2, bound_z1, bound_z2,mass_shift_x, mass_shift_y, mass_shift_z, category_id)
VALUES
  (2, '1', 397, FALSE, TRUE, 67.9275, 69.91250000000001, -5, 5, 1.1, 5.8, 68.92, 0, 4, 10),
  (2, '2', 397, FALSE, TRUE, 41.2875, 43.2725, -5, 5, 1.1, 5.8, 42.28, 0, 4, 10),
  (2, '3', 397, FALSE, TRUE, 38.3275, 40.3125, -5, 5, 1.1, 5.8, 39.32, 0, 4, 10),
  (2, '4', 397, FALSE, TRUE, 35.3675, 37.3525, -5, 5, 1.1, 5.8, 36.36, 0, 4, 10),
  (2, '5', 397, FALSE, TRUE, 32.4075, 34.3925, -5, 5, 1.1, 5.8, 33.4, 0, 4, 10),
  (2, '6', 397, FALSE, TRUE, 29.4475, 31.4325, -5, 5, 1.1, 5.8, 30.44, 0, 2.15, 10),
  (2, '7', 397, FALSE, TRUE, 78.2875, 80.27250000000001, -5, 5, 1.1, 5.8, 79.28, 0, 4, 10),
  (2, '8', 397, FALSE, TRUE, 81.24749999999999, 83.2325, -5, 5, 1.1, 5.8, 82.24, 0, 4, 10),
  (2, '9', 397, FALSE, TRUE, 84.2075, 86.19250000000001, -5, 5, 1.1, 5.8, 85.2, 0, 4, 10),
  (2, '10', 397, FALSE, TRUE, 87.16749999999999, 89.1525, -5, 5, 1.1, 5.8, 88.16, 0, 4, 10),
  (2, '11', 397, FALSE, TRUE, 90.86749999999999, 92.8525, -5, 5, 1.1, 5.8, 91.86, 0, 4, 10),
  (2, '12', 397, FALSE, TRUE, 64.96749999999999, 66.9525, -5, 5, 1.1, 5.8, 65.96, 0, 4, 10),
  (2, '13', 397, FALSE, TRUE, 93.82749999999999, 95.8125, -5, 5, 1.1, 5.8, 94.82, 0, 4, 10),
  (2, '14', 397, FALSE, TRUE, 96.7875, 98.77250000000001, -5, 5, 1.1, 5.8, 97.78, 0, 4, 10),
  (2, '15', 397, FALSE, TRUE, 99.74749999999999, 101.7325, -5, 5, 1.1, 5.8, 100.74, 0, 4, 10),
  (2, '16', 397, FALSE, TRUE, 102.7075, 104.69250000000001, -5, 5, 1.1, 5.8, 103.7, 0, 4, 10),
  (2, '17', 397, FALSE, TRUE, 105.66749999999999, 107.6525, -5, 5, 1.1, 5.8, 106.66, 0, 4, 10),
  (2, '18', 397, FALSE, TRUE, 108.6275, 110.61250000000001, -5, 5, 1.1, 5.8, 109.62, 0, 4, 10),
  (2, '19', 397, FALSE, TRUE, 62.0075, 63.9925, -5, 5, 1.1, 5.8, 63, 0, 4, 10),
  (2, '20', 397, FALSE, TRUE, 59.4075, 61.3925, -5, 5, 1.1, 5.8, 60.4, 0, 4, 10),
  (2, '21', 397, FALSE, TRUE, 56.0875, 58.0725, -5, 5, 1.1, 5.8, 57.08, 0, 4, 10),
  (2, '22', 397, FALSE, TRUE, 53.1275, 55.1125, -5, 5, 1.1, 5.8, 54.12, 0, 4, 10),
  (2, '23', 397, FALSE, TRUE, 50.1675, 52.152499999999996, -5, 5, 1.1, 5.8, 51.16, 0, 4, 10),
  (2, '24', 397, FALSE, TRUE, 47.2075, 49.1925, -5, 5, 1.1, 5.8, 48.2, 0, 4, 10),
  (2, '25', 397, FALSE, TRUE, 44.2475, 46.2325, -5, 5, 1.1, 5.8, 45.24, 0, 4, 10);



INSERT INTO cargo
  (ship_id, name, mass, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z, category_id)
VALUES
  (2, 'Crew', 40, -3.6, 135.26, 58.9, 0, 7.5, 9);



