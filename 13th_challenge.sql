--Generating ranges


-- Generate a series of numbers from 1.1 to 4 with a step of 1.3
SELECT *
FROM generate_series(1.1, 4, 1.3);

-- Generate a series of dates by adding increments of 7 days to the current date
SELECT current_date + s.a AS dates
FROM generate_series(0, 14, 7) AS s(a);

-- Generate a series of timestamps with a step of 10 hours between '2020-09-01 00:00:00' and '2020-09-04 12:00:00'
SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp, '2020-09-04 12:00:00', '10 hours');

-- Generate a series of numbers from 0 to 10 and join it with the alumnos table
SELECT a.id,
		a.nombre,
		a.apellido,
		a.carrera_id,
		s.a
FROM platzi.alumnos AS a
	INNER JOIN generate_series(0, 10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;

-- Generate a series of numbers from 1 to 20 and create a triangle pattern using lpad function
SELECT lpad('*', n * 2 - 1, ' ')
FROM generate_series(1, 20) AS n;
