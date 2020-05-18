-- UNIONES (UNION ALL)

select concat('Camisa de ',CAMISA) as PRENDA
 from CAMISAS
union all
 select concat('Pantalón de ',PANTALON)
 from PANTALONES

 /*
 Ejercicio 1
 Construya una consulta SQL que devuelva el peso medio de todas las mudas
 confeccionables entre camisas y pantalones. Modifique la consulta para obtener el
 mismo resultado entre camisas, pantalones y calzados.
 */
 Select avg(c.PESO_GR + p.pESO_GR) as Promedio
 fROM camisas C , pantalones P;
 -- 2
  Select avg(Z.peso_gr + c.PESO_GR + p.pESO_GR) AS Promedio
 fROM camisas C , pantalones P , Calzados Z;

/*
Ejercicio 2
Construya una consulta SQL que devuelva el peso medio de todas las mudas
confeccionables entre camisas y pantalones agrupado por camisa. Modifique la
consulta de manera que devuelva el mismo resultado pero solo muestre los grupos
cuyo peso medio sea superior a 850 gramos.
*/
-- 1
SELECT C.camisa, avg(c.PESO_GR + p.pESO_GR) as Promedio
FROM camisas C , pantalones P
GROUP BY c.camisa;

 -- 2
SELECT C.camisa, avg(c.PESO_GR + p.pESO_GR) as Promedio
FROM camisas C , pantalones P
GROUP BY c.camisa
Having promedio > 850;
/*
Ejercicio 3
Construya una consulta SQL que devuelva las combinaciones de las camisas con
los pantalones de manera que: la primera camisa se combine con todos los
pantalones menos con el primero, la segunda camisa se combine con todos los
pantalones menos con el segundo, y así sucesivamente.
*/
-- Mi solucion
select *
from CAMISAS C , PANTALONES P
where C.ID_CAMISA != P.ID_PANTALON;
/*
Ejercicio 4
Construya una consulta que devuelva la lista de prendas de una maleta que
contiene todas las camisas, pantalones y calzados.
*/
select concat('Camisa de ',CAMISA) as PRENDA
from CAMISAS
union all
select concat('Pantalón de ',PANTALON)
from PANTALONES
union all
select concat('Calzado: ',CALZADO)
from CALZADOS;
