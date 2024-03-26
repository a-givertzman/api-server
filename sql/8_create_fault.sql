-- Cleanup
DROP INDEX IF EXISTS idx_fault_timestamp;
DROP TABLE IF EXISTS report;
-- Creation
CREATE TABLE IF NOT EXISTS fault (
    timestamp   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    pid         int2 NOT NULL,
    value       decimal(8,2) NOT NULL DEFAULT '0.00', --COMMENT 'Нагрузка лебедки 1 (тонны)',   --COMMENT 'Значение тэга 0..255, аварийно если >0.',
    PRIMARY KEY (timestamp, pid)
); 
COMMENT ON TABLE event IS 'Записи регистратора. Только тэги аналоговых значений, регистрируемые по изменению.';
CREATE INDEX idx_fault_timestamp ON event (timestamp ASC);