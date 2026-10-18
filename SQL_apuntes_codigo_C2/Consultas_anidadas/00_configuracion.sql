-- Preparación de la base de datos
-- Tabla Planeta
CREATE TABLE Planeta (
    nombre VARCHAR(50) PRIMARY KEY,
    dist   DECIMAL(5,2),
    radio  DECIMAL(5,2),
    grav   DECIMAL(5,1),
    dias   DECIMAL(10,3),
    anios  DECIMAL(10,3),
    temp   INT,
    anillo BOOLEAN
);

-- Tabla Aterrizaje
CREATE TABLE Aterrizaje (
    nave    VARCHAR(50) PRIMARY KEY,
    planeta VARCHAR(50),
    pais    VARCHAR(50),
    anio    INT,
    FOREIGN KEY (planeta) REFERENCES Planeta(nombre)
);

-- Datos de Planeta
INSERT INTO Planeta (nombre, dist, radio, grav, dias, anios, temp, anillo) VALUES
('Mercurio',  0.39,  0.38,  2.8,    58.646,   0.241,   440, FALSE),
('Venus',     0.72,  0.95,  8.9,  -243.019,   0.615,   730, FALSE),
('Tierra',    1.00,  1.00,  9.8,     0.997,   1.000,   288, FALSE),
('Marte',     1.52,  0.53,  3.7,     1.026,   1.880,   186, FALSE),
('Júpiter',   5.20, 10.97, 22.9,     0.414,  11.862,   152, TRUE),
('Saturno',   9.54,  9.14,  9.1,     0.444,  29.447,   134, TRUE),
('Urano',    19.19,  3.98,  7.8,    -0.719,  84.017,    76, TRUE),
('Neptuno',  30.07,  3.86, 11.0,     0.671, 164.791,    53, TRUE);

-- Datos de Aterrizaje
INSERT INTO Aterrizaje (nave, planeta, pais, anio) VALUES
('Messenger',    'Mercurio', 'EEUU', 2015),
('Venera 3',     'Venus',    'URRS', 1966),
('Pioneer',      'Venus',    'EEUU', 1978),
('Mars 2 lander','Marte',    'URRS', 1971),
('Viking 1',     'Marte',    'EEUU', 1976),
('Beagle 2',     'Marte',    'ESA',  2003),
('Galileo',      'Júpiter',  'EEUU', 2003);

-- Fin de preparación de base de datos
