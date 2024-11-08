--RUDY JASER SAMUEL CASTELLANOS LOPEZ 1690-22-9776
CREATE OR REPLACE TYPE Vehiculo AS OBJECT (
    matricula NUMBER,
    modelo VARCHAR2(50),
    potenciaCV number,
    
    MEMBER FUNCTION GetMatricula RETURN NUMBER,
    MEMBER FUNCTION GetModelo RETURN VARCHAR2,
    MEMBER FUNCTION GetPotenciaCV RETURN NUMBER,
    MEMBER PROCEDURE Mostrar(SELF IN OUT NOCOPY Vehiculo)
) NOT FINAL;
/
CREATE TYPE BODY Vehiculo AS
    MEMBER FUNCTION GetMatricula RETURN NUMBER IS
    BEGIN
        RETURN matricula;
    END GetMatricula;

    MEMBER FUNCTION GetModelo RETURN VARCHAR2 IS
    BEGIN
        RETURN modelo;
    END GetModelo;

    MEMBER FUNCTION GetPotenciaCV RETURN NUMBER IS
    BEGIN
        RETURN potenciaCV;
    END GetPotenciaCV;
    
    MEMBER PROCEDURE Mostrar(SELF IN OUT NOCOPY Vehiculo) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(matricula)|| modelo|| TO_CHAR(potenciaCV));
    END Mostrar;
END;
/
--En caso salga mal use la fila de abajo
--DROP TYPE BODY PERSONA;

CREATE TYPE Taxi UNDER Vehiculo (
    NumeroLicencia NUMBER,
    
    MEMBER  FUNCTION GetNumeroLicencia RETURN NUMBER,
    MEMBER PROCEDURE SetNumeroLicencia (NuevoNumeroLicencia IN NUMBER),
    OVERRIDING MEMBER PROCEDURE  Mostrar(SELF IN OUT NOCOPY Taxi)
);

CREATE TYPE BODY Taxi AS
    MEMBER FUNCTION GetNumeroLicencia RETURN NUMBER IS
    BEGIN
        RETURN NumeroLicencia;
    END GetNumeroLicencia;
    
     MEMBER PROCEDURE SetNumeroLicencia (NuevoNumeroLicencia IN NUMBER) IS
    BEGIN
        NumeroLicencia := NuevoNumeroLicencia;
    END;
    
    OVERRIDING MEMBER PROCEDURE Mostrar (SELF IN OUT NOCOPY Taxi) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(matricula)|| modelo|| TO_CHAR(potenciaCV)|| TO_CHAR(NumeroLicencia));
    END Mostrar;
END;

CREATE TYPE Autobus UNDER Vehiculo (
    NumeroPlazas NUMBER,
    
    MEMBER  FUNCTION GetNumeroPlazas RETURN NUMBER,
    MEMBER PROCEDURE SetNumeroPlazas (NuevoNumeroPlazas IN NUMBER),
    OVERRIDING MEMBER PROCEDURE  Mostrar(SELF IN OUT NOCOPY Autobus)
);

CREATE TYPE BODY Autobus AS
    MEMBER FUNCTION GetNumeroPlazas RETURN NUMBER IS
    BEGIN
        RETURN NumeroPlazas;
    END GetNumeroPlazas;
    
     MEMBER PROCEDURE SetNumeroPlazas (NuevoNumeroPlazas IN NUMBER) IS
    BEGIN
        NumeroPlazas := NuevoNumeroPlazas;
    END;
    
    OVERRIDING MEMBER PROCEDURE Mostrar (SELF IN OUT NOCOPY Autobus) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(matricula)|| modelo|| TO_CHAR(potenciaCV)|| TO_CHAR(NumeroPlazas));
    END Mostrar;
END;


CREATE TABLE TaxiTable(
    Taxi Taxi,
    Fecha Date
);

CREATE TABLE AutobusTable(
    Autobus Autobus,
    Fecha Date
);

CREATE TABLE Carretera(
    NombreCarretera varchar(100),
    Autobus Autobus,
    Taxi Taxi
);
INSERT INTO TaxiTable VALUES(Taxi(1,'2020',500,5243),SYSDATE);
INSERT INTO AutobusTable VALUES(Autobus(2,'1999',2000,30),SYSDATE);
INSERT INTO Carretera VALUES('Calzada Aguilar Batres',Autobus(2,'1999',2000,30),Taxi(1,'2020',500,5243));
SELECT * FROM TaxiTable;
SELECT * FROM AutobusTable;
SELECT * FROM Carretera;


