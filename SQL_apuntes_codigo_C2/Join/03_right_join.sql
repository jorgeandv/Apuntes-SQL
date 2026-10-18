-- No es común usarlo, es más común usar LEFT JOIN

-- RIGHT JOIN devuelve TODAS las filas de la tabla de la derecha (la que va después del JOIN),
-- y le agrega los datos de la tabla de la izquierda (la que va en el RIGHT JOIN) cuando hay coincidencia (según la condición del ON)
-- Si no hay coincidencia, las columnas de la tabla izquierda vienen como NULL
-- (también se puede escribir RIGHT OUTER JOIN, es lo mismo)


-- Es el espejo del LEFT JOIN: la tabla que "manda" ahora es la de la derecha


-- Ej de 1:1
-- Muestra todos los dni, tengan o no un usuario asociado
SELECT users.name AS usuario, dni.dni_number AS dni
FROM users
RIGHT JOIN dni
    ON users.users_id = dni.users_users_id;


-- Ej de 1:N
-- Muestra todas las empresas con sus usuarios.
-- Las empresas sin usuarios aparecen con usuario = NULL,
-- y los usuarios sin empresa no aparecen (la tabla protegida es company, la de la derecha)
SELECT users.name AS usuario, company.name AS empresa
FROM users
RIGHT JOIN company
    ON users.company_company_id = company.company_id;

-- Este RIGHT JOIN da el mismo resultado que este LEFT JOIN (solo cambia el orden de las tablas)
SELECT users.name AS usuario, company.name AS empresa
FROM company
LEFT JOIN users
    ON users.company_company_id = company.company_id;


-- Caso típico: encontrar filas SIN coincidencia
-- Muestra solo las empresas que no tienen ningún usuario
SELECT company.name AS empresa
FROM users
RIGHT JOIN company
    ON users.company_company_id = company.company_id
WHERE users.users_id IS NULL;

