-- General categories of cargos;
DROP TABLE IF EXISTS cargo_general_category CASCADE;

CREATE TABLE IF NOT EXISTS cargo_general_category (
    id INT NOT NULL,
    -- Unique text field, that can be used to identify cargo_general_category entry;
    key TEXT NOT NULL UNIQUE,
    -- Title for cargo_general_category entry in Russian;
    title_rus TEXT NOT NULL,
    -- Title for cargo_general_category entry in English;
    title_eng TEXT NOT NULL,
    CONSTRAINT cargo_general_category_pk PRIMARY KEY (id),
    CONSTRAINT cargo_general_category_key_check CHECK (
        char_length(key) > 0
        AND char_length(key) < 50
    ),
    CONSTRAINT cargo_general_category_title_rus_check CHECK (char_length(title_rus) > 0),
    CONSTRAINT cargo_general_category_title_eng_check CHECK (char_length(title_eng) > 0)
);

INSERT INTO cargo_general_category
    (id, key, title_rus, title_eng)
VALUES
    (1, 'lightship',    'Порожнем', 'LightShip'),
    (2, 'ballast',      'Балласт',  'Ballast'),
    (3, 'stores',       'Запасы',   'Stores'),
    (4, 'cargo',        'Груз',     'Cargo'),
    (5, 'bulkhead', 'Зерновая переборка', 'Bulkhead');

-- Enum with state of matters for cargos; 
DROP TYPE IF EXISTS cargo_matter_type CASCADE;

CREATE TYPE cargo_matter_type AS ENUM (
    'bulk',
    'liquid',
    'solid'
);

-- Subcategories of cargos;
DROP TABLE IF EXISTS cargo_category CASCADE;

CREATE TABLE IF NOT EXISTS cargo_category (
    id INT NOT NULL,
    -- Unique text field, that can be used to identify cargo_category entry;
    key TEXT NOT NULL UNIQUE,
    -- ID of the cargo_general_category for which this cargo_category is a subcategory;
    -- Specifies m:1 relationship;
    general_category_id INT NOT NULL,
    -- Typical state of matter for a given cargo_category;
    matter_type cargo_matter_type NOT NULL,
    -- Title for cargo_category entry in Russian;
    title_rus TEXT NOT NULL,
    -- Title for cargo_category entry in English;
    title_eng TEXT NOT NULL,
    CONSTRAINT cargo_category_pk PRIMARY KEY (id),
    CONSTRAINT cargo_category_type_general_fk FOREIGN KEY (general_category_id) REFERENCES cargo_general_category (id),
    CONSTRAINT cargo_category_key_check CHECK (
        char_length(key) > 0
        AND char_length(key) < 50
    ),
    CONSTRAINT cargo_category_title_rus_check CHECK (char_length(title_rus) > 0),
    CONSTRAINT cargo_category_title_eng_check CHECK (char_length(title_eng) > 0)
);

INSERT INTO cargo_category
    (id, key, general_category_id, matter_type, title_rus, title_eng)
VALUES
    -- Балласт 
    (2, 'ballast_tank',                 2, 'liquid',    'Балластная цистерна',              'Ballast tank'),
    -- Запасы 
    (3, 'storage_tank',                 3, 'liquid',    'Цистерны запаса',                  'Storage tank'),
    (4, 'fuel_tank',                    3, 'liquid',    'Цистерны топлива',                 'Fuel tank'),
    (5, 'lubricating_oil_tank',         3, 'liquid',    'Цистерны масла',                   'Lubricating oil tank'),
    (6, 'urea_tank',                    3, 'liquid',    'Цистерны мочевины',                'Urea tank'),
    (7, 'fresh_drinking_water_tank',    3, 'liquid',    'Цистерны питьевой и пресной воды', 'Fresh & drinking water tank'),
    (8, 'sundry_tank',                  3, 'liquid',    'Цистерны грязных жидкостей',       'Sundry tank'),
    (9, 'other_stores',                 3, 'solid',     'Прочие запасы',                    'Other stores'),
    -- Груз 
    (10, 'cargo',                       4, 'solid',     'Груз',                             'Cargo'),
    (11, 'bulk_cargo',                  4, 'solid',     'Груз навалочный',                  'Bulk cargo'),
    (12, 'bulk_cargo_shiftable',        4, 'bulk',      'Груз навалочный, смещаемый',       'Bulk cargo, shiftable'),
    -- 'Unit_cargo' with 'cargo_type' – 'container', in accordance with ISO 10303-215:2004 [4.2.168.2.4]
    (13, 'container_cargo',             4, 'solid',     'Груз контейнерный',                'Container cargo'),
    -- Порожнем 
    (20, 'hull',                        1, 'solid',     'Корпус',                           'Hull'),
    (21, 'equipment',                   1, 'solid',     'Оборудование',                     'Equipment'),
    (22, 'bulkhead',                    5, 'solid',     'Зерновая переборка',               'Bulkhead');