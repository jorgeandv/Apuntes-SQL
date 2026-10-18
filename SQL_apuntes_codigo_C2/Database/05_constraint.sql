/* 
CONSTRAINT sirve para darle un nombre a una restricción.
Una restricción es un objeto con identidad propia dentro de la base de datos, ese objeto siempre tiene un nombre, el cual nosotros podemos 
elegir (sino, se da uno por defecto).

Ya vimos cómo asignar restricciones a columnas
Ej:
CREATE TABLE empleado (
    id INT PRIMARY KEY,
    email VARCHAR(150) UNIQUE,
    salario DECIMAL(10,2) CHECK (salario > 0),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);
En el ejemplo anterior NO se eligieron nombres, por ende, MySQL asigna por defecto un nombre a cada restricción:
*PRIMARY KEY -> PRIMARY
*UNIQUE del email -> email (siempre usa el mismo nombre de la columna)
*CHECK en salario -> empleados_chk_1
*FOREIGN KEY -> empleados_ibfk_1

¿Donde se utilizan los nombres?
Los nombres se utilizan al borrar las restricciones.
Ej: 
ALTER TABLE empleado 
DROP CHECK empleados_chk_1; -- Borra la restrición CHECK de salario (pues ese es el nombre)

Por esta razón es útil darle nombres personalizados a las restricciones, para que al momento de borrar la restricción sepamos qué nombre usar 
y no estemos buscando cual es el nombre por defecto
*/

-- Crea la tabla empleado con esas columnas (con su tipo y restricciones) y da nombre a las restricciones
CREATE TABLE empleado (
    id INT AUTO_INCREMENT,
    email VARCHAR(150),
    salario DECIMAL(10,2),
    departamento_id INT,
    CONSTRAINT pk_empleado 
        PRIMARY KEY (id),  -- Se da la restriccion PRIMARY KEY sobre id con el nombre de pk_empleado
    CONSTRAINT uq_empleado_email 
        UNIQUE (email),  -- Se da la restriccion UNIQUE sobre email con el nombre de uq_empleado_email
    CONSTRAINT chk_empleado_salario 
        CHECK (salario > 0),  -- Se da la restriccion CHECK > 0 sobre salario con el nombre de chk_empleado_salario
    -- Se da la restriccion FOREIGN KEY sobre departamento_id que se trae de la columna id de la tabla departamento con el nombre de fk_empleado_departamento_id
    CONSTRAINT fk_empleado_departamento_id
        FOREIGN KEY (departamento_id) REFERENCES departamento(id) 
);