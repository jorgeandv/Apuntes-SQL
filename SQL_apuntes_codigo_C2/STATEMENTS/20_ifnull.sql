-- IFNULL reemplaza un valor NULL por otro valor que elijamos

-- Muestra los datos de la columna name y de la columna nombrada como 'edad' donde los datos de esta columna son el primero de la tupla
-- (age, 0) que no sea NULL.
-- Ej: Si age es NULL, pasamos a 0, 0 no es NULL, entonces el dato de la columna edad es 0.
SELECT name, IFNULL(age, 0) AS edad     
FROM users;


