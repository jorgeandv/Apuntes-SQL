-- INTERSECT devuelve solo las filas que aparecen en AMBOS SELECT
-- Es una "intersección" de conjuntos

-- Elimina las filas duplicadas del resultado final.

-- INTERSECT ALL hace lo mismo pero respeta la cantidad de veces que se repite cada fila.

-- Reglas: son las mismas que en UNION y EXCEPT
-- 1. Todos los SELECT deben tener la misma cantidad de columnas.
-- 2. Las columnas deben ir en el mismo orden y con tipos de dato compatibles
-- 3. Los nombres de columna del resultado se toman del PRIMER SELECT.

-- Ej básico
-- Muestra los nombres que existen tanto en users como en company
SELECT name FROM users
INTERSECT
SELECT name FROM company;

-- A diferencia de EXCEPT, aquí el orden NO cambia el resultado
-- (esto da lo mismo que el anterior)
SELECT name FROM company
INTERSECT
SELECT name FROM users;

-- INTERSECT ALL: conserva las repeticiones en común (ver ejemplo abajo)
SELECT name FROM users
INTERSECT ALL
SELECT name FROM company;
