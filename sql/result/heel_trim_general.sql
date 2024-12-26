-- Данные по посадке судна
DROP VIEW IF EXISTS heel_trim_general;

CREATE VIEW heel_trim_general AS SELECT
    draft_fp.ship_id AS "ship_id",
    draft_fp.value AS "draft_fp_value",
    (0.0 - x_origin_shift.value) AS "draft_ap_shift",
    draft_avg.value AS "draft_avg_value",
    draft_avg_shift.value AS "draft_avg_shift",
    draft_mid.value AS "draft_mid_value",
    (0.0 + lbp.value / 2.0) AS "draft_mid_shift",
    draft_ap.value AS "draft_ap_value",
    (lbp.value - x_origin_shift.value) AS "draft_fp_shift",
    heel.value AS "heel",
    trim.value AS "trim"
FROM (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 4
) AS draft_fp
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 3
) AS draft_avg ON
    draft_fp.ship_id = draft_avg.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM draft_avg.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 32
) AS draft_avg_shift ON
    draft_fp.ship_id = draft_avg_shift.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM draft_avg_shift.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 94
) AS draft_mid ON
    draft_fp.ship_id = draft_mid.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM draft_mid.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 5
) AS draft_ap ON
    draft_fp.ship_id = draft_ap.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM draft_ap.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, value::REAL AS "value" FROM ship_parameters WHERE key = 'LBP'
) AS lbp ON
    draft_fp.ship_id = lbp.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM lbp.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, value::REAL AS "value" FROM ship_parameters WHERE key = 'X midship from Fr0'
) AS x_origin_shift ON
    draft_fp.ship_id = x_origin_shift.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM x_origin_shift.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 7
) AS heel ON
    draft_fp.ship_id = heel.ship_id AND
    draft_fp.project_id IS NOT DISTINCT FROM heel.project_id
FULL OUTER JOIN (
    SELECT ship_id, project_id, result AS "value" FROM parameter_data WHERE parameter_id = 6
) AS trim ON
    draft_fp.ship_id = trim.ship_id
    AND draft_fp.project_id IS NOT DISTINCT FROM trim.project_id;