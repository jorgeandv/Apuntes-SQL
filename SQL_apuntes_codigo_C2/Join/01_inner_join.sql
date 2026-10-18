-- INNER JOIN devuelve SOLO las filas que tienen coincidencia en AMBAS tablas (según la condición del ON).
-- Las filas de cualquiera de las dos tablas que no tengan coincidencia NO aparecen en el resultado.
-- (también se puede escribir solo JOIN, es lo mismo)

-- Ej de 1:1 
-- Muestra cada usuario con su respectivo dni
SELECT users.name AS usuario, dni.dni_number as dni
FROM users
INNER JOIN dni
    ON users.users_id = dni.users_users_id;

-- Ej de 1:N
-- Muestra los datos de la columna name de la tabla users (usuario) y de la columna name de la tabla company (empresa) donde
-- company_company_id de la tabla users es igual al company_id de la tabla company
-- Se termina mostrando el nombre del usuario con el nombre de su respectiva compañia
SELECT users.name AS usuario, company.name AS empresa
FROM users
INNER JOIN company
    ON users.company_company_id = company.company_id;

-- Da el mismo resultado anterior
SELECT users.name AS usuario, company.name AS empresa
FROM company
INNER JOIN users
    ON users.company_company_id = company.company_id;


-- Combinando con otras cosas
SELECT users.name AS usuario, company.name AS empresa
FROM users 
INNER JOIN company
    ON users.company_company_id = company.company_id
WHERE company.name = 'Mi empresa'
ORDER BY users.name ASC
LIMIT 2;

-- Muestra todas las filas de la tabla users y de la tabla company donde company_company_id de la tabla users es igual al company_id de la tabla company
SELECT * 
FROM users
INNER JOIN company
    ON users.company_company_id = company.company_id;