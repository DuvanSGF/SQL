use pruebasql;

# Creamos la tabla camisa
CREATE TABLE camisas (
    id_camisa INT,
    camisa VARCHAR(100),
    peso_gr VARCHAR(100)
);

INSERT INTO camisas VALUES(1, 'Lino blanca','210');
INSERT INTO camisas VALUES(2, 'algodon naranja','290');
INSERT INTO camisas VALUES(3, 'seda negra', '260');

SELECT * FROM camisas;

# Ahora creamos la tabla pantalones
CREATE TABLE pantalones (
    id_pantalon INT,
    pantalon VARCHAR(100),
    peso_gr VARCHAR(100)
);

INSERT INTO pantalones VALUES(1,'tela azul marino','470');
INSERT INTO pantalones VALUES(2,'pana marron claro','730');

SELECT * FROM pantalones;

# Ahora creamos la Tabla calzados
CREATE TABLE calzados (
    id_calzado INT,
    calzado VARCHAR(100),
    peso_gr VARCHAR(100)
);

INSERT INTO calzados VALUES(1,'deportivas','675');
INSERT INTO calzados VALUES(2,'mocasines','800');
INSERT INTO calzados VALUES(2,'botas','1050');

SELECT * FROM calzados;
