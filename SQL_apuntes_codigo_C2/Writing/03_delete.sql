-- Elimina filas que ya existen en la tabla
-- SIEMPRE se usa DELETE con WHERE


-- De la tabla users, elimina las filas donde users_id = 3 
DELETE FROM users
WHERE users_id = 3;


-- De la tabla users, elimina las filas donde name = 'Juan' y surname = 'Perez'
DELETE FROM users
WHERE name = 'Juan' AND surname = 'Perez';