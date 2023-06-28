--Window functions

-- Calculate the average colegiatura for each carrera_id
SELECT *,
	AVG (colegiatura) OVER (PARTITION BY carrera_id)
FROM platzi.alumnos;

-- Calculate the overall average colegiatura
SELECT *,
	AVG (colegiatura) OVER ()
FROM platzi.alumnos;

-- Calculate the cumulative sum of colegiatura within each carrera_id ordered by colegiatura
SELECT *,
	SUM (colegiatura) OVER (PARTITION BY carrera_id ORDER BY colegiatura)
FROM platzi.alumnos;

-- Assign a rank to each row within each carrera_id based on colegiatura in descending order
SELECT *,
	RANK () OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC)
FROM platzi.alumnos;

-- Assign a rank to each row within each carrera_id based on colegiatura in descending order and alias it as brand_rank
SELECT *,
	RANK () OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
FROM platzi.alumnos
ORDER BY carrera_id, brand_rank;

-- Retrieve rows with a brand_rank less than 3 from the subquery and order the results by brand_rank
SELECT *
FROM(
	SELECT *,
	RANK () OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
	FROM platzi.alumnos
) AS rank_colegiaturas_por_carrera
WHERE brand_rank < 3
ORDER BY brand_rank;
