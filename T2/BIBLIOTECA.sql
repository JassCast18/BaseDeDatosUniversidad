CREATE TABLE Tb_Libros(
    id_Libro NUMBER PRIMARY KEY,
    nombre VARCHAR(30),
    precio float
);


CREATE TABLE Tb_Estante(
    id_estante NUMBER PRIMARY KEY,
    NombreEstante VARCHAR(30),
    nivelEstante number,
    idLibro number REFERENCES Tb_Libros(id_Libro)
);

CREATE TABLE Tb_Categoria(
    idCategoria NUMBER PRIMARY KEY,
    tipo_Categoria varchar(20),
    clasificacionEdad varchar(20),
    idEstante NUMBER REFERENCES Tb_Estante(id_estante)
);

CREATE TABLE Tb_Escritor(
    idEscritor NUMBER PRIMARY KEY,
    nombreEscritor varchar(50),
    añoPublicacion varchar(20),
    idEstante NUMBER REFERENCES Tb_Estante(id_estante)
);

CREATE TABLE Tb_Prestamo (
    idPrestamo NUMBER PRIMARY KEY,
    fecha DATE,
    idLibro NUMBER REFERENCES Tb_Libros(id_libro)
);
CREATE TABLE Tb_Persona (
    idPersona NUMBER PRIMARY KEY,
    nombre varchar(50)
);
CREATE TABLE Tb_Cliente(
    idCliente NUMBER PRIMARY KEY,
    fecha DATE,
    idPersona NUMBER REFERENCES Tb_Persona(idPersona),
    idPrestamo NUMBER REFERENCES Tb_Prestamo(idPrestamo)
);

CREATE TABLE Tb_Trabajador(
    idTrabajador NUMBER PRIMARY KEY,
    puesto VARCHAR(50),
    sueldo float,
    horario VARCHAR(50),
    idPersona NUMBER REFERENCES Tb_Persona(idPersona)
);

-- Insertar datos en la tabla Tb_Libros
INSERT INTO Tb_Libros (id_Libro, nombre, precio) 
VALUES (1, 'Cien Años de Soledad', 29.99);

-- Insertar datos en la tabla Tb_Estante
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) 
VALUES (1, 'Estante A', 1, 1);

-- Insertar datos en la tabla Tb_Categoria
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) 
VALUES (1, 'Ficción', 'Adulto', 1);

-- Insertar datos en la tabla Tb_Escritor
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) 
VALUES (1, 'Gabriel García Márquez', '1967', 1);

-- Insertar datos en la tabla Tb_Prestamo
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) 
VALUES (1, TO_DATE('2023-07-25', 'YYYY-MM-DD'), 1);

-- Insertar datos en la tabla Tb_Persona
INSERT INTO Tb_Persona (idPersona, nombre) 
VALUES (1, 'Juan Pérez');

-- Insertar datos en la tabla Tb_Cliente
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) 
VALUES (1, TO_DATE('2023-07-25', 'YYYY-MM-DD'), 1, 1);

-- Insertar datos en la tabla Tb_Trabajador
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) 
VALUES (1, 'Bibliotecario', 1200.50, '9am-5pm', 1);


