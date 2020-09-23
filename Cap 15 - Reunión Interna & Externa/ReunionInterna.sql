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
