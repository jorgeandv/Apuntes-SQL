-- LEFT JOIN devuelve TODAS las filas de la tabla de la izquierda (la que va en el FROM),
-- y le agrega los datos de la tabla de la derecha (la que va en el LEFT JOIN) cuando hay coincidencia (según la condición del ON)
-- Si no hay coincidencia, las columnas de la tabla derecha quedan como NULL
-- Ojo, los NULL de la tabla de la izquierda no aparecen
-- (también se puede escribir LEFT OUTER JOIN, es lo mismo)


-- Ej de 1:1
-- Muestra todos los usuarios, tengan o no dni registrado
SELECT users.name AS usuario, dni.dni_number AS dni
FROM users
LEFT JOIN dni
    ON users.users_id = dni.users_users_id;

    
-- Ej de 1:N
-- Muestra todos los usuarios con el nombre de su empresa.
-- Si un usuario no tiene empresa (company_company_id es NULL), igual aparece, con empresa = NULL
SELECT users.name AS usuario, company.name AS empresa
FROM users
LEFT JOIN company
    ON users.company_company_id = company.company_id;


-- Diferencia con INNER JOIN:
-- INNER JOIN -> los usuarios sin empresa NO aparecen
-- LEFT JOIN  -> los usuarios sin empresa SÍ aparecen (con NULL en empresa)


-- Aquí el ORDEN DE LAS TABLAS SÍ IMPORTA
-- Muestra todas las empresas con sus usuarios.
-- Las empresas sin usuarios aparecen con usuario = NULL,
SELECT company.name AS empresa, users.name AS usuario
FROM company
LEFT JOIN users
    ON users.company_company_id = company.company_id;

-- Combinando cosas V1
-- Recordar "Orden de pensamiento de SQL"
SELECT users.name AS usuario, company.name AS empresa
FROM users
LEFT JOIN company
    ON users.company_company_id = company.company_id
WHERE company.name = 'Mi empresa';


-- Combinando cosas V2
-- Recordar "Orden de pensamiento de SQL", el AND es parte del ON
-- Muestra TODOS los usuarios, y rellena la empresa solo si cumple la coincidencia:
-- que el usuario pertenezca a una empresa Y que esa empresa se llame 'Mi empresa'.
-- Si no cumple (tiene otra empresa o no tiene empresa), igual aparece, con empresa = NULL.
SELECT users.name AS usuario, company.name AS empresa
FROM users
LEFT JOIN company
    ON users.company_company_id = company.company_id
    AND company.name = 'Mi empresa';