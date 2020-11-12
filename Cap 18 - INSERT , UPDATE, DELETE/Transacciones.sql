/*
  TRANSACCIONES: COMMIT / ROLLBACK

  En los SGBD transaccionales, como por ejemplo Oracle, es necesario confirmar
  los cambios en la base de datos una vez realizados. Es comparable a cuando usted
  está modificando un documento; si no guarda los cambios estos no se
  reflejarán en el archivo del disco duro. En el ámbito de las bases de datos se
  pueden realizar varias operaciones de inserción, modificación o eliminación.

  En MySQL por defecto el SGBD se ejecuta en modo autocommit, por lo que
  cualquier cambio de la información se guarda automáticamente y de forma
  inmediata en la BD. Es posible trabajar en modo transaccional también si se
  configura el SGBD o bien, si especifica el inicio de la transacción con ayuda de la
  instrucción STAR TRANSACTION, la transacción finalizará al realizar un COMMIT
  confirmando los cambios, o bien ROLLBACK descartándolos.
*/
-- Esta es una transaccion en Mysql
START TRANSACTION;
delete from MASCOTAS
 where ESTADO = 'B';
COMMIT;

/*
Si el script o conjunto de instrucciones falla, se interrumpe su ejecución
y usted puede realizar un ROLLBACK para descartar los cambios que se hayan podido
realizar con anterioridad al error, analizar dónde está el problema, corregirlo, e intentar de
nuevo su ejecución.



COMMIT IMPLÍCITO EN INSTRUCCIONES DDL
Antes de acabar el capítulo es importante saber que las instrucciones DDL que se
explicaron en el capítulo anterior así como toda instrucción DDL, ejecutan un
COMMIT implícitamente. Esto se entiende del siguiente modo: para cambiar
aspectos de una BD, ya sea crear una nueva tabla, añadir una columna a una tabla
existente, crear un nuevo usuario, etc., es necesario que no haya una transacción
en curso. Por lo tanto, el SGBD antes de ejecutar una instrucción DDL valida los
cambios mediante un COMMIT y posteriormente ejecuta la instrucción DDL. Si
usted elimina registros de una tabla con la instrucción DELETE y posteriormente
añade una nueva columna a la tabla, por ejemplo, carece de sentido que acto
seguido realice un ROLLBACK para deshacer los registros eliminados, puesto que
el ALTER TABLE que ha usado para añadir la columna tiene un COMMIT implícito
y los cambios ya se han guardado en la BD.
*/

-- Ejempo de un ROLLBACK
--->Before making autocommit false one row added in a new table
mysql> INSERT INTO testTable VALUES (1);

--->Making autocommit = false
mysql> SET autocommit=0;

mysql> INSERT INTO testTable VALUES (2), (3);
mysql> SELECT * FROM testTable;
/*
+-----+
| tId |
+-----+
|   1 |
|   2 |
|   3 |
+-----+
*/
