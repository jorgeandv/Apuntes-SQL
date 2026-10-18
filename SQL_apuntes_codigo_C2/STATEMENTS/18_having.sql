SELECT COUNT(*) FROM users HAVING COUNT(*) > 5; --Muestra el numero de filas que hay en la tabla usuarios si es que ese numero es mayor a 5
--Sin GROUP BY, MySQL trata a toda la tabla como un único grupo

--Agrupa las filas de la tabla users por nombre, y luego para los COUNT(*)>1 muestra los datos de la columna name y de la columna COUNT(*)
SELECT name, COUNT(*) FROM users GROUP BY name HAVING COUNT(*) > 1;
--Como agrupe por nombre, COUNT(*) no cuenta el numero de filas de la tabla sino el numero de filas por nombre 

--Se suele usar con GROUP BY y es como el WHERE del GROUP BY