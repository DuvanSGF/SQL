use pruebasql;

CREATE TABLE camisas (
    id_camisa INT,
    camisa VARCHAR(100),
    peso_gr VARCHAR(100)
);

INSERT INTO camisas VALUES(1, 'Lino blanca','210');
INSERT INTO camisas VALUES(2, 'algodon naranja','290');
INSERT INTO camisas VALUES(3, 'seda negra', '260');

SELECT * FROM camisas;
