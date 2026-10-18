SELECT * FROM users WHERE age BETWEEN 10 and 23; --Muestra las filas de la tabla users donde la edad esta entre 10 y 23 (incluyendolos)
SELECT * FROM users WHERE age NOT BETWEEN 10 AND 12; --Muestra las filas de la tabla users donde la edad no esta entre 10 y 12 (incluyendolos)

--Combinando cosas
SELECT name FROM users WHERE age BETWEEN 10 AND 25 AND email LIKE "%jorge%%";  --Muestra los datos de la columna name de la tabla users donde la edad esta entre 10 y 25 (incluyendolos) y el email es jorge...