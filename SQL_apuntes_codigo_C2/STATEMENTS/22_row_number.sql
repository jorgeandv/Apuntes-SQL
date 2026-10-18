/*
La forma de usarlo es 
SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY ...) AS fila
    FROM tabla
) AS alias
WHERE fila <= n;

Donde MySQL, toma la tabla y la ordena segun el OVER (ORDER BY ...) y le agrega una columna nueva con el nombre de fila donde sus datos
son el orden en números 1,2,3,...

Luego, toma la tabla ya numerada y se queda solo con las filas donde fila<=n

Notese que el alias no se usa para nada
*/

SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY age) AS fila
    FROM users
) AS t
WHERE fila <= 3;