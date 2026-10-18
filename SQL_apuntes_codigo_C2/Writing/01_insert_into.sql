-- Inserta algo dentro de una tabla

-- Inserto a la tabla users en las columnas name, surname, age, init_date, email una fila con los valores ('Juan', 'Perez', 40, '2026-08-08', 'juanperez@gmail.com') , respectivamente 
INSERT INTO users (name, surname, age, init_date, email)    
VALUES ('Juan', 'Perez', 40, '2026-08-08', 'juanperez@gmail.com');  -- No es necesario poner users_id porque en la tabla está definido como auto-incremental

-- Inserto a la tabla users en las columnas name, surname, age, init_date, email tres filas con los valores 
-- ('Juan', 'Perez', 40, '2026-08-08', 'juanperez@gmail.com'),
-- ('Ana', 'Gomez', 25, '2025-03-15', 'anagomez@gmail.com'),
-- ('Luis', 'Rojas', 31, '2024-11-02', 'luisrojas@hotmail.com');
INSERT INTO users (name, surname, age, init_date, email)
VALUES
    ('Luis', 'Kar', 25, '2026-08-08', 'juankar@gmail.com'),
    ('Ana', 'Gomez', 25, '2025-03-15', 'anagomez@gmail.com'),
    ('Luis', 'Rojas', 31, '2024-11-02', 'luisrojas@hotmail.com');