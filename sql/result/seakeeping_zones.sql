CREATE TYPE IF NOT EXISTS zone_type AS ENUM ('Parametric', 'Main', 'Broaching', 'HighWaves');

CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY,
    angle FLOAT NOT NULL,
    speed FLOAT NOT NULL,
    zone_id zone_type NOT NULL,
    
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);
