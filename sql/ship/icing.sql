-- Возможные варианты обледенения судна: full, half, none
DROP TABLE IF EXISTS ship_icing CASCADE;

CREATE TABLE IF NOT EXISTS ship_icing (
    id INT NOT NULL,
    icing_type TEXT NOT NULL, 
    CONSTRAINT ship_icing_pk PRIMARY KEY (id),
    CONSTRAINT ship_icing_type_unique UNIQUE (icing_type),
    CONSTRAINT ship_icing_type_check CHECK (
        char_length(icing_type) > 0
        AND char_length(icing_type) < 100
    )
);

INSERT INTO ship_icing
    (id, icing_type)
VALUES
    (1, 'none'),
    (2, 'full'),
    (3, 'half');
