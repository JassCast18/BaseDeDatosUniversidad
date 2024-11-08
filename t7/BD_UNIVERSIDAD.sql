CREATE OR REPLACE TYPE PERSONA AS OBJECT (
    CODIGO_PERSONA NUMBER,
    NOMBRE VARCHAR2(100),  -- Especifica el tama�o del VARCHAR2
    
    MAP MEMBER FUNCTION GET_CODIGO_PERSONA RETURN NUMBER,
    MEMBER FUNCTION GET_NOMBRE RETURN VARCHAR2,
    MEMBER PROCEDURE MOSTRAR(SELF IN OUT NOCOPY PERSONA)
) NOT FINAL;
/
CREATE OR REPLACE TYPE BODY PERSONA AS
    MEMBER FUNCTION GET_CODIGO_PERSONA RETURN NUMBER IS
    BEGIN
        RETURN CODIGO_PERSONA;
    END GET_CODIGO_PERSONA;

    MEMBER FUNCTION GET_NOMBRE RETURN VARCHAR2 IS
    BEGIN
        RETURN NOMBRE;
    END GET_NOMBRE;

    MEMBER PROCEDURE MOSTRAR(SELF IN OUT NOCOPY PERSONA) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(CODIGO_PERSONA) || ' ' || NOMBRE);
    END MOSTRAR;
END;
/

--DROP TYPE BODY PERSONA;

CREATE OR REPLACE TYPE EMPLEADO UNDER PERSONA (
    CODIGO_EMPLEADO NUMBER,
    
    MEMBER  FUNCTION GET_CODIGO_EMPLEADO RETURN NUMBER,
    OVERRIDING MEMBER PROCEDURE  MOSTRAR(SELF IN OUT NOCOPY EMPLEADO)
);

CREATE TYPE BODY EMPLEADO AS
    MEMBER FUNCTION GET_CODIGO_EMPLEADO RETURN NUMBER IS
    BEGIN
        RETURN CODIGO_EMPLEADO;
    END;
    OVERRIDING MEMBER PROCEDURE MOSTRAR (SELF IN OUT NOCOPY EMPLEADO) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(CODIGO_PERSONA|| NOMBRE || CODIGO_EMPLEADO));
    END MOSTRAR;
END;

--DROP TYPE BODY EMPLEADO

CREATE TABLE COLABORADOR(
    Empleado EMPLEADO,
    Fecha Date
);

INSERT INTO COLABORADOR VALUES(EMPLEADO(1,'Jaser',1),SYSDATE);

SELECT * FROM COLABORADOR;

