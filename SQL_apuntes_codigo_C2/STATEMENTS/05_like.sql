SELECT * FROM users WHERE email LIKE "%@gmail.com"; --Muestra las filas de la tabla users donde el email es ...@gmail.com
SELECT * FROM users WHERE email LIKE "jorge%"; --Muestra las filas de la tabla users donde el email es jorge...
SELECT name FROM users WHERE email LIKE "%@gmail.com"; --Muestra los datos de la columna name de la tabla users donde el email es ...@gmail.com
SELECT * FROM users WHERE email LIKE "%@%"; --Muestra las filas de la tabla users donde el email es ...@... (tiene el @)
