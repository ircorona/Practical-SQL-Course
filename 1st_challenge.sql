--The first


SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;

--2ND 

SELECT *
FROM platzi.alumnos
LIMIT 5;

--3RD 

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id between 1 and 5;