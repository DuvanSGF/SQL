/*
REUNIÓN EXTERNA - LEFT OUTER JOIN / RIGHT OUTER JOIN

La reunión externa puede verse como una reunión interna donde no es necesario
que el registro hijo tenga informada la clave foránea para ser mostrado.

______________________________________________________________________________
Veamos la consulta que muestra los cursos y sus profesores
aunque el curso no tenga profesor asignado
Esta es mi solución:
*/

SELECT C.Titulo, P.Nombre
FROM cursos C
LEFT OUTER JOIN profesores P
ON C.ID_PROFE = P.ID_PROFE;


/*
Como en este caso usamos LEFT OUTER JOIN, la tabla de la izquierda, es decir,
la tabla CURSOS, será considerada por completo aunque no tenga éxito la cláusula
ON, en cuyo caso los campos de la tabla situada a la derecha de la cláusula se
mostrarán a nulo.
Si invertimos el orden de las tablas y usamos RIGHT OUTER JOIN, o simplemente
RIGHT JOIN, expresión equivalente simplificada aplicable también a LEFT JOIN, el
resultado es el mismo.
*/
select *
 from PROFESORES P right join CURSOS C
 on C.ID_PROFE = P.ID_PROFE


 /*
 Veamos otro ejemplo:
 Consulta que muestra todos los cursos acompañados del profesor que lo imparte.
 Si el curso no tiene profesor definido o bien el campo APELLIDOS no contiene una
 «E», los campos de la tabla PROFESORES se mostrarán a nulo
  */

 select *
  from PROFESORES P right join CURSOS C
  on C.ID_PROFE = P.ID_PROFE
  and P.APELLIDOS like '%E%';
  -- En esta consulta nos viene con valores nulos que no necesitamos
  -- Ahora lo realizamos en la clausula del WHere
  select *
  from PROFESORES P right join CURSOS C
  on C.ID_PROFE = P.ID_PROFE
  WHERE P.APELLIDOS like '%E%';
  -- Aqui si vienen bn los datos con la unica informacion que requiero.

 /*
Para que se muestre la informacion importante y que se al correcta la condicion
la debemos aplicar siempre en el Where y no en el ON
Ya que pueden venir campos vacios con informacion que no nos interesa.
 */
