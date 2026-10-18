-- Es hacer un LIMIT pero antes saltando una cierta cantidad de filas (útil para la paginación)

-- Se salta la primera fila y devuelve las 3 siguientes filas de la tabla users luego de ordenarlas por age de 
-- forma descendente (si hay empate se desempata por name)
SELECT *
FROM users
ORDER BY age DESC, name
LIMIT 3 OFFSET 1;