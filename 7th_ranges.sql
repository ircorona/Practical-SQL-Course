--Range selectors


-- Select all rows from the 'alumnos' table where the 'tutor_id' column has values 1, 2, 3, or 4.
SELECT *
FROM platzi.alumnos
WHERE tutor_id IN (1, 2, 3, 4);

-- Select all rows from the 'alumnos' table where the 'tutor_id' column is between 1 and 10 (inclusive).
SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1 AND tutor_id <= 10;

-- Check if the integer range from 10 to 20 (inclusive) contains the value 3.
SELECT int4range(10, 20) @> 3;

-- Check if the number range from 11.1 to 22.2 (inclusive) overlaps with the number range from 20.0 to 30.0 (inclusive).
SELECT numrange(11.1, 22.2) && numrange(20.0, 30.0);

-- Convert the integer range from 15 to 25 (inclusive) to uppercase.
SELECT UPPER(int8range(15, 25));

-- Convert the integer range from 15 to 25 (inclusive) to lowercase.
SELECT LOWER(int8range(15, 25));

-- Multiply the integer range from 10 to 20 (inclusive) by the integer range from 15 to 25 (inclusive).
SELECT int4range(10, 20) * int4range(15, 25);

-- Check if the number range from 1 to 5 (inclusive) is empty.
SELECT isempty(numrange(1, 5));

-- Calculate the intersection of the integer range formed by the minimum and maximum 'tutor_id' values and the integer range formed by the minimum and maximum 'carrera_id_id' values in the 'alumnos' table.
SELECT int4range(MIN(tutor_id), MAX(tutor_id)) * int4range(MIN(carrera_id_id), MAX(carrera_id_id))
FROM platzi.alumnos;
