--Insert tabla Libro
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(1, 'Chespirito', 100.50);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(2, 'Harry Potter', 150.75);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(3, 'Don Quijote', 200.00);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(4, 'Opra de su', 120.50);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(5, 'Mil y un formas de amar', 130.75);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(6, 'Interestelar', 510.00);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(7, 'Salto en fuga', 180.50);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(8, 'La cucaracha', 160.75);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(9, 'Rombo', 370.00);
INSERT INTO Tb_Libros (id_Libro, nombre, precio) VALUES(10, 'Libro para leer', 240.50);

--Insert tabla Estante
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (1, 'Estante A', 1, 1);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (2, 'Estante B', 1, 2);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (3, 'Estante Carlos', 3, 3);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (4, 'Estante D', 2, 4);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (5, 'Estante Ester', 5, 5);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (6, 'Estante F', 2, 4);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (7, 'Estante Groelandia', 5, 7);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (8, 'Estante H', 8, 8);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (9, 'Estante I', 1, 9);
INSERT INTO Tb_Estante (id_estante, NombreEstante, nivelEstante, idLibro) VALUES (10, 'Estante J', 2, 10);

--Insert tabla Categoria
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (1, 'Ficción', 'Adulto', 1);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (2, 'Ciencia', 'Joven', 2);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (3, 'Historia', 'Adulto', 3);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (4, 'Tecnología', 'Niños', 4);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (5, 'Arte', 'Joven', 5);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (6, 'Deportes', 'Adulto', 6);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (7, 'Literatura', 'Joven', 7);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (8, 'Música', 'Niños', 8);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (9, 'Cocina', 'Adulto', 9);
INSERT INTO Tb_Categoria (idCategoria, tipo_Categoria, clasificacionEdad, idEstante) VALUES (10, 'Viajes', 'Joven', 10);

--Insert tabla Escritor
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (1, 'Juan de Dios', '2020', 1);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (2, 'Luxemburgo', '1984', 2);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (3, 'Martin Cross', '2018', 3);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (4, 'Ptolomeo G', '1230', 4);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (5, 'Garden Bride', '2016', 5);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (6, 'Luxemburgo', '1997', 6);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (7, 'Maria Ester', '2014', 7);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (8, 'Rosa Dinarte', '2013', 8);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (9, 'Iglu Monst', '2012', 9);
INSERT INTO Tb_Escritor (idEscritor, nombreEscritor, añoPublicacion, idEstante) VALUES (10, 'Juanita Barrios', '2011', 10);

--Insert tabla Prestamo
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (2, TO_DATE('2022-02-01', 'YYYY-MM-DD'), 2);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (3, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 3);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (4, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 4);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (5, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 5);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (6, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 6);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (7, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 7);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (8, TO_DATE('2022-12-24', 'YYYY-MM-DD'), 8);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (9, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 9);
INSERT INTO Tb_Prestamo (idPrestamo, fecha, idLibro) VALUES (10, TO_DATE('2020-10-01', 'YYYY-MM-DD'), 10);


--Insert tabla persona
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (1, 'Juan Carlos');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (2, 'Pablo Quintal');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (3, 'Pedro Pascal');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (4, 'Marta Sandoval');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (5, 'Kristel Barrios');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (6, 'Jaser Castellanos');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (7, 'Rudy Castellanos');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (8, 'Angela Guzman');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (9, 'Paula Soto');
INSERT INTO Tb_Persona (idPersona, nombre) VALUES (10, 'Richard Montes');

INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (1, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (2, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 2, 2);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (3, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 3);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (4, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 4, 4);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (5, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 5, 5);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (6, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 6, 6);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (7, TO_DATE('2023-07-10', 'YYYY-MM-DD'), 7, 7);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (8, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 8, 8);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (9, TO_DATE('2023-09-10', 'YYYY-MM-DD'), 9, 9);
INSERT INTO Tb_Cliente (idCliente, fecha, idPersona, idPrestamo) VALUES (10, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 10, 10);

INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (1, 'Bibliotecario', 2000.00, 'Mañana', 1);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (2, 'Asistente', 1500.00, 'Tarde', 2);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (3, 'Administrador', 2500.00, 'Noche', 3);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (4, 'Mantenimiento', 1800.00, 'Mañana', 4);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (5, 'Seguridad', 2200.00, 'Tarde', 5);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (6, 'Archivista', 1900.00, 'Noche', 6);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (7, 'Recepcionista', 1600.00, 'Mañana', 7);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (8, 'Limpieza', 1400.00, 'Tarde', 8);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (9, 'Bibliotecario', 2100.00, 'Noche', 9);
INSERT INTO Tb_Trabajador (idTrabajador, puesto, sueldo, horario, idPersona) VALUES (10, 'Tecnico', 2300.00, 'Mañana', 10);



-- Actualizar Tb_Libros
UPDATE Tb_Libros SET nombre = 'Libro Z', precio = 105.50 WHERE id_Libro = 1;

-- Actualizar Tb_Estante
UPDATE Tb_Estante SET NombreEstante = 'Estante Z', nivelEstante = 1 WHERE id_estante = 1;

-- Actualizar Tb_Categoria
UPDATE Tb_Categoria SET tipo_Categoria = 'Novela', clasificacionEdad = 'Adulto' WHERE idCategoria = 1;

-- Actualizar Tb_Escritor
UPDATE Tb_Escritor SET nombreEscritor = 'Escritor Z', añoPublicacion = '2021' WHERE idEscritor = 1;

-- Actualizar Tb_Prestamo
UPDATE Tb_Prestamo SET fecha = TO_DATE('2023-11-01', 'YYYY-MM-DD') WHERE idPrestamo = 1;

-- Actualizar Tb_Persona
UPDATE Tb_Persona SET nombre = 'Persona Z' WHERE idPersona = 1;

-- Actualizar Tb_Cliente
UPDATE Tb_Cliente SET fecha = TO_DATE('2023-11-10', 'YYYY-MM-DD') WHERE idCliente = 1;

-- Actualizar Tb_Trabajador
UPDATE Tb_Trabajador SET puesto = 'Director', sueldo = 3000.00, horario = 'Noche' WHERE idTrabajador = 1;

--Eliminar
DELETE FROM Tb_Libros WHERE id_Libro = 1;
DELETE FROM Tb_Estante WHERE id_estante = 1;
DELETE FROM Tb_Categoria WHERE idCategoria = 1;
DELETE FROM Tb_Escritor WHERE idEscritor = 1;
DELETE FROM Tb_Prestamo WHERE idPrestamo = 1;
DELETE FROM Tb_Persona WHERE idPersona = 1;
DELETE FROM Tb_Cliente WHERE idCliente = 1;
DELETE FROM Tb_Trabajador WHERE idTrabajador = 1;

-- Obtener información de libros y estantes
SELECT l.nombre, e.NombreEstante
FROM Tb_Libros l, Tb_Estante e
WHERE l.id_Libro = e.idLibro;

-- Obtener información de clientes y préstamos
SELECT c.idCliente, p.fecha
FROM Tb_Cliente c
INNER JOIN Tb_Prestamo p ON c.idPrestamo = p.idPrestamo;

-- Obtener información de escritores y estantes
SELECT es.nombreEscritor, e.NombreEstante
FROM Tb_Escritor es, Tb_Estante e
WHERE es.idEstante = e.id_estante;

-- Obtener información de categorías y estantes
SELECT ca.tipo_Categoria, e.NombreEstante as "Estante"
FROM Tb_Categoria ca
INNER JOIN Tb_Estante e ON ca.idEstante = e.id_estante;






