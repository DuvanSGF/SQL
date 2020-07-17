/*
La clave primaria de una tabla permite identificar registros de forma única, estas
pueden ser simples: de un solo campo, o bien compuestas: formadas por dos o más
campos. En cualquier caso los valores que toman estas claves no se pueden repetir
en dos o más registros de la tabla, puesto que se perdería la funcionalidad de
identificar un registro de forma única. De esto se encarga el SGBD si se ha
especificado debidamente qué campos son la clave primaria de la tabla.

Las claves foráneas de una tabla permiten establecer relaciones con otras tablas,
puesto que contienen valores que encontramos como clave primaria en la tabla con
la que se relaciona. Una clave foránea será simple o compuesta dependiendo de si
lo es la clave primaria de la tabla a la que apunta o hace referencia.

Si al diseñar una tabla el campo o campos que forman una clave foránea pueden
contener valores nulos, entonces el registro hijo puede no tener registro padre
asociado. Esto es muy común que ocurra cuando un registro se ha creado en
previsión y será en un futuro, después de que ocurra alguna cosa, que se le asignará
un padre. Por ejemplo, el curso sin profesor definido de la tabla CURSOS. El curso
está previsto que se imparta, pero no se ha decidido o no se conoce aún qué
profesor lo impartirá, de ahí que el campo ID_PROFE de dicho registro contenga un
valor nulo.

Las relaciones de 1 a N son quizás las que más se dan en una BD, en estos casos
siempre encontraremos la clave foránea en el registro hijo apuntando al registro
padre.

Las relaciones de N a M, entre por ejemplo dos tablas maestras, siempre
necesitarán una estructura auxiliar para establecer la relación. Esta tabla auxiliar se
denomina tabla de relación, y contendrá como mínimo los campos que son clave
primaria en ambos maestros. La clave primaria de la nueva tabla será siempre
compuesta y estará formada por todos estos campos que son clave primaria en los
maestros. A su vez estos campos por separado serán clave foránea de sus
respectivos maestros. Por tanto los registros hijos se hallarán en la tabla de relación.


El modo de obtener la reunión de tablas relacionadas es mediante filtros sobre el
producto cartesiano de dichas tablas, excluyendo con ayuda de la cláusula WHERE
aquellos registros del producto cartesiano que carecen de sentido y obteniendo los
que guardan una relación. Para ello debemos igualar la clave primaria de la tabla
padre con la clave foránea de la tabla hijo.

*/
