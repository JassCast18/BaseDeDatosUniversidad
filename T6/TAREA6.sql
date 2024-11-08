Create table Persona(
    IdPersona int Primary Key,
    nombre varchar(80),
    apellido varchar(80),
    DPI number(13),
    Direccion varchar(80)
    
);

Create table Socios(
    IdSocio int Primary Key,
    Telefono number(8),
    TipoSocio varchar(10),
    IdPersona int REFERENCES Persona(IdPersona)
);

Create table Patrones(
    IdPatron int Primary Key,
    Empresa varchar(80), --Si Es dueño del barco o pertenece a una marca
    IdPersona int REFERENCES Persona(IdPersona)
);

Create table Barcos(
    IdBarco int Primary Key,
    NumMatricula number,
    nombreBarco varchar(50),
    numAmarre number(20),
    cuotaPago number(10,2),
    IdSocio int REFERENCES Socios(IdSocio)
);

Create table Salidas(
    IdSalida int Primary Key,
    FechaSalida Date,
    Destino varchar(80),
    IdBarco int REFERENCES Barcos(IdBarco),
    IdPatron int REFERENCES Patrones(IdPatron)
);

--En este ejemplo el dueño del barco, es tambien socio del club y el que sale en el barco
INSERT INTO Persona VALUES (1, 'Jaser', 'Castellanos', 1234567890123, 'Flores Peten');
INSERT INTO Socios VALUES (1, 55512345, 'Activo', 1);
INSERT INTO Patrones VALUES (1, 'Nautica SA', 1);
INSERT INTO Barcos VALUES (1, 987654, 'El Navegante', 12, 150.00, 1);
INSERT INTO Salidas VALUES (1, TO_DATE('2024-08-27', 'YYYY-MM-DD'), 'Isla Bonita', 1, 1);


--DELETE
DELETE FROM Persona WHERE IdPersona = 1;
DELETE FROM Socios WHERE IdSocio = 1;
DELETE FROM Patrones WHERE IdPatron = 1;
DELETE FROM Barcos WHERE IdBarco = 1;
DELETE FROM Salidas WHERE IdSalida = 1;

--UPDATE
UPDATE Persona SET Direccion = 'Avenida Siempre Viva 456' WHERE IdPersona = 1;
UPDATE Socios SET Telefono = 55567890 WHERE IdSocio = 1;
UPDATE Patrones SET Empresa = 'Marina Global' WHERE IdPatron = 1;
UPDATE Barcos SET cuotaPago = 200.00 WHERE IdBarco = 1;
UPDATE Salidas SET Destino = 'Isla Paradiso'WHERE IdSalida = 1;

--SELECT MOSTRANDO UN DATO DE TODAS LAS TABLAS
SELECT 
    p.nombre, p.apellido,s.Telefono, s.TipoSocio,pat.Empresa,b.nombreBarco,b.NumMatricula, b.cuotaPago,sal.FechaSalida,sal.Destino
FROM 
    Persona p
JOIN 
    Socios s ON p.IdPersona = s.IdPersona
JOIN 
    Patrones pat ON p.IdPersona = pat.IdPersona
JOIN 
    Barcos b ON s.IdSocio = b.IdSocio
JOIN 
    Salidas sal ON b.IdBarco = sal.IdBarco AND pat.IdPatron = sal.IdPatron;


