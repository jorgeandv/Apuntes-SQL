-- ANY (o SOME, son sinónimos): compara un valor con una lista que viene de una subconsulta
-- "valor > ANY (lista)" es TRUE si el valor es mayor que AL MENOS UNO de los valores de la lista

-- Muestra los planetas cuya gravedad es mayor que la de ALGÚN planeta con dist > 1.00,
-- ordenados del más lejano al más cercano
SELECT nombre
FROM Planeta P1
WHERE P1.grav > ANY
    ( SELECT P2.grav
      FROM Planeta P2
      WHERE P2.dist > 1.00 )
ORDER BY P1.dist DESC;