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

Ejercicio
Alumnos matriculados en cada curso con el nombre del curso , aunque estos sean cero:
*/
Select * from cursos;
 Select * from alumnos_cursos;

SELECT C.TITULO, COUNT(A.ID_ALUMNO) AS Estudiantes, count(1) REGISTROS
FROM Alumnos_cursos A -- Realmente cumple con la condicion pero hay Datos que no necesito, Para eso puedo resolverlo con un WHERE
RIGHT OUTER JOIN cursos C
ON A.ID_CURSO = C.ID_CURSO
GROUP BY C.titulo;

/*
Existen dos sintaxis para realizar las operaciones de reunión ya sea externa o
interna, dependiendo del SGBD. Basada en cláusula WHERE o bien basada en
cláusula INNER JOIN / OUTER JOIN. Lo ideal sería dejar a criterio del desarrollador
el uso de cualquiera de ellas siempre y cuando el SGBD lo soporte.
En una reunión externa debemos tratar siempre la tabla cuyos campos pueden venir
a nulo poniendo todos los campos que establecen condiciones de dicha tabla en la
cláusula ON del OUTER JOIN, si lo hacemos en la cláusula WHERE como filtro
corriente la reunión externa se rompe y carece de sentido.
*/
