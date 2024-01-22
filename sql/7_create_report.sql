/*
    ERROR REPORTING
*/
drop table if exists "report";
create table if not exists report (
    timestamp   timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    code        smallint NOT NULL,
    message     varchar(50) NOT NULL,
    stack       text NOT NULL,
    PRIMARY KEY (timestamp)
);
comment on table report is 'Отчеты об ошибках в работе приложений.';