drop table if exists "app_user";
drop type if exists "user_role_enum" CASCADE;
/*
    USER
*/
do $$
begin
if not exists (SELECT 1 FROM pg_type WHERE typname = 'user_role_enum') THEN
    create type user_role_enum AS ENUM ('admin','operator');
end if;
end
$$;
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