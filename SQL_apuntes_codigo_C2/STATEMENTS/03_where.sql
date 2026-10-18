--Asi funcionan los filtros de mercado libre

SELECT * FROM users WHERE age=21; --Muestra las filas de la tabla users donde la columna age=21

SELECT name FROM users WHERE age<15; --Muestra los datos de la columna name de la tabla users donde age<15

SELECT DISTINCT name FROM users WHERE age>15; --Muestra los datos de la columna name de la tabla users que son distintos entre si donde age>15

SELECT DISTINCT age from users WHERE age==10; --Muestra los datos de la columna age de la tabla users que son distintos entre si donde age==10