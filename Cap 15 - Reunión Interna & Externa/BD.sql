-- Creacion de la Tabla Cursos
Create Table cursos (
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
