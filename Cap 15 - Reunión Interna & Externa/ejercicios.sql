-- EJERCICIOS

/*
  Ejercicio 1
  Construya una consulta que resuelva el número de cursos que imparte cada
  profesor usando la cláusula INNER JOIN.

*/

-- SOLUCIÓN

SELECT * FROM profesores;
SELECT COUNT(C.ID_PROFE) AS numeroCursos, CONCAT(P.NOMBRE," ", P.APELLIDOS) AS Profesor
FROM cursos C
INNER JOIN profesores P
ON C.ID_PROFE = P.ID_PROFE
GROUP BY C.ID_PROFE;


/*
	Ejercicio 2
	Realice una consulta entre las tablas CURSOS, ALUMNOS y ALUMNOS_CURSOS
	de modo que aparezcan los alumnos matriculados en cada curso pero mostrando
	todos los cursos aunque no tengan alumnos matriculados.
*/

SELECT C.TITULO AS curso, COUNT(A.ID_ALUMNO) AS EstudiantesMatriculados
FROM Alumnos_cursos A
RIGHT OUTER JOIN cursos C
ON A.ID_CURSO = C.ID_CURSO
GROUP BY C.titulo;

|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                Verificamos la solucion                    |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
-- Ejercicio 1

select P.NOMBRE, P.APELLIDOS , count(1) CURSOS
from PROFESORES P inner join CURSOS C
on P.ID_PROFE = C.ID_PROFE
group by P.NOMBRE, P.APELLIDOS
-- Me da el mismo resultado.


-- Este es le resultado valedero realmente fue muy dificil
select C.TITULO CURSO, A.NOMBRE,A.APELLIDOS
 from (ALUMNOS_CURSOS AC inner join ALUMNOS A
 on AC.ID_ALUMNO = A.ID_ALUMNO) right join CURSOS C
 on AC.ID_CURSO = C.ID_CURSO
