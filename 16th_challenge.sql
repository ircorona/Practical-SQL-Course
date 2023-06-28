--Partitions and aggregation

-- Assign a unique row number to each row based on the order of fecha_incorporacion
SELECT ROW_NUMBER() OVER (ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos;

-- Retrieve the first colegiatura value within each carrera_id partition
SELECT FIRST_VALUE(colegiatura) OVER (PARTITION BY carrera_id) AS primera_colegiatura, *
FROM platzi.alumnos;

-- Retrieve the last colegiatura value within each carrera_id partition
SELECT LAST_VALUE(colegiatura) OVER (PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos;

-- Retrieve the colegiatura value at the 3rd position within each carrera_id partition
SELECT NTH_VALUE(colegiatura, 3) OVER (PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos;

-- Assign a rank to each row within each carrera_id based on colegiatura in descending order
SELECT *,
       RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;

-- Assign a dense rank to each row within each carrera_id based on colegiatura in descending order
SELECT *,
       DENSE_RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;

-- Calculate the percentile rank for each row within each carrera_id based on colegiatura in descending order
SELECT *,
       PERCENT_RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;
