-- Para saber las convinaciones posibres que son 3 * 2 = 6 combinaciones
SELECT * FROM camisas, pantalones;

/*
Al intervenir dos tablas en una consulta SQL, en la cláusula SELECT se pueden solicitar
datos de cualquiera de las dos tablas. En el ejemplo anterior se indica un asterisco, de
modo que el motor SQL devuelve todos los campos de la primera tabla, seguido de todos
los campos de la segunda tabla.
*/

-- Para eliminar las columnas que no interesan construimos la siguiente consulta SQL:
SELECT camisa, pantalon from camisas, pantalones;


/*
CAMPO AMBIGUO
La ambigüedad se da cuando en una consulta SQL de, por ejemplo, dos tablas, en
ambas existen uno o más campos con el mismo nombre, y estos campos aparecen
en cualquier cláusula de la consulta. Ningún SGBD es hasta ahora adivino, por lo
que si no le indicamos a cuál de las tablas pertenece el campo al que hacemos
mención, devolverá un error.



Ejercicio 1
¿qué mudas pueden confeccionarse con este vestuario y qué
pesa en conjunto cada muda, es decir, pantalón más camisa?

*/

SELECT camisa, pantalon, (camisas.peso_gr + pantalones.peso_gr) as PesoMuda
FROM camisas, pantalones;

-- 1.2 De esta forma mi experincia me ha llevado a Desarrollar:
-- Es similar a la consulta de Arriba
SELECT A.camisa, B.pantalon, (A.peso_gr + B.peso_gr) as PesoMuda
FROM camisas A, pantalones B;
-- or con la funcion AS
SELECT A.camisa, B.pantalon, (A.peso_gr + B.peso_gr) as PesoMuda
FROM camisas AS A, pantalones AS B;
-- No es obligatoria colocar el AS el SGBD entiende el renombrado como la consulta 1.2

-- Realizamos el Ejercicio anterior con las tres tablas
select C.CAMISA , P.PANTALON , Z.CALZADO ,
C.PESO_GR + P.PESO_GR + Z.PESO_GR as PESO_MUDA
 from CAMISAS C , PANTALONES P , CALZADOS Z
 order by C.ID_CAMISA , P.ID_PANTALON , Z.ID_CALZADO;


-- Una forma con descripcion
select concat('Camisa de ' , C.CAMISA ,
' con pantalón de ' , P.PANTALON ,
' y ' , Z.CALZADO) as MUDA ,
C.PESO_GR + P.PESO_GR + Z.PESO_GR PESO_MUDA
 from CAMISAS C , PANTALONES P , CALZADOS Z
 order by C.ID_CAMISA , P.ID_PANTALON , Z.ID_CALZADO

/*
 Ejercicio 2
Realice una consulta que devuelva las combinaciones posibles
entre los pantalones y los calzados, sin más columnas que la
descripción de cada prenda. Use alias de la tabla para indicar
a qué tabla pertenece cada campo de la cláusula SELECT.
*/

select concat(' Pantalón de ' , P.PANTALON ,
' y calzado ' , Z.CALZADO) as MUDA
 from PANTALONES P , CALZADOS Z;

/*
 Ejercicio 3
Si en una BD existe una tabla T1 con 4 campos y 12 registros, y una tabla T2 con 7
campos y 10 registros, ¿cuántas filas y columnas devolvería la siguiente consulta?
*/
-- Solucion
--filas = 12 x 10 = 120
--columnas = 4 + 7 = 11 
