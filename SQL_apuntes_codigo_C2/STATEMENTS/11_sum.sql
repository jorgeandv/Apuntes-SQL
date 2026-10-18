SELECT SUM(age) FROM users; --Suma los datos de la columna age de la tabla users

--Combinando cosas
SELECT SUM(users_id) FROM users WHERE email LIKE "%@gmail.com"; --Suma los datos de la columna id de la tabla users donde email es ...@gmail.com