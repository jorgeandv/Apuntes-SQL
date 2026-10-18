-- Es lo mismo que ROW_NUMBER pero RANK si respeta los empates.
-- Esto pues ROW_NUMBER() siempre da números distintos (1,2,3,...) aunque dos filas empaten
-- Mientras que RANK() da el mismo número a las filas empatadas
/*
La forma de usarlo es 
SELECT * FROM (
    SELECT *, RANK() OVER (ORDER BY ...) AS rnk
    FROM tabla
) AS alias
WHERE rnk <= n;

Donde MySQL, toma la tabla y la ordena segun el OVER (ORDER BY ...) y le agrega una columna nueva con el nombre de rnk donde sus datos
son el orden en números 1,2,3,...

Luego, toma la tabla ya numerada y se queda solo con las filas donde rnk<=n

Notese que el alias no se usa para nada
*/

SELECT * FROM (
    SELECT *, RANK() OVER (ORDER BY age) AS rnk
    FROM users
) AS t
WHERE rnk <= 3;