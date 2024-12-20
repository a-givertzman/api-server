UPDATE ship SET limit_area='sea' WHERE id=2;
UPDATE ship_parameters SET value=1.025 WHERE key='Water Density' AND ship_id=2;
UPDATE ship SET icing_type_id=(SELECT id FROM ship_icing WHERE icing_type='none') WHERE id=2;
UPDATE ship_parameters SET value=0 WHERE key='Wetting of deck timber' AND ship_id=2;


UPDATE compartment SET density=1.025, mass=227.2, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=205;
UPDATE compartment SET density=1.025, mass=71.4, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=206;
UPDATE compartment SET density=1.025, mass=240.2, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=207;
UPDATE compartment SET density=1.025, mass=129.8, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=208;
UPDATE compartment SET density=1.025, mass=128.4, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=214;
UPDATE compartment SET density=1.025, mass=109.3, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=216;
UPDATE compartment SET density=1.025, mass=129.9, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=217;
UPDATE compartment SET density=1.025, mass=129.9, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=218;
UPDATE compartment SET density=1.025, mass=97.5, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=223;
UPDATE compartment SET density=1.025, mass=97.5, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=224;
UPDATE compartment SET density=1.025, mass=265.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=225;
UPDATE compartment SET density=1.025, mass=265.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=226;
UPDATE compartment SET density=1.025, mass=206.4, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=227;
UPDATE compartment SET density=1.025, mass=217.2, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=228;
UPDATE compartment SET density=0.97, mass=6.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=303;
UPDATE compartment SET density=0.97, mass=15, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=304;
UPDATE compartment SET density=0.97, mass=7.8, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=305;
UPDATE compartment SET density=0.97, mass=10, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=306;
UPDATE compartment SET density=0.97, mass=2, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=301;
UPDATE compartment SET density=0.97, mass=17, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=302;
UPDATE compartment SET density=0.85, mass=0.5, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=400;
UPDATE compartment SET density=0.85, mass=4.4, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=401;
UPDATE compartment SET density=0.85, mass=3, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=402;
UPDATE compartment SET density=0.9, mass=1.8, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=501;
UPDATE compartment SET density=0.9, mass=0.4, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=504;
UPDATE compartment SET density=0.97, mass=6.7, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=308;
UPDATE compartment SET density=1, mass=0.3, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=700;
UPDATE compartment SET density=1, mass=8.4, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=704;
UPDATE compartment SET density=1, mass=6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=705;
UPDATE compartment SET density=1, mass=6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=706;
UPDATE compartment SET density=1, mass=3.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=601;
UPDATE compartment SET density=1, mass=3.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=602;


INSERT INTO cargo
  (ship_id, name, mass, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z, category_id)
VALUES
  (2, 'Crew', 40, -3.6, 135.26, 58.9, 0, 7.5, 9);

UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №1') WHERE ship_id=2 AND code='none';
UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №2') WHERE ship_id=2 AND code='none';


UPDATE hold_compartment SET density=0.543295147, mass=3421.7, category_id=12 WHERE ship_id=2 AND group_id=(SELECT id FROM hold_group WHERE ship_id=2 AND space_id=1001);
UPDATE hold_compartment SET density=0.543295147, mass=4052.6, category_id=12 WHERE ship_id=2 AND group_id=(SELECT id FROM hold_group WHERE ship_id=2 AND space_id=1002);


