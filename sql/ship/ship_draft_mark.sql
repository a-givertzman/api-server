-- Relations to store draft mark types
DROP TABLE IF EXISTS draft_mark_type CASCADE;

CREATE TABLE IF NOT EXISTS draft_mark_type (
    id INT NOT NULL, -- ID of the draft mark type
    name TEXT NOT NULL, -- Name of the draft mark type
    CONSTRAINT draft_mark_type_pk PRIMARY KEY (id)
);

-- TODO fill all variants
INSERT INTO draft_mark_type
    (id, name)
VALUES
    (1, 'winter'),
    (2, 'summer');

-- Relations to store which draft marks are on the ship in the current project
DROP TABLE IF EXISTS ship_draft_mark;

CREATE TABLE IF NOT EXISTS ship_draft_mark (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    ship_id INT NOT NULL, -- ID of the ship
    project_id INT, -- ID of the project
    draft_mark_type_id INT NOT NULL, -- ID of the draft mark type
    is_active BOOLEAN NOT NULL DEFAULT FALSE, -- Either draft mark is currently applied or not
    CONSTRAINT ship_draft_mark_pk PRIMARY KEY (id),
    CONSTRAINT ship_draft_mark_type_fk FOREIGN KEY (draft_mark_type_id) REFERENCES draft_mark_type(id)
);

-- TODO move into ship related folder
INSERT INTO ship_draft_mark
    (ship_id, project_id, draft_mark_type_id, is_active)
VALUES
    (2, NULL, 1, TRUE),
    (2, NULL, 2, FALSE);