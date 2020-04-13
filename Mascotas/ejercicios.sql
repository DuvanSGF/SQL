-- Cunatos perros y gatos han paso por el centro.
Select especie, count(*) as Retirados from mascotas where estado = 'B' group by especie;
-- Cuantos perros macho hay en el centro
SELECT ubicacion, count(*) as perros_macho from mascotas where estado = 'A' AND especie = 'P' AND SEXO = 'M' Group BY ubicacion;
-- Distinct
SELECT DISTINCT especie, ubicacion from mascotas Where estado = 'A';

/*Obtenga el número actual de ejemplares de cada ubicación del centro de mascotas,
que tengan dos o más ejemplares ordenado de mayor a menor por número de
ejemplares y en segundo término por ubicación.

SOLUCION
*/
SELECT ubicacion, COUNT(*) AS ejemplares FROM mascotas WHERE estado = 'A' GROUP BY ubicacion  Having COUNT(*) > 1 ORDER BY count(*) DESC ;
