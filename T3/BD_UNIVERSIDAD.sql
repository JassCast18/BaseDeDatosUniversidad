create table Libro (
codigo_libro number primary key,
titulo varchar(50),
editorial varchar (50),
precio number(8,2)
);

Insert into Libro values(1,'La llorona','Guate20',250.32);
Insert into Libro values(2,'Tecnicas del Saber','Enciclopedias',120.00);
Insert into Libro values(3,'Don Quijote de la Mancha','SrEditory',340.50);
Insert into Libro values(4,'Mil y un formas de morir','presiEditorial',250.32);
--FUNCIONES CON STRING
select substr(titulo,1,5) from Libro; --extraccion de substring 5 caracteres

select rpad(titulo,20,'x') as titulo from Libro; --llama a los datos y si no tiene 20 rellena con "x"

select initcap(titulo) from libro; --Cada letra inicial del String la pasa a mayuscula

select upper (titulo) from libro; --Convierte toda la cadena en mayuscula

select concat(titulo,precio) from libro; --Concatena y une ambas columnas

select titulo, concat('Q',Precio) from libro;

select replace (editorial,'Guate20','Mexi15') from libro; --modifica solo la vista de ese dato, mas no cambia el dato en si

select translate (titulo,'abc','ABC') from libro; --convierte las letras que se les dice en mayusculas, puede funcionar con cambios de cualquier caracter

--FUNCIONES MATEMATICAS
select titulo, precio, floor(precio),ceil(precio) from libro; --son aproximaciones, floor aproxima al bajo y ceil aproxima al siguiente

select titulo, precio, round(precio), trunc(precio) from libro; --round aproxima si es >5 sube si no baja, y trunc es igual al floor

select power(5,2) from dual; --power es potencia, dual es una tabla alterna para ver el dato

select mod(5,2) from dual; --es el restante o residuo de la division

select sqrt(100) from dual;

select avg(precio) from libro;