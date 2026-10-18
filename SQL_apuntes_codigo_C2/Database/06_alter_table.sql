-- Modifica la estructura de una tabla que ya existe, pasra agregar, borrar, o cambiar columnas, cambiar tipos, agregar restricciones, renombrar, etc.
-- Mientras que UPDATE cambia datos, ALTER TABLE cambia la forma de la tabla 

-- Agregar  una columna a la tabla
ALTER TABLE person 
ADD COLUMN telefono VARCHAR(20) UNIQUE;  -- Al final, agrega la columna telefono (con las restricciones dadas) a la tabla person
ALTER TABLE person 
ADD COLUMN telefono VARCHAR(20) UNIQUE AFTER email;  -- Despues de email, agrega la columna telefono (con las restricciones dadas) a la tabla person
ALTER TABLE person 
ADD COLUMN telefono VARCHAR(20) UNIQUE FIRST;  -- Al inicio, agrega la columna telefono (con las restricciones dadas) a la tabla person


-- Eliminar una columna de la tabla
ALTER TABLE person 
DROP COLUMNS telefono;  -- Elimina la columna telefono de la tabla person


-- Modificar el tipo y/o las restricciones de una columna de la tabla
ALTER TABLE person 
MODIFY COLUMN name VARCHAR(150) NOT NULL;  -- Modifica la columna name de la tabla person (con el tipo y las restricciones dadas)


-- Renombrar una columna y/o tipo y restricciones, de la tabla
ALTER TABLE person 
RENAME COLUMN created TO fecha_creacion;  -- Cambia el nombre de la columna created a fecha_creacion, de la tabla users
ALTER TABLE person 
CHANGE COLUMN created fecha_creacion DATE NOT NULL;  -- Cambia el nombre de la columna created a fecha_creacion y su tipo y restricciones, de la tabla users


-- Renombrar a la tabla
ALTER TABLE person 
RENAME TO personas;  -- Cambia el nombre de la tabla person a personas


-- Agregar y/o quitar restricciones de una tabla
-- La diferencia con MODIFY es que en MODIFY si queremos agregar o quitar restricciones igual tenemos que escribir TODAS las restricciones finales
-- en cambio con ADD y DROP agregamos y quitamos sin preocuparnos del resto de restricciones (estas se mantienen) (además no tocamos el tipo)
ALTER TABLE person 
ADD CONSTRAINT uq_person_email 
UNIQUE (email);  -- Ahora la columna email tiene la restricción de UNIQUE con el nombre de uq_person_email
ALTER TABLE person 
ALTER COLUMN age SET DEFAULT 18;   -- Ahora la columna age tiene el default de 18

ALTER TABLE person 
DROP INDEX uq_person_email; -- Ahora la columna email ya no tiene la restricción de UNIQUE (MySQL implementa UNIQUE con INDEX) (usamos su respectivo nombre)
ALTER TABLE person 
ALTER COLUMN age DROP DEFAULT;     -- Ahora la columna age no tiene el default


-- Combinación
ALTER TABLE person
    ADD COLUMN telefono VARCHAR(20),
    MODIFY COLUMN name VARCHAR(150) NOT NULL,
    DROP COLUMN age;