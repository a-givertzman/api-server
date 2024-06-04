-- Зависимость лимитов (m) метацентрической высоты от водоизмещения (t)
DROP TABLE IF EXISTS metacentric_height_limit;

CREATE TABLE
    metacentric_height_limit (
        id INT GENERATED ALWAYS AS IDENTITY,
        project_id INT,
        ship_id INT NOT NULL,
        low_limit FLOAT8 NOT NULL,
        high_limit FLOAT8 NOT NULL,
        displacement FLOAT8 NOT NULL,
        CONSTRAINT metacentric_height_limit_pk PRIMARY KEY (id)
    );

INSERT INTO
    metacentric_height_limit (ship_id, low_limit, high_limit, displacement)
VALUES
    (1, 3.834, 7.64, 2000),
    (1, 2.924, 5.48, 3000),
    (1, 2.691, 4.32, 4000),
    (1, 2.940, 3.38, 5000),
    (1, 2.771, 3.19, 6000),
    (1, 2.596, 3.15, 7000);