-- Usando llaves foraneas (EJ: 1:1, un usuario tiene un rut y un rut tiene un usuario)

-- Forma 1: Directamente al crear la tabla
CREATE TABLE dni (
	dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    users_users_id INT UNSIGNED NOT NULL UNIQUE,  -- Crea la columna users_users_id con el tipo y las restricciones que pusimos
    CONSTRAINT fk_dni_users_users_id
        FOREIGN KEY (users_users_id) REFERENCES users(users_id)  -- Asigna que users_users_id es una llave foranea que se trae de la columna users_id de la tabla users, con el nombre de fk_dni_users_users_id
);

-- Forma 2: Agregar la FOREIGN KEY a una tabla ya creada 
ALTER TABLE dni
ADD COLUMN users_users_id INT UNSIGNED NOT NULL UNIQUE;  -- Creamos la columna

ALTER TABLE dni
ADD CONSTRAINT fk_dni_users_users_id 
FOREIGN KEY (users_users_id) REFERENCES users(users_id);  -- La columna es FOREIGN KEY con el nombre de fk_dni_users_users_id


-- Usando llaves foraneas (EJ: 1:N, una empresa puede tner muchos usuarios y un usuario solo puede tener una empresa)

-- Crea la tabla company
CREATE TABLE company(
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Agrega a la tabla users la columna company_company_id 
ALTER TABLE users
ADD COLUMN company_company_id INT NOT NULL;


-- PASO INTERMEDIO 1: asegura que exista al menos una empresa (solo si company está vacía)
INSERT INTO company (name) VALUES ('Mi empresa');

-- PASO INTERMEDIO 2: asigna una empresa válida a los usuarios existentes (reemplaza el 1 por un company_id real)
UPDATE users
SET company_company_id = 1
WHERE users_id > 0;

-- Agrega a la tabla users la llave foranea company_company_id que se trae de la columna company_id de la tabla company con el nombre de fk_
ALTER TABLE users
ADD CONSTRAINT fk_users_company_company_id
FOREIGN KEY (company_company_id) REFERENCES company(company_id);


-- Usando llaves foraneas (EJ: N:M, un usuario sabe muchos lenguajes y un lenguaje es sabido por muchos usuarios)

-- Crea la tabla de lenguaje
CREATE TABLE language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Crea la tabla intermedia: un usuario sabe muchos lenguajes y un lenguaje es sabido por muchos usuarios
CREATE TABLE users_language (
    users_users_id INT UNSIGNED NOT NULL,        -- TablaDeDondeTraemos_AtributoQueTrajimos
    language_language_id INT NOT NULL,  -- TablaDeDondeTraemos_AtributoQueTrajimos
    CONSTRAINT pk_users_language
        PRIMARY KEY (users_users_id, language_language_id),  -- PK compuesta por las tablas de N y M
    CONSTRAINT fk_users_language_users_users_id            -- fk_TablaDondeEstaAhora_TablaDeDondeTraemos_AtributoQueTrajimos
        FOREIGN KEY (users_users_id) REFERENCES users(users_id),
    CONSTRAINT fk_users_language_language_language_id      -- fk_TablaDondeEstaAhora_TablaDeDondeTraemos_AtributoQueTrajimos
        FOREIGN KEY (language_language_id) REFERENCES language(language_id)
);