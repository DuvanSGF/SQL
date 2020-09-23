/*
Ejercicio 1
Construya una consulta que devuelva los cursos en que se ha matriculado el alumno
con identificador 1.
*/
-- Mi Solucion: Bn
select C.Titulo as Cursos
  from ALUMNOS_CURSOS AC, ALUMNOS A, CURSOS C
 where AC.ID_ALUMNO = A.ID_ALUMNO
   and AC.ID_CURSO = C.ID_CURSO
   and A.ID_ALUMNO = 1

-- la solucion dada por el libro es:
select C.TITULO CURSO
 from ALUMNOS_CURSOS AC, CURSOS C
 where AC.ID_CURSO = C.ID_CURSO
 and AC.ID_ALUMNO = 1

/*
Ejercicio 2
Modifique la anterior consulta para que devuelva los nombres y apellidos de los
alumnos, y los cursos en que se han matriculado, tales que el nombre de pila del
alumno contenga una E.
*/
-- Mi solucion : Fallo me quedo mal
select *
  from ALUMNOS_CURSOS AC, ALUMNOS A, CURSOS C
 where AC.ID_ALUMNO = A.ID_ALUMNO
   and AC.ID_CURSO = C.ID_CURSO
   and A.NOMBRE LIKE %E 1

-- Solucion dada por el libro
select A.NOMBRE,A.APELLIDOS,C.TITULO CURSO
 from ALUMNOS_CURSOS AC, CURSOS C, ALUMNOS A
 where AC.ID_CURSO = C.ID_CURSO
 and AC.ID_ALUMNO = A.ID_ALUMNO
 and A.NOMBRE like '%E%'



/*
¿Cuántos cursos imparte cada profesor? Construya una consulta que responda a
esta cuestión de modo que el resultado muestre el nombre completo del profesor
acompañado del número de cursos que imparte
*/
-- Mi solucion: Bn
select COUNT(*) as cursos, P.NOMBRE, P.APELLIDOS
  from CURSOS C, PROFESORES P
 where C.ID_PROFE = P.ID_PROFE
 group by P.NOMBRE, P.APELLIDOS

 -- Solucion dada por el libro
 select P.NOMBRE, P.APELLIDOS , count(1) CURSOS
 from PROFESORES P, CURSOS C
 where P.ID_PROFE = C.ID_PROFE
 group by P.NOMBRE, P.APELLIDOS



/*
Ejercicio 3
   ¿Cuántos alumnos hay matriculados en cada uno de los cursos? Construya una
   consulta que responda a esta cuestión de modo que el resultado muestre el título
   del curso acompañado del número de alumnos matriculados.
*/
-- Solucion: Era el nombre del curso no el ID
select COUNT(*) as cantidadEstudiantes ,ID_curso
  from ALUMNOS_CURSOS
   GROUP BY ID_CURSO

/*
      cantidadEstudiantes	ID_curso
            3	                1
            1	                2
            2	                3
            2	                4
*/

-- Solucion dada por el libro
select C.TITULO CURSO, count(1) ALUMNOS
 from ALUMNOS_CURSOS AC, CURSOS C
 where AC.ID_CURSO = C.ID_CURSO
 group by C.TITULO
/*
 CURSO                              ALUMNOS
 Dibujo técnico                        2
 Modelos abstracto de datos            1
 Programación PHP                      3
 SQL desde cero                        2
*/


/*
Modifique la anterior consulta de modo que muestre aquellos cursos que el número
de alumnos matriculados sea exactamente de dos alumnos.
*/
-- Solucion Dada por el libro
select C.TITULO CURSO
 from ALUMNOS_CURSOS AC, CURSOS C
 where AC.ID_CURSO = C.ID_CURSO
 group by C.TITULO
having count(1) = 2 -- having count(*) = 2 Es la misma Vaina

/*
CURSO
Dibujo técnico
SQL desde cero
*/
