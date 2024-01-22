drop table if exists "event" CASCADE;
drop sequence if exists "event_uid_seq" CASCADE;
drop index if exists "fk_timestamp_idx1";
/*
    PROCESS EVENT
*/
CREATE SEQUENCE event_uid_seq;
CREATE TABLE IF NOT EXISTS event (
    uid         decimal(24,12) not null default nextval('event_uid_seq'), --'1.000000000000', --COMMENT 'Идентификатор записи',
    timestamp   timestamp not null,
    pid         int2 not null,                      --COMMENT 'Идентификатор тэга.',
    value       int2 not null,                      --COMMENT 'Значение тэга 0..255, аварийно если >0.',
    status      int2 not null,                      --COMMENT 'DsStatus as 0..255',
    primary key (uid)
); 
comment on table event is 'События. Только тэги дискретных значений, регистрируется 0 - как норма, > 0 - как авария.';
create index fk_timestamp_idx1 on event (timestamp asc);