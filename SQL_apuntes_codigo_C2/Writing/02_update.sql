-- Modifica filas que ya existen en la tabla
-- SIEMPRE se usa UPDATE con WHERE

-- Actualiza la tabla users, cambia la columna age y da el valor de 41 donde name = 'Juan' y surname = 'Perez'
UPDATE users 
SET age = 41
WHERE name = 'Juan' AND surname = 'Perez';


-- Actualiza la tabla users, cambia la columna age y email, y da el valor de 26 y ana.gomez@gmail.com respectivamente donde name = 'Ana'
UPDATE users
SET age = 26, email = 'ana.gomez@gmail.com'
WHERE name = 'Ana';