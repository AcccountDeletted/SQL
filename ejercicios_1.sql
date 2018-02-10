-- Relación de ejercicios


-- 1.

SELECT grupo, calificacion
FROM matricular
WHERE asignatura = 112;


-- 2.

SELECT id "CODIGO"
FROM profesores
WHERE director_tesis IS NULL;


-- 3.

(SELECT profesor
FROM impartir)
UNION
(SELECT id
FROM profesores
WHERE director_tesis IS NOT NULL);


-- 4.

SELECT SUBSTR(nombre, 2, LENGTH(nombre)) "NOMBRE"
FROM alumnos;


-- 5.

SELECT nombre
FROM asignaturas
WHERE nombre LIKE 'B%';


-- 6.

SELECT alumno "CODIGO"
FROM matricular
WHERE calificacion != 'SP';


-- 7.

SELECT nombre, fecha_prim_matricula
FROM alumnos
WHERE LENGTH(nombre) > 5;


-- 8.

SELECT TRUNC(MONTHS_BETWEEN(fecha_prim_matricula, '01/12/2013')) "MESES"
FROM alumnos;


-- 9.

SELECT nombre
FROM asignaturas
WHERE creditos < 10;
