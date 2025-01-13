-- Возможные варианты обледенения палубного груза - леса: full, half left, half right, bow
DROP TABLE IF EXISTS ship_icing_timber CASCADE;

CREATE TABLE IF NOT EXISTS ship_icing_timber (
    id INT NOT NULL,
    icing_type TEXT NOT NULL, 
    CONSTRAINT ship_icing_timber_pk PRIMARY KEY (id),
    CONSTRAINT ship_icing_timber_type_unique UNIQUE (icing_type),
    CONSTRAINT ship_icing_timber_type_check CHECK (
        char_length(icing_type) > 0
        AND char_length(icing_type) < 100
    )
);

INSERT INTO ship_icing_timber
    (id, icing_type)
VALUES
    (1, 'full'),
    (2, 'half left'),
    (3, 'half right'),
    (4, 'bow');
