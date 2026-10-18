-- Es el if, else de SQL.
-- Sirve para ejecutar una consulta donde cada dato varía según la condición que se cumpla, estos datos se muestran en una nueva columna con el nombre
-- que pongamos después del END

SELECT *,   -- Muestra las filas de la tabla users
CASE 
    WHEN age >= 18 THEN 'Es mayor de edad'  -- Si age >= 18, el dato es 'Es mayor de edad'
    When age = 18 THEN 'Tiene 18 años'  -- Si age = 18, el dato es 'Tiene 18 años'
    ELSE  'Es menor de edad'    -- Si no es alguno de los casos anteriores, el dato es 'Es menor de edad'
END AS '¿Es mayor de edad?'     -- La columna de esos datos es '¿Es mayor de edad?'
FROM users;


SELECT name, age,   -- Muestra los datos de la columna name y de la columna age de la tabla users
CASE 
    WHEN age >= 18 THEN 'Es mayor de edad'  -- Si age >= 18, el dato es 'Es mayor de edad'
    ELSE  'Es menor de edad'    -- Si no es alguno de los casos anteriores, el dato es 'Es menor de edad'
END AS '¿Es mayor de edad?'     -- La columna de esos datos es '¿Es mayor de edad?'
FROM users;


SELECT name,    -- Muestra los datos de la columna name la tabla users
    CASE age
        WHEN 21 THEN 'Tiene 21' -- Si age = 21, el dato es 'Tiene 21'
        WHEN 30 THEN 'Tiene 30' -- Si age = 30, el dato es 'Tiene 30'
        ELSE 'Otra edad'     -- Si no es alguno de los casos anteriores, el dato es 'Otra edad'
    END AS 'edad_texto'  -- La columna de esos datos es 'edad_texto'
FROM users;

