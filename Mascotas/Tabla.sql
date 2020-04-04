DROP TABLE IF EXISTS mascotas;
CREATE TABLE mascotas (
identif int,
nombre varchar(100) DEFAULT NULL,
especie varchar(100) DEFAULT NULL,
sexo varchar(100) DEFAULT NULL,
ubicacion varchar(100) DEFAULT NULL,
estado varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT = FIXED;
CREATE INDEX idx
  ON mascotas(identif);


  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (1, 'Budy', 'P', 'M', 'E05', 'B');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (2, 'Pipo', 'P', 'M', 'E02', 'B');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (3, 'Nuna', 'P', 'H', 'E02', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (4, 'Bruts', 'P', 'M', 'E03', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (5, 'Americo', 'G', 'M', 'E04', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (6, 'Sombra', 'P', 'H', 'E05', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (7, 'Amaya', 'G', 'H', 'E04', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (8, 'Talia', 'G', 'H', 'E01', 'B');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (9, 'Trabis', 'P', 'M', 'E02', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (10, 'Tesa', 'G', 'H', 'E01', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (11, 'Titito', 'G', 'M', 'E04', 'B');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (12, 'Truca', 'P', 'H', 'E02', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (13, 'Zulay', 'P', 'H', 'E05', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (14, 'Dandi', 'G', 'M', 'E04', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (15, 'Ras', 'G', 'M', 'E01', 'A');
  INSERT INTO mascotas(identif, nombre, especie, sexo, ubicacion, estado ) VALUES (16, 'Canela', 'P', 'H', 'E02', 'A');
