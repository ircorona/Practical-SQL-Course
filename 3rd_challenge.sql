--Selecting from a set of options


-- Query to retrieve all information of students who have a tutor with id 30
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);
-- Query to retrieve all information of students who have a tutor with an id other than 30
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id != 30
);
