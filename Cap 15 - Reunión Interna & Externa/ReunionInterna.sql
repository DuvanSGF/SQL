/*
 REUNIÓN INTERNA - CLÁUSULAS INNER JOIN / ON

 Esta cláusula está diseñada precisamente para reunir registros de varias tablas, en
ella intervienen las claves primarias y foráneas, y no intervienen, o lo hacen en la
cláusula WHERE, los filtros propiamente dichos. Veamos una de las consultas que
se expuso en el capítulo anterior usando esta sintaxis.
*/


/*
Consulta que realiza la reunión entre los profesores y los cursos que imparte cada
uno usando INNER JOIN / ON:
 */

 select *
  from CURSOS C inner join PROFESORES P
  on C.ID_PROFE = P.ID_PROFE

/*
Veamos otro ejemplo del capítulo anterior usando esta cláusula, concretamente del
apartado de ejercicios, donde se pedía los cursos en que se ha matriculado el
alumno con identificador 1:
*/
select C.TITULO CURSO
 from ALUMNOS_CURSOS AC inner join CURSOS C
 on AC.ID_CURSO = C.ID_CURSO
 where AC.ID_ALUMNO = 1
/*
 CURSO
 Programación PHP
 SQL desde cero
 */

/*
Observe como en la cláusula WHERE se establece un filtro propiamente dicho, y en
la cláusula ON se establece la condición de reunión que el motor debe aplicar entre
las tablas a ambos lados de la cláusula INNER JOIN.

Veamos un último ejemplo de reunión interna en la que aparezcan tres tablas, para
ello tomemos otro ejemplo del capítulo anterior, la reunión de los alumnos con los

cursos que cursa cada uno. Tomando ejemplos equivalentes construidos
únicamente con la cláusula WHERE se pueden observar mejor las diferencias
*/

-- Ejemplo de iteracion con tres tablas. 
select C.TITULO CURSO ,
concat(A.APELLIDOS,', ',A.NOMBRE ) ALUMNO
from ALUMNOS_CURSOS AC inner join ALUMNOS A
on AC.ID_ALUMNO = A.ID_ALUMNO inner join CURSOS C
on AC.ID_CURSO = C.ID_CURSO
order by C.TITULO , A.NOMBRE , A.APELLIDOS
