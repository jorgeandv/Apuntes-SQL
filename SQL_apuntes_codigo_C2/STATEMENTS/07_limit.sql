--El LIMIT se puede usar al final de cualquier codigo
SELECT * FROM users LIMIT 2; --Muestra las primeras dos filas de la tabla users
SELECT name FROM users WHERE age<=30 LIMIT 3; --Muestra los primeros tres datos de la columna name de la tabla users donde age<=30