-- Resolving differences


-- Query to count the number of students per career and display the count in descending order.
SELECT carrera_id, COUNT(*) AS cuenta
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;

-- Query to retrieve the names, last names, and career details of students who have a career ID that does not exist in the carreras table.
SELECT a.nombre, 
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;

-- Query to retrieve the names, last names, and career details of all students along with the corresponding carrera details, including students with NULL career IDs.
SELECT a.nombre, 
       a.apellido,
       a.carrera_id,
       c.id,
       c.carrera
FROM platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;
