
/*Se ejecuta primero lo del ()
1. La subconsulta (lo de adentro del paréntesis) busca en Planeta los nombres de los planetas
con gravedad mayor a 9.8 y devuelve una lista: (Júpiter, Neptuno)

2. Luego la consulta de afuera revisa Aterrizaje y se queda solo con las filas donde
el planeta está en esa lista (IN) Y además el año es mayor a 2000

Resultado: las naves que aterrizaron después del 2000 en planetas con gravedad > 9.8 (Galileo, Júpiter)
*/
SELECT nave, planeta
FROM Aterrizaje
WHERE planeta IN
    ( SELECT nombre
      FROM Planeta
      WHERE grav > 9.8 )
AND anio > 2000;

-- Lo mismo pero se queda con las filas donde el plantea no está en la lista
SELECT nave, planeta
FROM Aterrizaje
WHERE planeta NOT IN
    ( SELECT nombre
      FROM Planeta
      WHERE grav > 9.8 )
AND anio > 2000;
