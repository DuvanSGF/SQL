select C.ID_CAMISA , C.CAMISA , C.PESO_GR as PESO_CAMISA ,
P.ID_PANTALON , P.PANTALON ,
P.PESO_GR as PESO_PANTALON
 from CAMISAS C , PANTALONES P
 Where C.ID_Camisa = 1;
 -- Version Simplificada

 select *
 from CAMISAS , PANTALONES
 where ID_CAMISA = 1;

 -- ¿Cuántas mudas se pueden confeccionar con las camisas y pantalones?
 select count(*) as COMBINACIONES
 from CAMISAS , PANTALONES;


-- Igual identif

Select * from Camisas, pantalones
Where Id_camisa = Id_pantalon;
-- Tambien podmeos sacara esta consulta atravez de un Inner Join
