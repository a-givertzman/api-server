-- Subcategories of cargos;
DROP TABLE IF EXISTS criterion_category CASCADE;

CREATE TABLE IF NOT EXISTS criterion_category (
    id INT NOT NULL,
    -- Unique text field, that can be used to identify criterion_category entry;
    key TEXT NOT NULL UNIQUE,
    -- Title for criterion_category entry in Russian;
    title_rus TEXT NOT NULL,
    -- Title for criterion_category entry in English;
    title_eng TEXT NOT NULL,
    CONSTRAINT criterion_category_pk PRIMARY KEY (id),
    CONSTRAINT criterion_category_key_check CHECK (
        char_length(key) > 0
        AND char_length(key) < 50
    ),
    CONSTRAINT criterion_category_title_rus_check CHECK (
        char_length(title_rus) > 0
        AND char_length(title_rus) < 128
    ),
    CONSTRAINT criterion_category_title_eng_check CHECK (
        char_length(title_eng) > 0
        AND char_length(title_eng) < 128
    )
);

INSERT INTO criterion_category
    (id, key, title_rus, title_eng)
VALUES
    (1, 'stability', 'Stability criteria', 'Критерии остойчивости'),
    (2, 'draft', 'Draught criteria', 'Критерии посадки');