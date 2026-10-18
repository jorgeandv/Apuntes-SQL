--Es util para que al momento de consultar, la columna tenga el nombre que nosotros le pongamos y lo podamos entender mejor
--No estamos cambiando su nombre dentro de la base de datos, es solo para la consulta

--Muestra los datos de la columna name y de la columna init_date de la tabla users pero la columna init_date la muestra como 'fecha desde la que programa' 
SELECT name, init_date AS 'fecha desde la que programa' FROM users; 

--Muestra los datos de la columna name de la tabla users pero la columna name la muestra como 'nombre'
SELECT name AS 'nombre' FROM users;