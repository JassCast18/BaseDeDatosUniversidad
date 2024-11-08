--Rudy Jaser Samuel Castellanos Lopez 1690-22-9776
--1
CREATE TABLE empleado (
    Id_Empleado number primary key,--2
    DPI varchar(15),
    Nombre varchar(25),
    Apellido varchar2(25),
    Direccion varchar(30)
);
--3
CREATE INDEX idx_DPI ON empleado(DPI);
--4
CREATE INDEX idx_Nombre_Apellido ON empleado(Nombre,Apellido);
--5
SELECT * FROM user_constraints WHERE owner='BASE_DATOSI' AND TABLE_NAME='EMPLEADO';
--6
SELECT * FROM all_indexes WHERE owner='BASE_DATOSI' AND TABLE_NAME='EMPLEADO';
--7
SELECT * FROM user_objects WHERE OBJECT_TYPE='INDEX';

--8
INSERT INTO empleado VALUES (1, '1234567890123', 'Jaser', 'Castellanos', 'Calle Falsa 123');
INSERT INTO empleado VALUES (2, '2345678901234', 'Ana', 'García', 'Avenida Siempre Viva 456');
INSERT INTO empleado VALUES (3, '3456789012345', 'Luis', 'Martínez', 'Boulevard de los Sueños 789');
INSERT INTO empleado VALUES (4, '4567890123456', 'María', 'López', 'Plaza Mayor 101');
INSERT INTO empleado VALUES (5, '5678901234567', 'Carlos', 'Sánchez', 'Calle de la Alegría 202');

--9
SELECT * FROM empleado WHERE DPI = '1234567890123';
SELECT * FROM empleado WHERE Nombre = 'Ana' AND Apellido = 'García';

