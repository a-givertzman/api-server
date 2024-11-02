DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H101' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 0.50, 265 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.00, 422 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 1.50, 516 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.00, 564 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 2.50, 590 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.00, 621 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 3.50, 664 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.00, 713 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 4.50, 763 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.00, 814 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 5.50, 873 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.00, 939 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 6.50, 1005 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.00, 1070 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 7.50, 1124 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.00, 1146 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 8.50, 1110 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.00, 1017 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 9.50, 858 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.00, 621 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.50, 286 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H101' AND ship_id=2), 10.80, 146;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P101' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P101' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H102' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 0.50, 284 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.00, 482 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 1.50, 624 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.00, 720 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 2.50, 776 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.00, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 3.50, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.00, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 4.50, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.00, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 5.50, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.00, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 6.50, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.00, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 7.50, 798 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.00, 793 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 8.50, 759 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.00, 687 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 9.50, 574 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.00, 413 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H102' AND ship_id=2), 10.80, 84;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P102' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P102' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H103' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 0.50, 118 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.00, 200 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 1.50, 259 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.00, 299 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 2.50, 322 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.00, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 3.50, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.00, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 4.50, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.00, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 5.50, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.00, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 6.50, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.00, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 7.50, 331 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.00, 329 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 8.50, 315 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.00, 285 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 9.50, 238 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.00, 171 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.50, 78 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H103' AND ship_id=2), 10.80, 35;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P103' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P103' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H104' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 0.50, 688 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.00, 1166 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 1.50, 1508 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.00, 1740 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 2.50, 1877 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.00, 1928 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 3.50, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.00, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 4.50, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.00, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 5.50, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.00, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 6.50, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.00, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 7.50, 1929 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.00, 1918 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 8.50, 1834 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.00, 1661 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 9.50, 1389 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.00, 998 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.50, 453 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H104' AND ship_id=2), 10.80, 203;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H201' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 0.50, 455 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.00, 772 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 1.50, 998 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.00, 1151 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 2.50, 1242 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.00, 1276 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 3.50, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.00, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 4.50, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.00, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 5.50, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.00, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 6.50, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.00, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 7.50, 1277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.00, 1269 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 8.50, 1213 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.00, 1099 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 9.50, 919 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.00, 660 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.50, 300 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H201' AND ship_id=2), 10.80, 134;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P201' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P201' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H202' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 0.50, 113 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.00, 191 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 1.50, 247 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.00, 285 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 2.50, 307 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.00, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 3.50, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.00, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 4.50, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.00, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 5.50, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.00, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 6.50, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.00, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 7.50, 316 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.00, 314 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 8.50, 300 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.00, 272 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 9.50, 227 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.00, 163 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.50, 74 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H202' AND ship_id=2), 10.80, 34;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P202' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P202' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H203' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 0.50, 420 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.00, 713 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 1.50, 922 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.00, 1063 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 2.50, 1147 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.00, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 3.50, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.00, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 4.50, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.00, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 5.50, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.00, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 6.50, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.00, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 7.50, 1179 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.00, 1172 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 8.50, 1121 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.00, 1015 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 9.50, 849 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.00, 610 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.50, 277 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H203' AND ship_id=2), 10.80, 124;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P203' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P203' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H204' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 0.50, 345 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.00, 584 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 1.50, 756 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.00, 872 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 2.50, 941 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.00, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 3.50, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.00, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 4.50, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.00, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 5.50, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.00, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 6.50, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.00, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 7.50, 967 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.00, 961 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 8.50, 919 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.00, 833 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 9.50, 696 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.00, 500 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.50, 227 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H204' AND ship_id=2), 10.80, 103;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P204' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P204' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H205' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 0.50, 188 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.00, 319 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 1.50, 413 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.00, 476 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 2.50, 513 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.00, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 3.50, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.00, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 4.50, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.00, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 5.50, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.00, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 6.50, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.00, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 7.50, 528 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.00, 525 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 8.50, 502 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.00, 455 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 9.50, 380 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.00, 273 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.50, 124 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H205' AND ship_id=2), 10.80, 56;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='P205' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 0.50, 24 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 1.00, 40 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 1.50, 52 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 2.00, 60 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 2.50, 64 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 3.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 3.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 4.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 4.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 5.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 5.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 6.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 6.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 7.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 7.50, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 8.00, 66 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 8.50, 63 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 9.00, 57 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 9.50, 48 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.00, 34 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.50, 16 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='P205' AND ship_id=2), 10.80, 6;


DELETE FROM grain_moment WHERE space_id IN (SELECT space_id FROM hold_part WHERE code='H206' AND ship_id=2);

INSERT INTO grain_moment
  (ship_id, space_id, level, moment)
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 0.50, 160 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.00, 283 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 1.50, 379 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.00, 449 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 2.50, 497 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.00, 533 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 3.50, 562 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.00, 590 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 4.50, 619 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.00, 646 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 5.50, 665 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.00, 666 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 6.50, 666 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.00, 666 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 7.50, 666 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.00, 662 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 8.50, 633 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.00, 574 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 9.50, 480 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.00, 480 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.50, 157 UNION ALL
SELECT  2, (SELECT space_id FROM hold_part_id WHERE code='H206' AND ship_id=2), 10.80, 70;


