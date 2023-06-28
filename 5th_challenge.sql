--Selecting by year


-- Query to retrieve all columns from the 'alumnos' table where the year is 2019 and the month is 05 from the 'fecha_incorporacion' column
SELECT *
FROM platzi.alumnos
WHERE EXTRACT(YEAR FROM fecha_incorporacion) = 2018
	AND EXTRACT(MONTH FROM fecha_incorporacion) = 05;


-- Query to retrieve all columns from the 'alumnos' table where the year is 2018 and the month is 05 from the 'fecha_incorporacion' column
SELECT *
FROM platzi.alumnos
WHERE DATE_PART('year', fecha_incorporacion) = 2018
	AND DATE_PART('month', fecha_incorporacion) = 05;


-- Query to retrieve all columns from the 'alumnos' table where the year is 2020 and the month is 05 from the 'fecha_incorporacion' column
SELECT *
FROM (
	SELECT *,
		DATE_PART('year',fecha_incorporacion) AS ano_incorporacion,
		DATE_PART('month',fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_fecha
WHERE ano_incorporacion = 2020
	AND mes_incorporacion = 05;
