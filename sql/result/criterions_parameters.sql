DROP TABLE IF EXISTS criterions_parameters CASCADE;

-- Связь параметров с критериями остойчивости
CREATE TABLE
    IF NOT EXISTS criterions_parameters (
        id INT GENERATED ALWAYS AS IDENTITY,
        criterion_id INT,
        parameter_id INT NOT NULL,
        always_visible BOOLEAN DEFAULT FALSE NOT NULL,
        CONSTRAINT criterions_parameters_pk PRIMARY KEY (id),
        CONSTRAINT criterions_parameters_criterion_fk FOREIGN KEY (criterion_id) REFERENCES criterion_stability (id),
        CONSTRAINT criterions_parameters_parameter_fk FOREIGN KEY (parameter_id) REFERENCES parameter_head (id)
    );

INSERT INTO
    criterions_parameters (criterion_id, parameter_id)
VALUES
    (1, 33),
    (1, 34),
    (1, 35),
    (1, 36),
    (1, 37),
    (1, 38),
    (1, 39),
    (1, 40),
    (1, 46),
    (1, 41),
    (1, 42),
    (1, 43),
    (1, 44),
    (1, 45),
    (1, 45),
    (2, 33),
    (2, 34),
    (2, 35),
    (2, 36),
    (2, 37),
    (2, 38),
    (2, 39),
    (2, 40),
    (2, 46),
    (2, 41),
    (2, 42),
    (2, 43),
    (2, 44),
    (2, 45),
    (2, 45),
    (3, 46),
    (3, 47),
    (4, 46),
    (4, 47),
    (5, 46),
    (5, 47),
    (6, 46),
    (6, 47),
    (7, 46),
    (7, 47),
    (8, 46),
    (8, 47),
    (9, 46),
    (9, 47),
    (10, 46),
    (10, 47),
    (14, 50),
    (15, 46),
    (15, 48),
    (15, 49),
    (16, 46),
    (16, 48),
    (16, 49);

INSERT INTO
    criterions_parameters (parameter_id, always_visible)
VALUES
    (1, TRUE),
    (2, TRUE),
    (3, TRUE),
    (4, TRUE),
    (5, TRUE),
    (6, TRUE),
    (7, TRUE),
    (8, TRUE),
    (9, TRUE),
    (10, TRUE),
    (11, TRUE),
    (12, TRUE),
    (13, TRUE),
    (14, TRUE),
    (15, TRUE),
    (16, TRUE),
    (17, TRUE),
    (18, TRUE),
    (19, TRUE),
    (20, TRUE),
    (21, TRUE),
    (22, TRUE),
    (23, TRUE),
    (24, TRUE),
    (25, TRUE),
    (26, TRUE),
    (27, TRUE),
    (28, TRUE),
    (29, TRUE),
    (30, TRUE),
    (31, TRUE),
    (32, TRUE);

-- SELECT
--     ph.title_rus AS "parameter",
--     cs.title_rus AS "criterion"
-- FROM
--     parameter_head AS ph
--     LEFT JOIN criterions_parameters AS cp ON ph.id = cp.parameter_id
--     LEFT JOIN criterion_stability AS cs ON cp.criterion_id = cs.id
-- WHERE
--     cp.criterion_id IS NOT NULL
--     OR cp.always_visible = TRUE;