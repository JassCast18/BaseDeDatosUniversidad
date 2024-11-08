alter session set "_oracle_script"=true;

--DDL
CREATE USER tarea8 IDENTIFIED BY toor
DEFAULT TABLESPACE SYSTEM
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON SYSTEM;

-- PRIVILEGIOS DDL
GRANT CREATE SESSION TO tarea8;
GRANT CREATE TABLE TO tarea8;
GRANT CREATE PROCEDURE TO tarea8;
GRANT CREATE TRIGGER TO tarea8;

--PRIVILEGIOS DML
GRANT INSERT ANY TABLE TO tarea8;
GRANT DELETE ANY TABLE TO tarea8;
GRANT UPDATE ANY TABLE TO tarea8;
GRANT SELECT ANY TABLE TO tarea8;

GRANT CREATE TYPE TO tarea8;
GRANT CREATE SEQUENCE TO tarea8;