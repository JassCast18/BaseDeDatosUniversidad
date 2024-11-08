Create table libro(
    codigo_libro number primary key,
    titulo varchar(30),
    editorial varchar(30),
    precio number(8,2)
);

drop table libro
Create procedure insertar_libro(codigo in number,titulo in varchar, editorial in varchar, precio in number) as
BEGIN
    insert into libro values(codigo, titulo,editorial,precio);
end;

DROP PROCEDURE mostrar

EXECUTE insertar_libro(2,'la calle donde tu vives','Guatemala',350.00);

select * from libro;

create procedure incrementar_precio as
BEGIN
--Aumentara el precio de todos los libros 10%
    update libro set precio=precio+(precio*0.1);
end;

execute incrementar_precio;

create procedure mostrar(codigo in number) as
begin--NO FUNCIONO LE FALTA INTO
    select * from libro where codigo_libro=codigo;
end;

create procedure eliminar (codigo in number) as
begin
    delete from libro where codigo_libro=codigo; 
end;

EXECUTE eliminar(2)