-- UNION combina los resultados de DOS o más SELECT en una sola lista, uno debajo del otro (apila filas)
-- A diferencia del JOIN, que junta columnas de tablas distintas (lado a lado), UNION junta filas
-- Elimina las filas duplicadas del resultado final
-- UNION ALL hace lo mismo pero NO elimina duplicados (es más rápido)

-- Reglas:
-- 1. Todos los SELECT deben tener la misma cantidad de columnas

-- 2. Las columnas deben ir en el mismo orden y con tipos de dato compatibles
/*
¿Mismo orden?
SQL empareja por posición, así que hay que escribir las columnas de cada SELECT de modo que las columnas que queremos
junbtar queden en la misma columna

¿Tipos de dato compatibles?
Las columnas de cada SELECT que se emparejan deben poder convivir en la misma columna
Ej: Una columna de VARCHAR, no es compatible con una columna de INT
*/

-- 3. Los nombres de columna del resultado se toman del PRIMER SELECT

-- Ej básico
-- Muestra una sola lista con los nombres de los usuarios y los nombres de las empresas
SELECT name FROM users
UNION
SELECT name FROM company;

-- Si un nombre aparece en ambas tablas, sale una sola vez (UNION elimina duplicados)


-- UNION ALL: igual, pero conserva los duplicados
SELECT name FROM users
UNION ALL
SELECT name FROM company;


-- UNION con más de una columna
-- Muestra en una sola lista las personas (usuarios) y las empresas, con su nombre, su id y el tipo
SELECT name AS nombre, users_id AS id, 'usuario' AS tipo    --tipo es una columna que estpa llena con 'usuario' , tantas como filas devuelva el SELECT
FROM users
UNION
SELECT name, company_id, 'empresa'  --la columna tipo se llena con 'empresa', tantas como filas devuelva el SELECT
FROM company;


-- Caso típico: simular un FULL JOIN (MySQL no lo tiene)
-- Muestra empresas sin usuarios Y usuarios sin empresa, a la vez
SELECT users.name AS usuario, company.name AS empresa
FROM users
LEFT JOIN company
    ON users.company_company_id = company.company_id
UNION
SELECT users.name AS usuario, company.name AS empresa
FROM users
RIGHT JOIN company
    ON users.company_company_id = company.company_id;