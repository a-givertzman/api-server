-- Зависимость верхнего предела (m) метацентрической высоты от водоизмещения (t)
DROP TABLE IF EXISTS metacentric_height_high_limit;

CREATE TABLE
    metacentric_height_high_limit (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        low_limit FLOAT8 NOT NULL,
        high_limit FLOAT8 NOT NULL,
        displacement FLOAT8 NOT NULL,
        CONSTRAINT metacentric_height_high_limit_pk PRIMARY KEY (id)
    );
