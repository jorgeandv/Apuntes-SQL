-- Crea una tabla dentro de la base de datos que esté seleccionada, donde se debe definir las columnas que tendrá la tabla con su respectivo tipo y restricciones

-- Crea la tabla person con las columnas id, name, age, email, created (con el tipo y las restricciones que pusimos)
CREATE TABLE person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age >= 0),  -- El CHECK exige que el valor de la columna age sea >=0
    email VARCHAR(50) DEFAULT 'hola@gmail.com',  -- Si en el INSERT no se da un valor al email, por defecto se toma el valor de 'hola@gmail.com'
    created DATE UNIQUE NOT NULL 
);


