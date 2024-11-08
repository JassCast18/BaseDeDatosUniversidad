--Rudy Jaser Samuel Castellanos Lopez 1690-22-9776
CREATE TABLE FABRICANTE (
    C�digo_Fabricante NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE PRODUCTO (
    C�digo_Producto NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Precio NUMBER NOT NULL,
    CodigoFabricante NUMBER REFERENCES FABRICANTE(C�digo_Fabricante)
);
CREATE SEQUENCE IdProductoAument START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE IdFabricanteAument START WITH 1 INCREMENT BY 1;

-- Inserci�n del fabricante
INSERT INTO FABRICANTE (C�digo_Fabricante, Nombre)
VALUES (IdFabricanteAument.NEXTVAL, 'Fabricante X');

-- Definir un punto de control (savepoint)
SAVEPOINT sp_insert_fabricante;

-- Inserci�n del primer producto
INSERT INTO PRODUCTO (C�digo_Producto, Nombre, Precio, CodigoFabricante)
VALUES (IdProductoAument.NEXTVAL, 'Producto A', 100, IdFabricanteAument.CURRVAL);

-- Definir otro punto de control (savepoint)
SAVEPOINT sp_insert_producto;

-- Inserci�n del segundo producto
INSERT INTO PRODUCTO (C�digo_Producto, Nombre, Precio, CodigoFabricante)
VALUES (IdProductoAument.NEXTVAL, 'Producto B', 200, IdFabricanteAument.CURRVAL);

-- Confirmar la transacci�n
COMMIT;


-- Actualizaci�n del nombre del fabricante
UPDATE FABRICANTE
SET Nombre = 'INTEL'
WHERE C�digo_Fabricante = 1;

-- Guardar el estado de la transacci�n
SAVEPOINT sp_update_fabricante;

-- Actualizaci�n del primer producto
UPDATE PRODUCTO
SET Precio = 1000
WHERE C�digo_Producto = 1;

-- Actualizaci�n del segundo producto
UPDATE PRODUCTO
SET Precio = 2500
WHERE C�digo_Producto = 2;

-- Confirmar la transacci�n
COMMIT;

-- Eliminar productos del fabricante
DELETE FROM PRODUCTO
WHERE CodigoFabricante = 1;

-- Guardar el estado de la transacci�n
SAVEPOINT sp_delete_producto;

-- Eliminar fabricante
DELETE FROM FABRICANTE
WHERE C�digo_Fabricante = 1;

-- Confirmar la transacci�n
COMMIT;

