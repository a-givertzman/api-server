DROP TYPE IF EXISTS zone_type CASCADE;
CREATE TYPE zone_type AS ENUM ('Parametric', 'Main', 'Broaching', 'HighWaves');

-- Stores points for seakeeping zones
CREATE TABLE IF NOT EXISTS seakeeping_zones (
    id SERIAL PRIMARY KEY, -- Unique identifier of this point 
    ship_id INT NOT NULL, -- ID of ship for which this point is calculated
    project_id INT, -- ID of project for which this point is calculated
    index INT NOT NULL, -- Index of this point in zone to which it belongs
	angle FLOAT NOT NULL, -- Angle of this point, measured in degrees
    speed FLOAT NOT NULL, -- Speed of this point, measured in knots
    zone_id zone_type NOT NULL, -- Determines which zone this point belongs to
    CONSTRAINT unique_angle_speed_zone UNIQUE (angle, speed, zone_id)
);

-- Fake data for Sofia vessel
INSERT INTO
   seakeeping_zones (ship_id, project_id, index, angle, speed, zone_id)
VALUES
-- Main
	(2, NULL, 0, 330.0, 16.0, 'Main'),
	(2, NULL, 1, 325.0, 16.0, 'Main'),
	(2, NULL, 2, 320.0, 16.0, 'Main'),
	(2, NULL, 3, 315.0, 16.0, 'Main'),
	(2, NULL, 4, 310.0, 16.0, 'Main'),
	(2, NULL, 5, 230.0, 16.0, 'Main'),
	(2, NULL, 6, 225.0, 16.0, 'Main'),
	(2, NULL, 7, 220.0, 16.0, 'Main'),
	(2, NULL, 8, 215.0, 16.0, 'Main'),
	(2, NULL, 9, 210.0, 16.0, 'Main'),
-- HighWaves
	(2, NULL, 0, 0.0, 16.0, 'HighWaves'),
	(2, NULL, 1, 5.0, 16.0, 'HighWaves'),
	(2, NULL, 2, 10.0, 16.0, 'HighWaves'),
	(2, NULL, 3, 15.0, 16.0, 'HighWaves'),
	(2, NULL, 4, 20.0, 16.0, 'HighWaves'),
	(2, NULL, 5, 160.0, 16.0, 'HighWaves'),
	(2, NULL, 6, 165.0, 16.0, 'HighWaves'),
	(2, NULL, 7, 170.0, 16.0, 'HighWaves'),
	(2, NULL, 8, 175.0, 16.0, 'HighWaves'),
	(2, NULL, 9, 180.0, 16.0, 'HighWaves'),
-- Parametric
	(2, NULL, 0, 45.0, 9.0, 'Parametric'),
	(2, NULL, 1, 45.0, 15.0, 'Parametric'),
	(2, NULL, 2, 135.0, 15.0, 'Parametric'),
	(2, NULL, 3, 135.0, 9.0, 'Parametric'),
-- Broaching
	(2, NULL, 0, 45.0, 16.0, 'Broaching'),
	(2, NULL, 1, 50.0, 16.0, 'Broaching'),
	(2, NULL, 2, 55.0, 16.0, 'Broaching'),
	(2, NULL, 3, 60.0, 16.0, 'Broaching'),
	(2, NULL, 4, 65.0, 16.0, 'Broaching'),
	(2, NULL, 5, 70.0, 16.0, 'Broaching'),
	(2, NULL, 6, 75.0, 16.0, 'Broaching'),
	(2, NULL, 7, 80.0, 16.0, 'Broaching'),
	(2, NULL, 8, 85.0, 16.0, 'Broaching'),
	(2, NULL, 9, 90.0, 16.0, 'Broaching'),
	(2, NULL, 10, 95.0, 16.0, 'Broaching'),
	(2, NULL, 11, 100.0, 16.0, 'Broaching'),
	(2, NULL, 12, 105.0, 16.0, 'Broaching'),
	(2, NULL, 13, 110.0, 16.0, 'Broaching'),
	(2, NULL, 14, 115.0, 16.0, 'Broaching'),
	(2, NULL, 15, 120.0, 16.0, 'Broaching'),
	(2, NULL, 16, 125.0, 16.0, 'Broaching'),
	(2, NULL, 17, 130.0, 16.0, 'Broaching'),
	(2, NULL, 18, 135.0, 16.0, 'Broaching');