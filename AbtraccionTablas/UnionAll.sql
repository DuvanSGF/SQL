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
