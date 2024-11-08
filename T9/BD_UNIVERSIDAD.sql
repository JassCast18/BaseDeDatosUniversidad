CREATE TABLE estudiante (
    Id_Estudiante int primary key,
    Nombre varchar(20),
    Apellido varchar(30),
    FechaNacimiento Date
);

CREATE INDEX idx_estudiante ON estudiante(Id_Estudiante);

CREATE INDEX idx_nombre_estudiante ON estudiante(Nombre);

--INDEX COMPUESTO
CREATE INDEX idx_nombre_apellido_estudiante ON estudiante (nombre, apellido);

--Consulta de Restricciones
SELECT * FROM user_constraints WHERE owner='BASE_DATOSI';

--CONSULTAR INDEX EXISTENTES
SELECT * FROM all_indexes;

SELECT * FROM all_indexes WHERE owner='BASE_DATOSI' ;
SELECT * FROM all_indexes WHERE owner='BASE_DATOSI' AND TABLE_NAME='ESTUDIANTE';

