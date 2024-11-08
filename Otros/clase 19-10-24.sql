CREATE TABLE LIBROS (
CODIGO_LIBRO NUMBER,
NOMBRE_LIBRO VARCHAR(30),
CANTIDAD NUMBER,
PRECIO NUMBER(10,2)
);

CREATE FUNCTION INCREMENTAR_PRECIO(V_PORCENTAJE IN NUMBER, V_PRECIO IN NUMBER)
RETURN NUMBER
IS
BEGIN
RETURN V_PRECIO+(V_PRECIO*V_PORCENTAJE);
END;

INSERT INTO LIBROS VALUES(2,'PROGRAMACION',200,500.00);

SELECT codigo_libro, nombre_libro,precio,INCREMENTAR_PRECIO(25,precio) as "VALOR INCREMENTADO" from libros;

ALTER TABLE LIBROS
ADD EDITORIAL VARCHAR(30);

DESCRIBE LIBROS;