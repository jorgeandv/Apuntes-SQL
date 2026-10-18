-- ALL: compara un valor con una lista que viene de una subconsulta.
-- "valor > ALL (lista)" es TRUE si el valor es mayor que TODOS los valores de la lista.
-- Equivale a: valor > v1 AND valor > v2 AND valor > v3 ...

-- Muestra los planetas cuya gravedad es mayor que la de TODOS los planetas con dist < 1.00,
-- ordenados del más lejano al más cercano
SELECT nombre
FROM Planeta P1
WHERE P1.grav > ALL
    ( SELECT P2.grav
      FROM Planeta P2
      WHERE P2.dist < 1.00 )
ORDER BY P1.dist DESC;