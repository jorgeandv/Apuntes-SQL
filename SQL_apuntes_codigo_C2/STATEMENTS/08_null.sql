SELECT * FROM users WHERE email IS NULL; --Muestra las filas de la tabla users donde email es NULL
SELECT * FROM users WHERE email IS NOT NULL; --Muestra las filas de la tabla suers donde email no es NULL

--Combinando cosas
SELECT name FROM users WHERE email IS NOT NULL and age<25; --Muestra los datos de la columna name de la tabla usuarios donde el email no es nulo y age<25