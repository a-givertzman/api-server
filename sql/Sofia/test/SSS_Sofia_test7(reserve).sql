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


INSERT INTO cargo
  (ship_id, name, mass, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z, category_id)
VALUES
  (2, 'Crew', 40, -3.6, 135.26, 58.9, 0, 7.5, 9);

UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №1') WHERE ship_id=2 AND code='SP101';
UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №2') WHERE ship_id=2 AND code='SP102';




