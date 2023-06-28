--Triangulating


-- Query to left-pad the string 'sql' with '8' characters on the left side, resulting in a total length of 15 characters.
SELECT lpad('sql', 15, '8');

-- Query to left-pad the string 'sql' with '*' characters on the left side based on the value of the 'id' column from the 'platzi.alumnos' table where 'id' is less than 10.
SELECT lpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

-- Query to left-pad the '*' character with '*' characters on the left side based on the value of the 'id' column from the 'platzi.alumnos' table where 'id' is less than 10, and order the result by the 'carrera_id' column.
SELECT lpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

-- Query to left-pad the '*' character with '*' characters on the left side based on the value of the 'row_id' column (generated using ROW_NUMBER() function) from a subquery that retrieves all rows from the 'platzi.alumnos' table, and limit the result to the first 5 rows based on the 'row_id'. The result is ordered by the 'carrera_id' column.
SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
    SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
    FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;

-- Query to right-pad the '*' character with '*' characters on the right side based on the value of the 'id' column from the 'platzi.alumnos' table where 'id' is less than 10, and order the result by the 'carrera_id' column.
SELECT rpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;
