-- Query to retrieve the names, last names, and career details of students who have a NULL career ID.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE c.id IS NULL;

-- Query to retrieve the names, last names, and career details of students and sort them by career ID in descending order.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

-- Query to retrieve the names, last names, and career details of students and sort them by career ID in descending order using a RIGHT JOIN.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

-- Query to retrieve the names, last names, and career details of students who have a NULL student ID and sort them by career ID in descending order using a RIGHT JOIN.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
--All the unions



FROM platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC;

-- Query to retrieve the names, last names, and career details of students and sort them by career ID in descending order using an INNER JOIN.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
INNER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

-- Query to retrieve the names, last names, and career details of students and sort them by career ID and carreras table ID in descending order, including NULL values in either table.
SELECT a.nombre,
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.id IS NULL
   OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC;
