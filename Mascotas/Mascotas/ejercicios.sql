-- Cunatos perros y gatos han paso por el centro.
Select especie, count(*) as Retirados from mascotas where estado = 'B' group by especie;
-- Cuantos perros macho hay en el centro
SELECT ubicacion, count(*) as perros_macho from mascotas where estado = 'A' AND especie = 'P' AND SEXO = 'M' Group BY ubicacion;
-- Distinct
SELECT DISTINCT especie, ubicacion from mascotas Where estado = 'A';
-- 
