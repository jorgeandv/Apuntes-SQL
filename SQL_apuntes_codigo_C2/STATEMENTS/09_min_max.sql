--MAX() y MIN() se usa solo para encontrar el dato especifico, no para saber el resto de la fila de ese dato especifico
SELECT MAX(age) FROM users; --Muestra el maximo dato de la columna age de la tabla users
SELECT MIN(users_id) FROM users; --Muestra el minimo dato de la columna users_id de la tabla users
SELECT MIN(users_id),MAX(age) FROM users; --Muestra el minimo dato de la columa users_id y el maximo dato de la columna age de la tabla users