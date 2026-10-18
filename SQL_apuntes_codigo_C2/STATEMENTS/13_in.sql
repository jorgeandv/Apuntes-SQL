--Es mas efectivo que usar varios OR
SELECT * FROM users WHERE name IN ("Jorge"); --Muestra las filas de la tabla users donde el nombre es Jorge 
SELECT * FROM users WHERE name IN ("Jorge","Camila");  --Muestra las filas de la tabla users donde el nombre es Jorge o Camila
SELECT name FROM users WHERE age IN (21);  --Muestra los datos de la columna name de la tabla users donde la edad es 21