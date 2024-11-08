Create Table Tb_Clientes (
    IdCliente int Primary Key,
    DPI int,
    nombre varchar(80),
    apellido varchar(80),
    direccion varchar(80),
    telefono int
);

Create Table Tb_Asuntos(
    NumExpediente int Primary Key,
    FechaInicio Date,
    FechaFinalizacion Date,
    Estado varchar(80),
    IdCliente int references Tb_Clientes(IdCliente)
);

Create Table Tb_Procuradores(
    IdProcurador int Primary Key,
    nombre varchar(80),
    correo varchar(80),
    direccion varchar(80),
    telefono int
);

Create Table Tb_AsuntoProcuradores(
    IdAsuntoProcurador int Primary Key,
    NumExpediente int references Tb_Asuntos(NumExpediente),
    IdProcurador int references Tb_Procuradores(IdProcurador)
);

Insert into Tb_Clientes values(1,123456,'Jaser','Castellanos','San Benito',53157500);
Insert into Tb_Clientes values(2,405213,'Marta','Barrios','Las Cruces',30247854);
Insert into Tb_Clientes values(3,789465,'Ruben','Soto','Guatemala',45461245);
--
Insert into Tb_Asuntos values(1,'15-02-2024','30-03-2024','archivado',1);
Insert into Tb_Asuntos values(2,'04-07-2024',null,'en tramite',2);
Insert into Tb_Asuntos values(3,'10-01-2024','30-01-2024','archivado',3);
--
Insert into Tb_Procuradores values(1,'Juan','Juan213@abogados.com','Houston',54784574);
Insert into Tb_Procuradores values(2,'Samy','SamyToru@abogados.com','San Benito',31245784);
Insert into Tb_Procuradores values(3,'Karla','KarlaEster14@abogados.com','Flores',47852431);
--
Insert into Tb_AsuntoProcuradores values(1,1,1);
Insert into Tb_AsuntoProcuradores values(2,1,3);
Insert into Tb_AsuntoProcuradores values(3,2,2);

--Funciones con String
select rpad(apellido,15,'x') as Apellido from Tb_Clientes; 
select initcap(Estado) from Tb_Asuntos;
select concat(Nombre,apellido) from Tb_clientes;
select replace (IdProcurador,1,'Abogado Juan') as IdProcurador from Tb_AsuntoProcuradores;
select upper (correo) from Tb_procuradores;

--Funciones Matematicas
select power(DPI,2) from Tb_Clientes;
select mod (telefono,2) from Tb_Clientes;
select sqrt(telefono) from Tb_procuradores;
select avg(DPI) from tb_CLientes;
select round (1235.47) from dual;