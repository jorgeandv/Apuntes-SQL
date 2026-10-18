SELECT * FROM users ORDER BY age --Muestra las filas de la tabla users ordenadas por edad (de menor a mayor)
SELECT * FROM users ORDER BY age DESC --Muestra las filas de la tabla users ordenadas por edad (de mayor a menor)
SELECT name FROM users ORDER BY age --Muestra los datos de la columna name de la tabla users ordenados por edad (de menor a mayor)

--Combinando cosas
SELECT name FROM users WHERE name="Camila" ORDER BY age  --Muestra los datos de la columna name de la tabla users donde name=Camila ordenados por edad (de menor a mayor)


--Esto no funciona
SELECT DISTINCT name FROM users WHERE name="Camila" ORDER BY age 
--No funciona porque el DISTINCT name fusiona las filas duplicadas en una sola fila asi que no sabe con que edad de las filas originales quedarse
--asi que no puede ordenar por edad
