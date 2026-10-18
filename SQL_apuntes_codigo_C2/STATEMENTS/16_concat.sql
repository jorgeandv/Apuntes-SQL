--Es similar al alias en el sentido de que nos permite entender mejor las columnas
SELECT CONCAT(name, surname) FROM users; --Muestra los datos concatenados de las columnas name y surname de la tabla users
SELECT CONCAT(name,' ', surname) FROM users; --Muestra los datos concatenados de las columnas name, ' ' (espacio vacio), surname de la tabla users

--Combinacion god
--Muestra los datos concatenados de las columnas name, ' ' (espacio vacio), surname de la tabla users pero esta columna la muestra como 'Nombre y Apellido'
SELECT CONCAT(name,' ', surname) AS 'Nombre y Apellido' FROM users; 
