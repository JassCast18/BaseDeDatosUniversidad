--Rudy Jaser Samuel Castellanos Lopez 1690-22-9776
CREATE TABLE FABRICANTE (
    Código_Fabricante NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE PRODUCTO (
    Código_Producto NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Precio NUMBER NOT NULL,
    CodigoFabricante NUMBER REFERENCES FABRICANTE(Código_Fabricante)
);
CREATE SEQUENCE IdProductoAument START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE IdFabricanteAument START WITH 1 INCREMENT BY 1;

-- Inserción del fabricante
INSERT INTO FABRICANTE (Código_Fabricante, Nombre)
VALUES (IdFabricanteAument.NEXTVAL, 'Fabricante X');

-- Definir un punto de control (savepoint)
SAVEPOINT sp_insert_fabricante;

-- Inserción del primer producto
INSERT INTO PRODUCTO (Código_Producto, Nombre, Precio, CodigoFabricante)
VALUES (IdProductoAument.NEXTVAL, 'Producto A', 100, IdFabricanteAument.CURRVAL);

-- Definir otro punto de control (savepoint)
SAVEPOINT sp_insert_producto;

-- Inserción del segundo producto
INSERT INTO PRODUCTO (Código_Producto, Nombre, Precio, CodigoFabricante)
VALUES (IdProductoAument.NEXTVAL, 'Producto B', 200, IdFabricanteAument.CURRVAL);

-- Confirmar la transacción
COMMIT;


-- Actualización del nombre del fabricante
UPDATE FABRICANTE
SET Nombre = 'INTEL'
WHERE Código_Fabricante = 1;

-- Guardar el estado de la transacción
SAVEPOINT sp_update_fabricante;

-- Actualización del primer producto
UPDATE PRODUCTO
SET Precio = 1000
WHERE Código_Producto = 1;

-- Actualización del segundo producto
UPDATE PRODUCTO
SET Precio = 2500
WHERE Código_Producto = 2;

-- Confirmar la transacción
COMMIT;

-- Eliminar productos del fabricante
DELETE FROM PRODUCTO
WHERE CodigoFabricante = 1;

-- Guardar el estado de la transacción
SAVEPOINT sp_delete_producto;

-- Eliminar fabricante
DELETE FROM FABRICANTE
WHERE Código_Fabricante = 1;

-- Confirmar la transacción
COMMIT;

