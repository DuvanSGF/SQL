/*
La instrucción INSERT permite crear o insertar nuevos registros en una tabla,
veamos su sintaxis con un ejemplo práctico: la inserción de un registro en la tabla
ALUMNOS.
*/

insert into ALUMNOS
(ID_ALUMNO , NOMBRE , APELLIDOS , F_NACIMIENTO)
values
(1 , 'Pablo' , 'Hernándaz Mata' , '1995-03-14')

/*
UPDATE SQL
La instrucción UPDATE permite actualizar registros de una tabla. Debemos por lo
tanto indicar qué registros se quieren actualizar mediante la cláusula WHERE, y qué
campos mediante la cláusula SET.
*/
update CURSOS
 set ID_PROFE = 2
 where ID_CURSO = 5;

/*
Vamos a relizar un ejemplo

En ella se guardan los datos de cada empleado, el
sueldo y también se guarda en el campo PRECIO_HORA el precio de la hora
extra que cobra cada empleado en el caso que las trabaje. Así,con el cambio de
ejercicio se deben subir los sueldos y el precio por hora extra trabajada, digamos
que un 2 % el sueldo y un 1 % el precio de la hora extra.

*/

-- Muy importe este ejercicio para los porcentajes.
update EMPLEA2
 set SALARIO = SALARIO * 1.02,
PRECIO_HORA = PRECIO_HORA * 1.01
 where SALARIO < 3000

-- Por tanto solo se está actualizando el salario y el precio de la hora extra de aquellos
-- empleados que su salario es inferior a 3000 euros.
