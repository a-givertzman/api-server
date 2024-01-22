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