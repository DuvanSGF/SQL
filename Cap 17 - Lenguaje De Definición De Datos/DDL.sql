/*
LENGUAJE DE DEFINICIÓN DE DATOS (DDL)
El lenguaje de definición de datos (Data Definition Language, DDL por sus siglas en
inglés) es el lenguaje que los SGBD proporcionan para que los usuarios puedan
definir las estructuras de datos dentro de una BD. Para ilustrar este recurso se
construirán las instrucciones que permiten crear el modelo de datos de la academia
visto en capítulos anteriores.

*/

-- EJEMPLOS
 Create database ACADEMIA;

 /*

Alter

Esta instrucción permite modificar las características de una tabla, por ejemplo para
definir restricciones: clave primaria y claves foráneas, así como añadir columnas o
eliminarlas, etc.
*/
alter table ALUMNOS add primary key (ID_ALUMNO);
alter table PROFESORES add primary key (ID_PROFE);
alter table CURSOS add primary key (ID_CURSO);
alter table ALUMNOS_CURSOS add primary key (ID_ALUMNO, ID_CURSO);
-- Claves Foraneas
alter table CURSOS add constraint CURSOS_ID_PROFE_FK foreign key (ID_PROFE) references PROFESORES (ID_PROFE);
alter table ALUMNOS_CURSOS add constraint ALUMNOS_CURSOS_ID_ALUMNO_FK foreign key (ID_ALUMNO) references ALUMNOS (ID_ALUMNO);
alter table ALUMNOS_CURSOS add constraint ALUMNOS_CURSOS_ID_CURSO_FK foreign key (ID_CURSO) references CURSOS (ID_CURSO);

-- Podemoa Cambiar el tipo de valor de una columnasalter table ALUMNOS_CURSOS drop column NOTA;
alter table ALUMNOS_CURSOS add (NOTA float); -- Con ello ahora la columna NOTA es de tipo FLOAT lo que permite contener valores numéricos con parte decimal.

/*

CAMPOS CHECK
En los campos codificados tales como el campo SEXO de la tabla EMPLEADOS,
es posible crear una constraint o restricción que límite los valores posibles que ese
campo puede contener a una lista cerrada o dominio. En el caso del campo SEXO
los valores posibles son dos: H y M, que codifican hombre y mujer respectivamente.
Para restringir este campo a estos dos valores posibles construimos la siguiente
instrucción DDL
*/
alter table EMPLEADOS add constraint EMPLEADOS_SEXO_CK
check( SEXO in ('H', 'M'));

/*

ELIMINAR CLAVES

Si ahora se quisiera tirar atrás una clave primaria que está referenciada, primero se
debe eliminar sus referencias, es decir, las claves foráneas, y después eliminar su
clave primaria.
*/
-- Así

alter table CURSOS drop foreign key CURSOS_ID_PROFE_FK;
-- Ahora ya es posible eliminar la clave primaria:
alter table PROFESORES drop primary key;



/*

ÍNDICES
Los índices permiten al SGBD agilizar las búsquedas cuando en la cláusula WHERE
de una consulta se filtra por el campo o campos que componen el índice. La mera
creación de un índice es en ocasiones la solución a una consulta que presenta un
mal rendimiento.
*/

-- Veamos cómo crear un índice en la tabla CURSOS para el campo ID_PROFE.
create index CURSOS_ID_PROFE_INX on CURSOS (ID_PROFE);

/*
Si usted realiza una consulta sobre la tabla CURSOS filtrando por el campo
ID_PROFE, el SGBD usará el índice que se acaba de crear para recuperar los
registros con unos pocos accesos, a diferencia de si no lo tuviese, que se vería
obligado a recorrer toda la tabla, registro a registro, para determinar si cumple la
condición de la cláusula WHERE.

Si se determina que un profesor no puede impartir más de un curso, y además se
quiere restringir en la base de datos, usted puede crear un índice que no permita
valores repetidos con la siguiente instrucción:

*/

create unique index CURSOS_ID_PROFE_INX on CURSOS (ID_PROFE);

-- Con esta restricción definida en la BD, el SGBD no permitirá que dos o más registros
-- contengan el mismo dato en el campo ID_PROFE.
