CREATE TABLE vehiculos (
    vehiculos_id INT,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    prox_itv VARCHAR(100),
    ultima_itv VARCHAR(100)
);

INSERT INTO vehiculos VALUES(1, 'Alfa Romeo','Brera', '2011-10-20',null);
INSERT INTO vehiculos VALUES(2, 'Seat','Panda', '2019-12-01','2008-12-01');
INSERT INTO vehiculos VALUES(3, 'BMW', 'X3', '2010-07-18', null); -- Para saber los campos a los cuales vamos a ingresar datos
INSERT INTO vehiculos VALUES(4, 'Citroën', 'C2', '2010-08-24', '2009-08-24');
INSERT INTO vehiculos VALUES(5, 'Ford', 'Fiesta', '2011-04-22', null);
SELECT * FROM vehiculos;
