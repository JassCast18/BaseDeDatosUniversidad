--Rudy Jaser Samuel Castellanos Lopez 1690-22-9776
Create table Fabricante(
    Codigo_Fabricante number primary key,
    Nombre varchar(50)
);
Create table Producto(
    Codigo_producto number primary key,
    Nombre varchar(50),
    precio number,
    CodigoFabricante number REFERENCES Fabricante(Codigo_Fabricante)     
);

insert into Fabricante  values(1,'Walmart');
insert into Fabricante  values(2,'Impulso');
insert into Fabricante  values(3,'Mahler');
insert into Fabricante  values(4,'Cars');
insert into Fabricante  values(5,'Emusa');
insert into Fabricante  values(6,'HP');
insert into Fabricante  values(7,'Lenovo');

insert into Producto values(1,'Aceite',12.00,1);
insert into Producto values(2,'Azucar',15.00,1);
insert into Producto values(3,'Mancuerna',222.00,2);
insert into Producto values(4,'Barra',1200.00,2);
insert into Producto values(5,'Consome',13.00,3);
insert into Producto values(6,'Sopa',5.00,3);
insert into Producto values(7,'Mustang',32244.00,4);
insert into Producto values(8,'Nisan',245.00,4);
insert into Producto values(9,'Camisa',12.00,5);
insert into Producto values(10,'Pantalon',12.00,5);
insert into Producto values(11,'Sueter',12.00,5);
insert into Producto values(12,'Compu',1200.00,6);
insert into Producto values(13,'Laptop',4520.00,6);

--1.Numero total de productos, debe devolver 11
SELECT COUNT(*) AS total_productos FROM Producto;

--2.Numero total de Fabricantes, debe devolver 5
SELECT COUNT(*) AS total_fabricantes FROM Fabricante;

--3.Media Aritmetica del precio de los productos
SELECT AVG(precio) AS media_precio FROM Producto;

--4.Precio mas barato de todos los productos
SELECT MIN(precio) AS precio_mas_barato FROM Producto;

--5.Precio mas caro de todos los productos
SELECT MAX(precio) AS precio_mas_caro FROM Producto;

--6.Nombre y precio del producto más barato
SELECT nombre, precio 
FROM Producto
WHERE precio = (SELECT MIN(precio) FROM Producto);

--7.Nombre y precio del producto mas caro
SELECT nombre, precio 
FROM Producto 
WHERE precio = (SELECT MAX(precio) FROM Producto);

--8.Suma de los precios de todos los productos
SELECT SUM(precio) AS suma_precios FROM Producto;

--9. Numero de productos quer tiene el fabricante HP
SELECT COUNT(*) AS total_productos_hp 
FROM Producto 
WHERE CodigoFabricante = (SELECT Codigo_Fabricante FROM Fabricante WHERE Nombre = 'HP');

--10. Media del precio de todos los productos del fabricante HP:
SELECT AVG(precio) AS media_precio_hp 
FROM Producto 
WHERE CodigoFabricante = (SELECT Codigo_Fabricante FROM Fabricante WHERE Nombre = 'HP');

--11. Precio más barato de todos los productos del fabricante HP:
SELECT MIN(precio) AS precio_mas_barato_hp 
FROM Producto 
WHERE CodigoFabricante = (SELECT Codigo_Fabricante FROM Fabricante WHERE Nombre = 'HP');

--12. Suma de todos los precios de los productos del fabricante HP:
SELECT SUM(precio) AS suma_precios_hp 
FROM Producto 
WHERE CodigoFabricante = (SELECT Codigo_Fabricante FROM Fabricante WHERE Nombre = 'HP');
