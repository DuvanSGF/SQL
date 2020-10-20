-- Creacion de la Tabla Cursos
CREATE TABLE cursos (
ID_CURSO int,
TITULO	Varchar(100),
ID_PROFE int
);

-- Insertamos los Datos
INSERT INTO cursos VALUES (1, "Programación PHP", 3);
INSERT INTO cursos VALUES (2, "Modelos abstracto de datos", 3);
INSERT INTO cursos VALUES (3, "SQL desde cero", 1);
INSERT INTO cursos VALUES (4, "Dibujo técnico", 2);
INSERT INTO cursos VALUES (5, "SQL avanzado", null);

-- Verificamos que la tabla este correcta.
SELECT * FROM cursos;


-- Creación de la tabla Alumnos
CREATE TABLE alumnos (
  ID_ALUMNO int,
  NOMBRE Varchar(100),
  APELLIDOS Varchar(100),
  F_NACIMIENTO Varchar(100)
);

-- Insertamos los Datos
INSERT INTO alumnos VALUES (1, "Pablo",	"Hernandaz Mata",	"1995-03-14");
INSERT INTO alumnos VALUES (2, "Jeremias", "Santo Lote", "1993-07-12");
INSERT INTO alumnos VALUES (3, "Teresa", "Lomas Trillo", "1989-06-19");
INSERT INTO alumnos VALUES (4, "Marta",	"Fuego García",	"1992-11-23");
INSERT INTO alumnos VALUES (5, "Sergio", "Ot Dirmet",	"1991-04-21");
INSERT INTO alumnos VALUES (6, "Carmen",	"Dilma Perna", "1987-12-04");

-- Verificamos que la tabla este correcta.
SELECT * FROM alumnos;

-- Creación de la tabla profesores
CREATE TABLE profesores (
  ID_PROFE int,
  NOMBRE varchar(100),
  APELLIDOS varchar(100),
  F_NACIMIENTO Varchar(100)
);

-- Insertamos los Datos
INSERT INTO profesores VALUES (1, "Federico",	"Gasco Daza",	"1975-04-23");
INSERT INTO profesores VALUES (2, "Ana", "Saura Trenzo", "1969-08-02");
INSERT INTO profesores VALUES (3, "Rosa",	"Honrosa Pérez",	"1980-09-05");
INSERT INTO profesores VALUES (4, "Carlos",	"García Martínez", "1985-05-24");

-- Verificamos que la tabla este correcta.
SELECT * FROM profesores;
