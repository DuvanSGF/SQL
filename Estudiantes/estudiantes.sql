CREATE TABLE student (
    student_id INT,
    name VARCHAR(100),
    major VARCHAR(100),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Duvan Mejia','Math');
INSERT INTO student VALUES(2, 'Maria Paula','Economist');
INSERT INTO student VALUES(3, 'Alejandra Rodriguez', "Chemistry"); -- Para saber los campos a los cuales vamos a ingresar datos
INSERT INTO student VALUES(4, 'Karla Mejia','Sociology');
INSERT INTO student VALUES(5, 'Kefla DBS','Artist');
SELECT * FROM student;
