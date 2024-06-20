-- Данные по посадке судна
DROP VIEW IF EXISTS heel_trim_general;

CREATE VIEW heel_trim_general AS SELECT
    draft_fp.ship_id AS "ship_id",
    draft_fp.value AS "draft_fp_value",
    (lbp.value / 2) AS "draft_fp_shift",
    draft_avg.value AS "draft_avg_value",
    draft_avg_shift.value AS "draft_avg_shift",
    draft_ap.value AS "draft_ap_value",
    -(lbp.value / 2) AS "draft_ap_shift",
    heel.value AS "heel",
    trim.value AS "trim"
FROM (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 5
) AS draft_fp
FULL OUTER JOIN (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 4
) AS draft_avg ON draft_fp.ship_id = draft_avg.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 32
) AS draft_avg_shift ON draft_fp.ship_id = draft_avg_shift.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 3
) AS draft_ap ON draft_fp.ship_id = draft_ap.ship_id
FULL OUTER JOIN (
    SELECT ship_id, value::REAL AS "value" FROM ship_parameters WHERE key = 'LBP'
) AS lbp ON draft_fp.ship_id = lbp.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 7
) AS heel ON draft_fp.ship_id = heel.ship_id
FULL OUTER JOIN (
    SELECT ship_id, result AS "value" FROM parameter_data WHERE parameter_id = 6
) AS trim ON draft_fp.ship_id = trim.ship_id
WHERE draft_fp.ship_id = 1 LIMIT 1;