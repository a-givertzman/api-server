CREATE TYPE IF NOT EXISTS zone_type AS ENUM ('Parametric', 'Main', 'Broaching', 'HighWaves');

-- Stores points for seakeeping zones
CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY, -- Unique identifier of this point 
    angle FLOAT NOT NULL, -- Angle of this point, measured in degrees
    speed FLOAT NOT NULL, -- Speed of this point, measured in knots
    zone_id zone_type NOT NULL, -- Determines which zone this point belongs to
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);
