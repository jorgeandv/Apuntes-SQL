--Se usa para agrupar filas que tienen el mismo valor en una o mas columnas y aplicar funciones como COUNT(), SUM(), AVG(), MAX(), MIN()
--a cada grupo por separado en vez de a toda la tabla

--La columna o las columnas que en el SELECT no tienen una funcion deben estar si o si en el GROUP BY

--Agrupa las filas de la tabla users por name, y luego muestra el dato de la columna name junto con el dato de la columna AVG(age)
SELECT name, AVG(age) FROM users GROUP BY name; 


SELECT name, COUNT(name) AS 'cantidad', AVG(age) AS 'edad promedio' FROM users GROUP BY name; 
--Como agrupe por nombre, el COUNT(), AVG() no se hace sobre toda la tabla sino por cada nombre

--Combinando cosas
SELECT age, COUNT(age) FROM users WHERE age>15 GROUP BY age ORDER BY age;

--GROUP BY colapsa filas! (igual que DISTINCT)