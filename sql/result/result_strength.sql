
-- Результаты расчета прочности
DROP TABLE IF EXISTS result_strength CASCADE;

CREATE TABLE
    IF NOT EXISTS result_strength (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        index INT NOT NULL,
        value_mass_sum, FLOAT8 NOT NULL,
        value_mass_sum, FLOAT8 NOT NULL,
        value_displacement FLOAT8 NOT NULL,
        value_total_force FLOAT8 NOT NULL,
        value_shear_force FLOAT8 NOT NULL,
        value_bending_moment FLOAT8 NOT NULL,
        CONSTRAINT result_strength_pk PRIMARY KEY (id),
        CONSTRAINT result_strength_index_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, index)
    );
