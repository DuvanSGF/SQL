/*
Ejercicio 1
Construya una consulta que devuelva los cursos en que se ha matriculado el alumno
con identificador 1.
*/
select *
  from ALUMNOS_CURSOS AC, ALUMNOS A, CURSOS C
 where AC.ID_ALUMNO = A.ID_ALUMNO
   and AC.ID_CURSO = C.ID_CURSO
   and A.ID_ALUMNO = 1
/*
Ejercicio 2
Modifique la anterior consulta para que devuelva los nombres y apellidos de los
alumnos, y los cursos en que se han matriculado, tales que el nombre de pila del
alumno contenga una E.
*/
select *
  from ALUMNOS_CURSOS AC, ALUMNOS A, CURSOS C
 where AC.ID_ALUMNO = A.ID_ALUMNO
   and AC.ID_CURSO = C.ID_CURSO
   and A.NOMBRE LIKE %E 1

/*
¿Cuántos cursos imparte cada profesor? Construya una consulta que responda a
esta cuestión de modo que el resultado muestre el nombre completo del profesor
acompañado del número de cursos que imparte
*/
   select COUNT(*) as cursos, P.NOMBRE
     from CURSOS C, PROFESORES P
    where C.ID_PROFE = P.ID_PROFE
   GROUP BY P.NOMBRE
