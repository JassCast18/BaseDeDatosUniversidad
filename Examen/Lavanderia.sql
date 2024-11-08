--Rudy Jaser Samuel Castellanos Lopez 1690-22-9776
create table TbLavanderia(
    idLavanderia int primary key,
    nombre varchar(80),
    direccion varchar(80)
    
);

create table persona(
    IdPersona int primary key,
    nombrePersona varchar(80),
    telefono number,
    DPI number,
    idLavanderia int references TbLavanderia(idLavanderia)
);

create table trabajador(
    IdTrabajador int primary key,
    TipoTrabjador varchar(80),
    sueldo number,
    horario Date,
    IdPersona int references persona(IdPersona)
);

create table cliente(
    IdCliente int primary key,
    direccionEntrega varchar(80),
    fechaPedido Date,
    ServicioSolicitado varchar(80),
    IdPersona int references persona(IdPersona)
);

create table ropa(
    IdRopa int primary key,
    textura varchar(80),
    tipoRopa varchar(80),
    IdCliente int,
    constraint fk_ropa
    foreign key (IdCliente)
    references cliente(IdCliente)
);

create table calzado(
    idCalzado int primary key,
    color varchar(80),
    tipoCalzado varchar(80),
    IdCliente int references cliente(IdCliente)
);

create table aparato(
    idAparato int primary key,
    tipoAparato varchar(80),
    tiempoUso date,
    modelo varchar(80),
    marca varchar(80),
    precioTotal number(8,2),
    idLavanderia int references TbLavanderia(idLavanderia)
);

create table lavadora(
    IdLavadora int primary key,
    tipoLavado varchar(80),
    NivelAgua number,
    IdAparato int references aparato(idAparato)
);

create table secadora(
    IdSecadora int primary key,
    tipoSecado varchar(80),
    IdAparato int references aparato(idAparato)
);

create table plancha(
    IdPlancha int primary key,
    NivelCalentamiento number,
    tipoEvaporacion varchar(80),
    IdAparato int references aparato(idAparato)
);

--inserccion de datos
insert into TbLavanderia values(1, 'Lavandería Las Rosas', 'Calle 1, Zona 1');
insert into TbLavanderia values(2, 'Lavandería El Sol', 'Avenida Central, Zona 2');
insert into TbLavanderia values(3, 'Lavandería Aqua', 'Boulevard Los Pinos, Zona 3');
insert into TbLavanderia values(4, 'Lavandería La Perla', 'Calle 4, Zona 4');
insert into TbLavanderia values(5, 'Lavandería Limpieza Total', 'Avenida Las Palmas, Zona 5');

insert into persona values(1, 'Juan Pérez', 12345678, 1234567890123, 1);
insert into persona values(2, 'María García', 23456789, 2345678901234, 2);
insert into persona values(3, 'Carlos López', 34567890, 3456789012345, 3);
insert into persona values(4, 'Ana Fernández', 45678901, 4567890123456, 4);
insert into persona values(5, 'Luis Martínez', 56789012, 5678901234567, 5);

insert into trabajador values(1, 'Lavandero', 3000, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1);
insert into trabajador values(2, 'Planchador', 3200, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 2);
insert into trabajador values(3, 'Recepcionista', 2800, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 3);
insert into trabajador values(4, 'Supervisor', 3500, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 4);
insert into trabajador values(5, 'Mantenimiento', 3000, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 5);

insert into cliente values(1, 'Calle 10, Zona 1',  TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Lavado y Planchado', 1);
insert into cliente values(2, 'Avenida 3, Zona 2',  TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Solo Lavado', 2);
insert into cliente values(3, 'Boulevard 5, Zona 3',  TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Solo Planchado', 3);
insert into cliente values(4, 'Calle 8, Zona 4',  TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Lavado y Secado', 4);
insert into cliente values(5, 'Avenida 12, Zona 5',  TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Secado', 5);

insert into ropa values(1, 'Algodón', 'Camisa', 1);
insert into ropa values(2, 'Poliéster', 'Pantalón', 2);
insert into ropa values(3, 'Seda', 'Blusa', 3);
insert into ropa values(4, 'Lana', 'Suéter', 4);
insert into ropa values(5, 'Lino', 'Falda', 5);

insert into calzado values(1, 'Negro', 'Zapatos', 1);
insert into calzado values(2, 'Blanco', 'Tenis', 2);
insert into calzado values(3, 'Marrón', 'Botas', 3);
insert into calzado values(4, 'Gris', 'Zapatillas', 4);
insert into calzado values(5, 'Azul', 'Sandalias', 5);

insert into aparato values(1, 'Lavadora', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'LG123', 'LG', 5000.00, 1);
insert into aparato values(2, 'Secadora', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Samsung456', 'Samsung', 3000.00, 2);
insert into aparato values(3, 'Plancha', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Philips789', 'Philips', 1500.00, 3);
insert into aparato values(4, 'Lavadora', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Whirlpool101', 'Whirlpool', 5500.00, 4);
insert into aparato values(5, 'Secadora', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Bosch202', 'Bosch', 3200.00, 5);

insert into lavadora values(1, 'Normal', 50, 1);
insert into lavadora values(2, 'Delicado', 30, 2);
insert into lavadora values(3, 'Rápido', 40, 3);
insert into lavadora values(4, 'Ecológico', 20, 4);
insert into lavadora values(5, 'Intensivo', 60, 5);

insert into secadora values(1, 'Aire Caliente', 1);
insert into secadora values(2, 'Aire Frío', 2);
insert into secadora values(3, 'Automático', 3);
insert into secadora values(4, 'Suave', 4);
insert into secadora values(5, 'Rápido', 5);

insert into plancha values(1, 200, 'Vapor', 1);
insert into plancha values(2, 180, 'Seco', 2);
insert into plancha values(3, 220, 'Automático', 3);
insert into plancha values(4, 150, 'Suave', 4);
insert into plancha values(5, 210, 'Turbo', 5);

-- Actualizar datos
UPDATE TbLavanderia SET nombre = 'Lavandería Los Tulipanes' WHERE idLavanderia = 1;
UPDATE persona SET telefono = 87654321 WHERE IdPersona = 2;
UPDATE trabajador SET sueldo = 3400 WHERE IdTrabajador = 3;
UPDATE cliente SET ServicioSolicitado = 'Lavado y Planchado Express' WHERE IdCliente = 4;
UPDATE ropa SET tipoRopa = 'Chaqueta' WHERE IdRopa = 5;
UPDATE calzado SET color = 'Rojo' WHERE idCalzado = 1;
UPDATE aparato SET marca = 'Panasonic' WHERE idAparato = 2;
UPDATE lavadora SET NivelAgua = 70 WHERE IdLavadora = 3;
UPDATE secadora SET tipoSecado = 'Extra Suave' WHERE IdSecadora = 4;
UPDATE plancha SET NivelCalentamiento = 230 WHERE IdPlancha = 5;

-- Eliminar dato 5 de todas las tablas
DELETE FROM TbLavanderia WHERE idLavanderia = 5;
DELETE FROM persona WHERE IdPersona = 5;
DELETE FROM trabajador WHERE IdTrabajador = 5;
DELETE FROM cliente WHERE IdCliente = 5;
DELETE FROM ropa WHERE IdRopa = 5;
DELETE FROM calzado WHERE idCalzado = 5;
DELETE FROM aparato WHERE idAparato = 5;
DELETE FROM lavadora WHERE IdLavadora = 5;
DELETE FROM secadora WHERE IdSecadora = 5;
DELETE FROM plancha WHERE IdPlancha = 5;


--Inner join implicito
SELECT TbLavanderia.nombre, persona.nombrePersona
FROM TbLavanderia, persona, trabajador
WHERE TbLavanderia.idLavanderia = persona.idLavanderia
AND persona.IdPersona = trabajador.IdPersona;

SELECT cliente.direccionEntrega, calzado.tipoCalzado
FROM cliente, calzado
WHERE cliente.IdCliente = calzado.IdCliente;


--inner join explicito
SELECT cliente.direccionEntrega, ropa.tipoRopa
FROM cliente
INNER JOIN ropa ON cliente.IdCliente = ropa.IdCliente;

