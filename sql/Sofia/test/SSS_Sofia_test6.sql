UPDATE ship SET limit_area='sea' WHERE id=2;
UPDATE ship_parameters SET value=1.025 WHERE key='Water Density' AND ship_id=2;
UPDATE ship SET icing_type_id=(SELECT id FROM ship_icing WHERE icing_type='none') WHERE id=2;
UPDATE ship_parameters SET value=0 WHERE key='Wetting of deck timber' AND ship_id=2;


UPDATE compartment SET density=1.025, mass=168.913, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=201;
UPDATE compartment SET density=1.025, mass=135.665, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=202;
UPDATE compartment SET density=1.025, mass=227.234, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=205;
UPDATE compartment SET density=1.025, mass=71.417, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=206;
UPDATE compartment SET density=1.025, mass=240.219, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=207;
UPDATE compartment SET density=1.025, mass=129.848, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=208;
UPDATE compartment SET density=1.025, mass=84.581, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=211;
UPDATE compartment SET density=1.025, mass=84.579, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=212;
UPDATE compartment SET density=1.025, mass=128.392, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=213;
UPDATE compartment SET density=1.025, mass=128.392, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=214;
UPDATE compartment SET density=1.025, mass=109.261, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=215;
UPDATE compartment SET density=1.025, mass=109.261, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=216;
UPDATE compartment SET density=1.025, mass=129.945, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=217;
UPDATE compartment SET density=1.025, mass=129.945, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=218;
UPDATE compartment SET density=1.025, mass=164.657, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=221;
UPDATE compartment SET density=1.025, mass=164.657, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=222;
UPDATE compartment SET density=1.025, mass=280, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=223;
UPDATE compartment SET density=1.025, mass=390.197, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=224;
UPDATE compartment SET density=1.025, mass=265.702, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=225;
UPDATE compartment SET density=1.025, mass=265.702, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=226;
UPDATE compartment SET density=1.025, mass=217.238, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=227;
UPDATE compartment SET density=1.025, mass=217.238, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=228;
UPDATE compartment SET density=0.97, mass=6.6, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=303;
UPDATE compartment SET density=0.97, mass=15, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=304;
UPDATE compartment SET density=0.97, mass=7.8, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=305;
UPDATE compartment SET density=0.97, mass=10, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=306;
UPDATE compartment SET density=1.025, mass=11.227, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=229;
UPDATE compartment SET density=1.025, mass=11.227, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=230;
UPDATE compartment SET density=1.025, mass=56.105, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=231;
UPDATE compartment SET density=1.025, mass=56.105, use_max_m_f_s=FALSE WHERE ship_id=2 AND space_id=232;
UPDATE compartment SET density=0.97, mass=2, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=301;
UPDATE compartment SET density=0.97, mass=17, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=302;
UPDATE compartment SET density=0.97, mass=0, use_max_m_f_s=TRUE WHERE ship_id=2 AND space_id=307;
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


UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №1') WHERE ship_id=2 AND code='P101';
UPDATE bulkhead_place SET bulkhead_id=(SELECT id FROM bulkhead WHERE name_engl='Grain Bulkhead №2') WHERE ship_id=2 AND code='P102';


DELETE FROM cargo WHERE ship_id=2;



INSERT INTO cargo
  (ship_id, name, mass, bound_x1, bound_x2, mass_shift_x, mass_shift_y, mass_shift_z, category_id)
VALUES
  (2, 'Crew', 40, -3.6, 135.26, 58.9, 0, 7.5, 9);



UPDATE container_slot SET container_id = NULL WHERE ship_id=2 AND project_id IS NOT DISTINCT FROM NULL;

DELETE FROM container WHERE ship_id=2;

INSERT INTO container
  (project_id, ship_id, iso_code, max_gross_mass, gross_mass, tare_mass)
VALUES
  (NULL, 2, '1CC', 36.0, 12.0, 0.0);

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 3 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 4 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 0 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 1 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 2 AND tier_number = 2;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 0 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 1 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 2 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 3 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 4 AND tier_number = 4;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 0 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 1 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 2 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 3 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 4 AND tier_number = 6;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 5 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 7 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 9 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 0 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 1 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 1 AND row_number = 2 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 3 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 3 AND row_number = 4 AND tier_number = 8;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 11 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 13 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 15 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 17 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 19 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 21 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 23 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 25 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 27 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 29 AND row_number = 3 AND tier_number = 82;

UPDATE
  container_slot
SET
  container_id = (SELECT id FROM container WHERE ship_id = 2 AND gross_mass = 12)
WHERE
  ship_id = 2 AND project_id IS NOT DISTINCT FROM NULL AND bay_number = 31 AND row_number = 3 AND tier_number = 82;;



