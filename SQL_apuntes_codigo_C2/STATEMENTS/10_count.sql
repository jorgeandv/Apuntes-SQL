SELECT COUNT(*) FROM users; -- Cuenta el numero de filas de la tabla users
SELECT COUNT(email) FROM users; --Cuenta el numero de datos de la columna email de la tabla users (los datos NULL cuentan 0)

--Combinando cosas
SELECT COUNT(email) FROM users WHERE age<20; --Cuenta el numero de datos de la columna email de la tabla users donde age<20
SELECT COUNT(email) FROM users WHERE email LIKE "jorge%"; --Cuenta el numero de datos de la columna email de la tabla users donde email es jorge...