
-- Рассчитанные кривые плечей остойчивости
-- Зависимость от угла крена в градусах
-- Положительная часть диаграммы направленна в сторону крена,
-- если крена нет, то вправо
DROP TABLE IF EXISTS stability_diagram CASCADE;

CREATE TABLE
    IF NOT EXISTS stability_diagram (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        angle FLOAT8 NOT NULL,
        value_dso FLOAT8 NOT NULL,
        value_ddo FLOAT8 NOT NULL,
        CONSTRAINT stability_diagram_pk PRIMARY KEY (id),
        CONSTRAINT stability_diagram_angle_unique UNIQUE NULLS NOT DISTINCT (project_id, ship_id, angle)
    );
