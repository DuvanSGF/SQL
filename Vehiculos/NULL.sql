use pruebasql;


/* 
NULL
Este operador permite establecer en la cláusula WHERE de una consulta SQL
condiciones para filtrar por campos de valor nulo, por ejemplo: ¿qué vehículos nunca
han pasado la ITV? 
*/

select * from vehiculos where ultima_ITV is null ;

-- Los que no 

select * from vehiculos where ultima_ITV is not null ;

/*
Veamos una muestra de ello. La siguiente consulta SQL devuelve los vehículos
que pasaron la ITV durante el año 2008: 
*/

select * from vehiculos where ultima_itv BETWEEN '2008-01-01' And '2008-12-31';

/*
Es de esperar entonces que al negar la cláusula WHERE obtengamos todos los
registros menos el Seat Panda: 
*/

select * from vehiculos where ultima_itv  NOT BETWEEN '2008-01-01' And '2008-12-31';
-- Esta forma es la mas Optimizada y puede ser la mas correcta
SELECT 
    *
FROM
    vehiculos
WHERE
    NOT (ultima_itv BETWEEN '2008-01-01' AND '2008-12-31');
-- El rsultado es el mismo

/*Veamos que los datos con null fueron ignorados y ellos tampoco han presentado la prueba , asi que debemos tener mucho cuidado
y realizar una consulta que nos devuelva los datos que necesitamos: Como el query siguiente */

 SELECT 
    *
FROM
    vehiculos
WHERE
    NOT (ultima_itv BETWEEN '2008-01-01' AND '2008-12-31') or ultima_itv is null;



/*
Para saber qué campos de una tabla pueden tomar valores nulos, se puede pedir
al SGDB una descripción de la tabla:
*/

desc VEHICULOS;


-- COUNT

select count(*) , count(vehiculos_id) , count(ULTIMA_ITV)
 from VEHICULOS ;

-- Contemos los null
select count(*) as VehiculosNUll
 from VEHICULOS WHERE ultima_itv is null ;
 
 -- Busquemos los vehiculos que sean FORD con el filtro OR
Select * from vehiculos where marca Like '%ord%';

Select * from vehiculos;

/*
Ejercicio 2
Considerando que en la tabla VEHICULOS el campo PROX_ITV guarda la fecha de
la próxima ITV que ha de pasar cada vehículo:
¿Qué vehículos que nunca han pasado la ITV deben pasar la primera revisión
durante el año 2011? 
*/

SELECT * FROM vehiculos WHERE  prox_itv BETWEEN '2011-01-12' AND '2011-12-31' AND ultima_itv is null;





