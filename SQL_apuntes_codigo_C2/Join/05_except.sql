-- EXCEPT devuelve las filas del PRIMER SELECT que NO aparecen en el segundo SELECT
-- Es una "resta" de conjuntos: primer resultado - segundo resultado

-- Elimina las filas duplicadas del resultado final

-- EXCEPT ALL hace lo mismo pero respeta la cantidad de veces que se repite cada fila (no elimina duplicados).

-- Reglas: son las mismas que en UNION
-- 1. Todos los SELECT deben tener la misma cantidad de columnas.
-- 2. Las columnas deben ir en el mismo orden y con tipos de dato compatibles
-- 3. Los nombres de columna del resultado se toman del PRIMER SELECT.

-- Ej básico
-- Muestra los nombres de usuarios que NO son también nombres de empresas
SELECT name FROM users
EXCEPT
SELECT name FROM company;

-- EL ORDEN IMPORTA: esto es distinto al anterior
-- Muestra los nombres de empresas que NO son también nombres de usuarios
SELECT name FROM company
EXCEPT
SELECT name FROM users;

-- EXCEPT ALL: conserva los duplicados "sobrantes" 
SELECT name FROM users
EXCEPT ALL
SELECT name FROM company;