\c postgres
DROP DATABASE IF EXISTS crane_data_server;
CREATE DATABASE crane_data_server WITH ENCODING 'UTF8';
\c crane_data_server

/*
	USER
*/
\i 1_create_user.sql

/*
	PROCESS TAG
*/
\i 2_create_tag.sql

/*
	PROCESS EVENT
*/
\i 3_create_event.sql
\i 4_create_event_view.sql

/*
	PROCESS OPERATING CYCLE
*/
\i 5_create_operating_cycle.sql


/*
	PROCESS OPERATING METRIC
*/
\i 6_create_operating_metric.sql


/*
	ERROR REPORTING
*/
\i 7_create_report.sql

/*
	FAULTS
*/
\i 8_create_fault.sql