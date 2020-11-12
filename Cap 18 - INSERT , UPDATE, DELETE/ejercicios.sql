/*
Ejercicio 2
En este capítulo se puso como ejemplo la actualización del salario de la tabla
EMPLEA2 donde este se incrementaba un 2 % para empleados con un sueldo
inferior a 3000 euros. Sin embargo, no parece muy justo que un empleado con un
sueldo de 3000 euros no reciba incremento alguno, y otros que rozan los 3000 euros
pero no llegan reciban el incremento superando el importe de corte una vez aplicado
dicho incremento. Construya una instrucción de actualización, que se debería
ejecutar previamente a la actualización de sueldos, de modo que evite que para
estos empleados el sueldo tras el incremento sea superior a 3000 euros. Para ello
la instrucción que se le pide debe actualizar el salario de los empleados afectados
a 3000 euros, para que cuando se realice el incremento no se les aplique la subida
puesto que su sueldo será entones de 3000 euros justos.
*/
-- SOLUCION
update EMPLEA2
 set SALARIO = 3000
 where SALARIO < 3000
 and SALARIO * 1.02 > 3000
