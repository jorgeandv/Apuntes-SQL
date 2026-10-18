/* Se usa el concepto de correlación, el cual es que la subconsulta de dentro del exists usa un valor de afuera de la subconsulta,
por eso es buena práctica poner alias a las tablas
*/

/* Las columnas del select se mostrarán en filas, para cada fila se hace la pregunta ¿la subconsulta devuelve al menos una fila?
(recordar la correlación)
*Si devuelve alguna fila -> TRUE, la fila de la consulta de afuera se queda
*Si no devuelve ninguna  -> FALSE, la fila se descarta
*/

-- Muestra los planetas y su distancia a los que llegó alguna nave en el año 2000 o después,
-- ordenados del más lejano al más cercano
SELECT P.nombre, P.dist
FROM Planeta P
WHERE EXISTS
    ( SELECT *
      FROM Aterrizaje A
      WHERE A.anio >= 2000 AND P.nombre = A.planeta )   -- La correlación está con el P.nombre
ORDER BY P.dist DESC;


-- Muestra los planetas a los que NO ha llegado ninguna nave en el año 2000 o después
SELECT P.nombre, P.dist
FROM Planeta P
WHERE NOT EXISTS
    ( SELECT *
      FROM Aterrizaje A
      WHERE A.anio >= 2000 AND P.nombre = A.planeta )
ORDER BY P.dist DESC;