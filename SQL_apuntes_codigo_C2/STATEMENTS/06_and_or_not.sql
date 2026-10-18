SELECT * FROM users WHERE name="Camila" AND age<30; --Muestra las filas de la tabla users donde name=Camila y age<30
SELECT name FROM users WHERE age<30 OR name="Jorge"; --Muestra los datos de la columna name de la tabla users donde age<30 o name=Jorge
SELECT age FROM users WHERE NOT name="Jorge"; --Muestra los datos de la columna edad de la tabla users donde no name=Jorge

--Combinando cosas
SELECT * FROM users WHERE NOT email LIKE "%@%"; --Muestra todas las filas de la tabla users donde el email no es ...@... (no tiene @)