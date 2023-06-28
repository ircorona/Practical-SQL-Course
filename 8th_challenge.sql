--You're the best


-- Query 1: Selecting 'carrera_id' and 'fecha_incorporacion' from the 'alumnos' table in the 'platzi' schema.
-- Grouping the result by 'carrera_id' and 'fecha_incorporacion'.
-- Ordering the result by 'fecha_incorporacion' in descending order.
SELECT carrera_id, fecha_incorporacion
FROM platzi.alumnos
GROUP BY carrera_id, fecha_incorporacion
ORDER BY fecha_incorporacion DESC;

-- Query 2: Selecting 'carrera_id' and the maximum 'fecha_incorporacion' from the 'alumnos' table in the 'platzi' schema.
-- Grouping the result by 'carrera_id'.
-- Ordering the result by 'carrera_id'.
SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;

-- Query 3: Selecting 'tutor_id' and the minimum 'nombre' (name) from the 'alumnos' table in the 'platzi' schema.
-- Grouping the result by 'tutor_id'.
-- Ordering the result by 'tutor_id'.
SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;
