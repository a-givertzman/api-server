/*
    PROCESS OPERATING CYCLE
*/
drop table if exists operating_cycle;
drop table if exists operating_cycle_metric CASCADE;
drop table if exists operating_cycle_metric_value CASCADE;
drop view if exists operating_cycle_metric_value_view;
do $$
begin
if not exists (SELECT 1 FROM pg_type WHERE typname = 'metric_data_type_enum') THEN
    create type metric_data_type_enum as enum('bool','int','real','time','date','timestamp','string');
end if;
end
$$;
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