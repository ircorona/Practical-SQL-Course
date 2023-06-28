--The second highest


SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 = (
	SELECT COUNT (DISTINCT colegiatura)
	FROM platzi.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
);
--2ND 
SELECT DISTINCT colegiatura, tutor_id
FROM platzi.alumnos
WHERE tutor_id = 20
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;

--3RD

SELECT *
FROM platzi.alumnos AS datos_alumnos
INNER JOIN (
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura
--4th
SELECT *
FROM platzi.alumnos AS datos_alumnos
WHERE colegiatura =(
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
);

--Challenge bring the 2nd half of the table
-- Query to find out the number of unique 'colegiatura' values in the 'alumnos' table from the 'platzi' schema.

SELECT COUNT(DISTINCT colegiatura)
FROM platzi.alumnos;


-- This query counts the unique 'colegiatura' values in the table.

-- 1) I created a Common Table Expression (CTE) named DistinctAmounts. This CTE selects distinct colegiatura amounts from the platzi.alumnos table and orders them in descending order.
-- 2)The main query selects colegiatura from the CTE.
-- 3) OFFSET is used to skip the first half of the rows in the CTE. The subquery calculates the total number of rows in the CTE and divides it by 2 to determine the offset.
-- By removing the LIMIT clause, the query will retrieve all the unique colegiatura amounts from the second half of the dataset, without any limit on the number of rows.

WITH DistinctAmounts AS (
    SELECT DISTINCT colegiatura
    FROM platzi.alumnos
    ORDER BY colegiatura DESC
)
SELECT colegiatura
FROM DistinctAmounts
OFFSET (SELECT COUNT(*) FROM DistinctAmounts) / 2;