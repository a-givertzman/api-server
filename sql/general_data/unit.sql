-- Dictionary of units
DROP TABLE IF EXISTS unit CASCADE;

CREATE TABLE IF NOT EXISTS unit (
    id INT,
    -- Symbol of the unit in English;
    symbol_eng TEXT NOT NULL,
    -- Symbol of the unit in Russian;
    symbol_rus TEXT NOT NULL,
    CONSTRAINT unit_pk PRIMARY KEY (id),
    CONSTRAINT unit_symbol_eng_length_check CHECK (char_length(symbol_eng) > 0 AND char_length(symbol_eng) < 100),
    CONSTRAINT unit_symbol_rus_length_check CHECK (char_length(symbol_rus) > 0 AND char_length(symbol_rus) < 100)
);

INSERT INTO unit
    (id, symbol_eng, symbol_rus)
VALUES
    (1, 'deg', 'град'),
    (2, 'm', 'м'),
    (3, 'm^2', 'м^2'),
    (4, 'm^3', 'м^3'),
    (5, 'm•rad', 'м∙рад'),
    (6, 't', 'т'),
    (7, 't•m', 'т∙м'),
    (8, 't•m/cm', 'т∙м/см'),
    (9, 's', 'с'),
    (10, 'Pa', 'Па'),
    (11, 'kN∙m', 'кН∙м'),
    (12, 'knot', 'уз'),
    (13, '%', '%');