-- COALESCE reemplaza un valor NULL por otro valor que elijamos
-- Su diferencia con IFNULL es que IFNULL solo permite uan tupla de dos valores, en cambio COALESCE puede usar una tupla del largo que queramos

-- Muestra los datos de la columna nombre y de la columna nombrada como 'contacto' donde los datos de esta columna son el primero de la tupla
-- (telefono, celular, email, 'Sin contacto') que no sea NULL.
-- Ej: Si telefono es NULL, pasamos a celular, si celular no es NULL, entonces el dato de la columna contacto es celular.
SELECT nombre, COALESCE(telefono, celular, email, 'Sin contacto') AS contacto
FROM usuarios;