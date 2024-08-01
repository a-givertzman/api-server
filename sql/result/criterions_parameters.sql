DROP TABLE IF EXISTS criterions_parameters CASCADE;

-- Specifies relation between parameters and stability criteria (or lack of connection between them).
CREATE TABLE IF NOT EXISTS criterions_parameters (
    id INT GENERATED ALWAYS AS IDENTITY,
    -- ID of the criterion entry;
    criterion_id INT,
    -- ID of the parameter_head entry;
    parameter_id INT NOT NULL,
    -- Boolean flag to identify head_parameter entries
    -- that should be visible regardless of presence of corresponding entry in criterion
    -- (TODO: remove, by splitting parameters relations into new ones)
    always_visible BOOLEAN DEFAULT FALSE NOT NULL,
    CONSTRAINT criterions_parameters_pk PRIMARY KEY (id),
    CONSTRAINT criterions_parameters_criterion_fk FOREIGN KEY (criterion_id) REFERENCES criterion (id),
    CONSTRAINT criterions_parameters_parameter_fk FOREIGN KEY (parameter_id) REFERENCES parameter_head (id)
);

-- Inserting parameters that depend on criteria;
INSERT INTO
    criterions_parameters (criterion_id, parameter_id)
VALUES
    -- Критерий погоды
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
    -- Статический крен от ветра
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
    -- Площадь ДСО до 30°
    (3, 46),
    (3, 47),
    -- Площадь ДСО до 40°
    (4, 46),
    (4, 47),
    -- Площадь ДСО до θₗₘₐₓ
    (5, 46),
    (5, 47),
    -- Площадь ДСО от 30° до 40°
    (6, 46),
    (6, 47),
    -- Максимальное плечо ДСО
    (7, 46),
    (7, 47),
    -- Максимальное плечо ДСО при перевозке леса
    (8, 46),
    (8, 47),
    -- Максимальное плечо ДСО при обледенении
    (9, 46),
    (9, 47),
    -- Максимальный угол ДСО
    (10, 46),
    (10, 47),
    -- Первый максимум ДСО
    (11, 46),
    (11, 47),
    -- Крен на циркуляции
    (14, 50),
    -- Крен от смещения зерна
    (15, 46),
    (15, 48),
    (15, 49),
    -- Площадь ДСО при смещении зерна
    (16, 46),
    (16, 48),
    (16, 49);

-- Inserting parameters that do not depend on criteria
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