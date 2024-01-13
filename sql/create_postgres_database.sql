do $$
begin

	drop view if exists operating_cycle_metric_value_view;
	drop view if exists operating_cycle_metric_value_view_test;
	drop table if exists "app_user";
	drop table if exists "app_user_test";
	drop view if exists "event_view";
	drop view if exists "event_view_test";
	drop table if exists "tags";
	drop table if exists "tags_test";
	drop type if exists "tag_type_enum";
	drop type if exists "tag_type_enum_test";
    drop table if exists "event";
    drop table if exists "event_test";
	drop sequence if exists "event_uid_seq";
	drop sequence if exists "event_uid_seq_test";
    drop index if exists "fk_timestamp_idx1";
    drop index if exists "fk_timestamp_idx1_test";
	drop table if exists "report";
	drop table if exists "report_test";
	drop type if exists "user_role_enum";
	drop type if exists "user_role_enum_test";

	/*
		USER
	*/
	if not exists (SELECT 1 FROM pg_type WHERE typname = 'user_role_enum') THEN
		create type user_role_enum AS ENUM ('admin','operator');
    end if;	
	create table if not exists app_user (
	    id      bigserial not null,
	    role    user_role_enum not null,
	    name    varchar(255) not null,                  --COMMENT 'ФИО Потльзователя',
	    login   varchar(255) not null unique,           --COMMENT ' Логин',
	    pass 	varchar(2584) not null,                 --COMMENT 'Пароль',
	    created timestamp not null default CURRENT_TIMESTAMP,
	    updated timestamp not null default CURRENT_TIMESTAMP,
	    deleted timestamp default null,
	    PRIMARY KEY (id, login)
	);
	comment on table app_user is 'Потльзователи';
	comment on column app_user.role is 'Признак группировки';



	/*
		PROCESS TAG
	*/
	if not exists (SELECT 1 FROM pg_type WHERE typname = 'tag_type_enum') THEN
	    create type tag_type_enum as enum('Bool','Int','UInt','DInt','Word','LInt','Real','Time','Date_And_Time');
	end if;	
	create table if not exists tags (
	  id 		serial not null,
	  type      tag_type_enum not null,                 --COMMENT 'S7DataType(bool, int, uInt, dInt, word, lInt, real, time, dateAndTime)',
	  name      varchar(255) not null unique,	        --COMMENT 'Имя тэга в системе',
	  description   varchar(255) not null DEFAULT '',   --COMMENT 'Дополнительная информация о тэге',
	  PRIMARY KEY (id)
	);
	comment on table tags is 'Справочник тэгов проекта.';

    
	/*
		PROCESS EVENT
	*/
    CREATE SEQUENCE event_uid_seq;
    create table if not exists event (
        uid         decimal(24,12) not null default nextval('event_uid_seq'), --'1.000000000000', --COMMENT 'Идентификатор записи',
        timestamp   timestamp not null,
        pid         int2 not null,                      --COMMENT 'Идентификатор тэга.',
        value       int2 not null,                      --COMMENT 'Значение тэга 0..255, аварийно если >0.',
        status      int2 not null,                      --COMMENT 'DsStatus as 0..255',
        primary key (uid)
    ); 
    comment on table event is 'События. Только тэги дискретных значений, регистрируется 0 - как норма, > 0 - как авария.';
    create index fk_timestamp_idx1 on event (timestamp asc);

	create or replace view event_view as
		select
		    e.uid AS uid,
		    e.pid AS pid,
		    e.value AS value,
		    e.status AS status,
		    e.timestamp AS timestamp,
		    t.type AS type,
		    t.name AS name,
		    t.description AS description
		from
		    (event e
		left join tags t on
		    (e.pid = t.id));


	/*
		PROCESS OPERATING CYCLE
	*/
	drop table if exists operating_cycle;
	drop table if exists operating_cycle_metric;
	drop table if exists operating_cycle_metric_value;
	if not exists (SELECT 1 FROM pg_type WHERE typname = 'metric_data_type_enum') THEN
	    create type metric_data_type_enum as enum('bool','int','real','time','date','timestamp','string');
	end if;

	create table operating_cycle (
		id                bigserial NOT NULL,     -- 'Идентификатор записи рабочего цикла',
		timestamp_start   timestamp NOT NULL,     --COMMENT 'Дата и время начала рабочего цикла',
		timestamp_stop    timestamp NOT NULL,     --COMMENT 'Дата и время окончания рабочего цикла',
		alarm_class       char(2) NOT NULL,       -- COMMENT 'Point alarm class as 0..15, 0 - no alarm',
		PRIMARY KEY (id)
	);
	create table operating_cycle_metric (
		id            char(6) NOT NULL,        --COMMENT 'Идентификатор метрики статистических значений рабочего цикла',
		name          varchar(255) NOT NULL,   --COMMENT 'Имя метрики статистических значений рабочего цикла',
		description   varchar(255) NOT NULL,   --COMMENT 'Имя метрики статистических значений рабочего цикла',
		PRIMARY KEY (id)
		--KEY name_idx1 (name)
	);
	insert into operating_cycle_metric (id, name, description) values
		(1, 'average', 'Среднее арифметическое'),
		(2, 'max', 'Максимальное'),
		(3, 'min', 'Минимальное'),
		(4, 'trip_count', 'Количество срабатываний'),
		(5, 'diviation_max', 'Максимальное отклонение');
	create table operating_cycle_metric_value (
		operating_cycle_id    int8 NOT NULL,  --COMMENT 'Идентификатор записи рабочего цикла, к которрй относится данная хапись',
		pid                   int4 NOT NULL,  --COMMENT 'ID тэга',
		metric_id             char(6) NOT NULL,  --COMMENT 'Идентификатор метрики рабочего цикла, к которрй относится данная хапись',
		value                 decimal(16,8) NOT NULL,  --COMMENT 'Значеник метрики',
		PRIMARY KEY (operating_cycle_id, pid, metric_id)
	);
	create or replace view operating_cycle_metric_value_view as
		select
		    ocmv.operating_cycle_id AS operating_cycle_id,
		    ocmv.pid AS "point_id",
		    tag.name AS point_name,
		    ocmv.metric_id AS "metric_id",
		    ocm."name" as metric_name,
		    ocmv.value AS value
--		    tag.type AS type,
--		    tag.description AS description
		from
		    (operating_cycle_metric_value ocmv
		left join tags tag on
		    (ocmv.pid = tag.id)
		left join operating_cycle_metric ocm on
		    (ocmv.metric_id = ocm.id));


	/*
		PROCESS OPERATING METRIC
	*/
    drop table if exists operating_metric;
	if not exists (SELECT 1 FROM pg_type WHERE typname = 'metric_data_type_enum') THEN
	    create type metric_data_type_enum as enum('bool','int','real','time','date','timestamp','string');
	end if;	    
    create table operating_metric (
        id            char(6) NOT NULL unique,     --COMMENT 'Идентификатор метрики',
        type          metric_data_type_enum not null,      --COMMENT 'enum('bool','int','real','time','date','timestamp','string')',
        name          varchar(255) NOT NULL,       --COMMENT 'Имя метрики',
        description   varchar(255) NOT NULL,       --COMMENT 'Описание метрики',
        value         text NOT NULL,               --COMMENT 'Значение метрики',
        PRIMARY KEY (name)
    );
    comment on table operating_metric is 'Общие метрики';
    insert into operating_metric (id, type, name, description, value) values
        ('1.1',     'string',   'crane-type', 'тип крана', 'unknown'),
        ('1.2',     'string',   'crane-index', 'индекс крана', 'unknown'),
        ('1.3',     'string',   'crane-vendor', 'наименование предприятия - изготовителя крана', 'ООО "ТКЗ"'),
        ('1.4',     'string',   'crane-serial-number', 'заводской номер крана', '000-000'),
        ('1.5',     'date',     'crane-manufacturing-date', 'год изготовления крана', '2023-03-03'),
        ('1.6',     'real',     'crane-capacity', 'грузоподъемность крана, тонны', '0.0'),
        ('1.7',     'string',   'crane-classification-group', 'группа классификации (режима) крана', 'M8'),
        ('1.7.1',   'string',   'winch1-classification-group', 'группа классификации (режима) лебедки 1 крана', 'M8'),
        ('1.7.2',   'string',   'winch2-classification-group', 'группа классификации (режима) лебедки 2 крана', 'M8'),
        ('1.7.3',   'string',   'winch3-classification-group', 'группа классификации (режима) лебедки 3 крана', 'M8'),
        ('1.8',     'real',     'crane-nominal-characteristic-number', 'нор­мативное характеристическое число крана', '0.0'),
        ('1.8.1',   'real',     'winch1-nominal-characteristic-number', 'нор­мативное характеристическое число лебедки 1 крана', '0.0'),
        ('1.8.2',   'real',     'winch2-nominal-characteristic-number', 'нор­мативное характеристическое число лебедки 2 крана', '0.0'),
        ('1.8.3',   'real',     'winch3-nominal-characteristic-number', 'нор­мативное характеристическое число лебедки 3 крана', '0.0'),
        ('1.9',     'date',     'crane-commissioning-date', 'дата ввода крана в эксплуатацию', '2023-03-03'),
        ('1.10',    'int',      'crane-standard-service-life ', 'нормативный срок службы крана', '0'),
        ('2.1',     'string',   'fault-recorder-type', 'тип Регистратора параметров', 'Fault Recorder'),
        ('2.2',     'string',   'fault-recorder-model', 'модификация Регистратора параметров', 'v0.0.1'),
        ('2.3',     'string',   'fault-recorder-vendor', 'наименование предприятия - изготовителя Регистратора параметров', 'ООО "ТКЗ"'),
        ('2.4',     'string',   'fault-recorder-serial-number', 'заводской номер Регистратора параметров', '000-000'),
        ('2.5',     'date',     'fault-recorder-manufacturing-date', 'год изготовления Регистратора параметров', '2023-03-03'),
        ('2.6',     'date',     'fault-recorder-installation-date', 'дата установки РП на кран', '2023-03-03'),
        ('2.7',     'string',   'fault-recorder-installation-company', 'наименование организации, установившей Регистратора параметров на кран', 'ООО "ТКЗ"'),
        ('3.1',     'real',     'crane-total-operating-hours', 'общее количество часов работы крана', '0.0'),
        ('3.2.0',   'real',     'pump-total-operating-hours', 'общее количество часов работы насосной станции (моточасы)', '0.0'),
        ('3.2.1',   'real',     'winch1-total-operating-hours', 'общее количество часов работы лебедки 1 (моточасы)', '0.0'),
        ('3.2.2',   'real',     'winch2-total-operating-hours', 'общее количество часов работы лебедки 2 (моточасы)', '0.0'),
        ('3.2.3',   'real',     'winch3-total-operating-hours', 'общее количество часов работы лебедки 3 (моточасы)', '0.0'),
        ('3.3',     'int',      'total-operating-cycles-count', 'суммарное число рабочих циклов', '0'),
        ('3.4',     'real',     'cycles-distribution-by-load-ranges', 'распределение циклов по диапазонам нагрузки', '0.0'),
        ('3.4.1',   'real',     'cycles-0_05-0_15-load-range', 'циклов в диапазоне загрузки 0,05 - 0,15', '0.0'),
        ('3.4.2',   'real',     'cycles-0_15-0_25_load-range', 'циклов в диапазоне загрузки 0,15 - 0,25', '0.0'),
        ('3.4.3',   'real',     'cycles-0_25-0_35_load-range', 'циклов в диапазоне загрузки 0,25 - 0,35', '0.0'),
        ('3.4.4',   'real',     'cycles-0_35-0_45_load-range', 'циклов в диапазоне загрузки 0,35 - 0,45', '0.0'),
        ('3.4.5',   'real',     'cycles-0_45-0_55_load-range', 'циклов в диапазоне загрузки 0,45 - 0,55', '0.0'),
        ('3.4.6',   'real',     'cycles-0_55-0_65_load-range', 'циклов в диапазоне загрузки 0,55 - 0,65', '0.0'),
        ('3.4.7',   'real',     'cycles-0_65-0_75_load-range', 'циклов в диапазоне загрузки 0,65 - 0,75', '0.0'),
        ('3.4.8',   'real',     'cycles-0_75-0_85_load-range', 'циклов в диапазоне загрузки 0,75 - 0,85', '0.0'),
        ('3.4.9',   'real',     'cycles-0_85-0_95_load-range', 'циклов в диапазоне загрузки 0,85 - 0,95', '0.0'),
        ('3.4.10',  'real',     'cycles-0_95-1_05_load-range', 'циклов в диапазоне загрузки 0,95 - 1,05', '0.0'),
        ('3.4.11',  'real',     'cycles-1_05-1_15_load-range', 'циклов в диапазоне загрузки 1,05 - 1,15', '0.0'),
        ('3.4.12',  'real',     'cycles-1_15-1_25_load-range', 'циклов в диапазоне загрузки 1,15 - 1,25', '0.0'),
        ('3.4.13',  'real',     'cycles-1_15-_load-range', 'циклов в диапазоне загрузки 1,25 -', '0.0'),
        ('3.5',     'real',     'crane-total-lifted-mass', 'суммарная масса поднятых грузов. тонн', '0.0'),
        ('3.5.1',   'real',     'winch1-total-lifted-mass', 'суммарная масса поднятых грузов лебедка 1', '0.0'),
        ('3.5.2',   'real',     'winch2-total-lifted-mass', 'суммарная масса поднятых грузов лебедка 2', '0.0'),
        ('3.5.3',   'real',     'winch3-total-lifted-mass', 'суммарная масса поднятых грузов лебедка 3', '0.0'),
        ('3.6.1',   'int',      'winch1-load-limiter-trip-count', 'количество срабатываний ограничителя грузоподъемности лебедка 1', '0'),
        ('3.6.2',   'int',      'winch2-load-limiter-trip-count', 'количество срабатываний ограничителя грузоподъемности лебедка 2', '0'),
        ('3.6.3',   'int',      'winch3-load-limiter-trip-count', 'количество срабатываний ограничителя грузоподъемности лебедка 3', '0'),
        ('3.7',     'real',     'crane-characteristic-number', 'текущее характеристическое число для крана', '0.0'),
        ('3.7.1',   'real',     'winch1-characteristic-number', 'текущее характеристическое число лебедка 1', '0.0'),
        ('3.7.2',   'real',     'winch2-characteristic-number', 'текущее характеристическое число лебедка 2', '0.0'),
        ('3.7.3',   'real',     'winch3-characteristic-number', 'текущее характеристическое число лебедка 3', '0.0'),
        ('3.8',     'real',     'crane-load-spectrum-factor', 'коэффициент распределения нагрузок для крана', '0.0'),
        ('3.8.1',   'real',     'winch1-load-spectrum-factor', 'коэффициент распределения нагрузок лебедка 1', '0.0'),
        ('3.8.2',   'real',     'winch2-load-spectrum-factor', 'коэффициент распределения нагрузок лебедка 2', '0.0'),
        ('3.8.3',   'real',     'winch3-load-spectrum-factor', 'коэффициент распределения нагрузок лебедка 3', '0.0');


	/*
		ERROR REPORTING
	*/
	create table if not exists report (
	    timestamp   timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	    code        smallint NOT NULL,
	    message     varchar(50) NOT NULL,
	    stack       text NOT NULL,
	    PRIMARY KEY (timestamp)
	);
	comment on table report is 'Отчеты об ошибках в работе приложений.';

end$$;
