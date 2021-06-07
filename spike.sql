CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(60),
    last_name VARCHAR(80)
);

CREATE TABLE marriage (
	id SERIAL PRIMARY KEY,
	first_id integer REFERENCES people,
	second_id integer REFERENCES people
);

INSERT INTO people 
VALUES (1, 'Lisa', 'Bonet');

INSERT INTO people 
VALUES (2, 'James', 'Bonet');

SELECT * FROM people;

INSERT INTO marriage
VALUES (1, 1, 2);

SELECT * FROM "people" AS "first_person"
JOIN "marriage" ON "marriage"."first_id"="first_person"."id"
JOIN "people" AS "second_person" ON "second_person"."id"="marriage"."second_id";
