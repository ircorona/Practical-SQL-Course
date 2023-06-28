--Selfish

-- Query to retrieve the names and last names of students along with their respective tutor names and last names.
SELECT a.nombre,
       a.apellido,
       t.nombre,
       t.apellido
FROM platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;

-- Query to calculate the number of students per tutor and display the tutor name and the count of students, ordered in descending order.
SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
       COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;

-- Query to calculate the average number of students per tutor based on the previous query results.
SELECT AVG(alumnos_por_tutor) AS promedio_alumnos_por_tutor
FROM (
    SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
           COUNT(*) AS alumnos_por_tutor
    FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
    GROUP BY tutor
) AS alumnos_tutor;
