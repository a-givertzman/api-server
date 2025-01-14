-- Relation to store linked criterions for load line types.
DROP TABLE IF EXISTS load_line_type_criterions;

CREATE TABLE IF NOT EXISTS load_line_type_criterions (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    load_line_type_id INT NOT NULL,
    criterion_id INT NOT NULL,
    CONSTRAINT load_line_type_criterions_pk PRIMARY KEY (id),
    CONSTRAINT load_line_type_criterions_load_line_type_fk FOREIGN KEY (load_line_type_id) REFERENCES load_line_type(id),
    CONSTRAINT load_line_type_criterions_criterion_fk FOREIGN KEY (criterion_id) REFERENCES criterion(id),
    CONSTRAINT load_line_type_criterions_unique UNIQUE (load_line_type_id, criterion_id)
);

INSERT INTO load_line_type_criterions
    (load_line_type_id, criterion_id)
VALUES
    -- Summer
    (1, 101),
    (1, 102),
    -- Winter
    (2, 103),
    (2, 104),
    -- Winter North Atlantic
    (3, 105),
    (3, 106),
    -- Tropical
    (4, 107),
    (4, 108),
    -- Fresh water in summer
    (5, 109),
    (5, 110),
    -- Tropical fresh water
    (6, 111),
    (6, 112),
    -- Summer timber
    (7, 113),
    (7, 114),
    -- Winter timber
    (8, 115),
    (8, 116),
    -- Winter North Atlantic timber
    (9, 117),
    (9, 118),
    -- Tropical timber
    (10, 119),
    (10, 120),
    -- Fresh water in summer timber
    (11, 121),
    (11, 122),
    -- Tropical fresh water timber
    (12, 123),
    (12, 124),
    -- Subdivision LL
    (13, 125);
