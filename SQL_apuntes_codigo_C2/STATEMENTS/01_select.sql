-- Active: 1790980359847@@127.0.0.1@3306@hello_mysql
SELECT * FROM users;  --Muestra todos los datos de la tabla users (users es la llave primaria de la tabla)
SELECT name FROM users; --Muestra todos los datos de la columna name de la tabla users
SELECT users_id, name FROM users; --Muestra todos los datos de la columna users_id y de la columna name de la tabla users

--SELECT muestra filas duplicadas