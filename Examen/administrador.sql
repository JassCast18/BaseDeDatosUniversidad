alter session set "_oracle_script"=true;

--DDL
CREATE USER lavanderia IDENTIFIED BY secreto
DEFAULT TABLESPACE SYSTEM
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON SYSTEM;

-- PRIVILEGIOS DDL
GRANT CREATE SESSION TO lavanderia;
GRANT CREATE TABLE TO lavanderia;
GRANT CREATE PROCEDURE TO lavanderia;
GRANT CREATE TRIGGER TO lavanderia;

--PRIVILEGIOS DML
GRANT INSERT ANY TABLE TO lavanderia;
GRANT DELETE ANY TABLE TO lavanderia;
GRANT UPDATE ANY TABLE TO lavanderia;
GRANT SELECT ANY TABLE TO lavanderia;

