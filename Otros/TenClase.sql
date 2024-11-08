--RUDY JASER SAMUEL CASTELLANOS LOPEZ 1690-22-9776
--INGENIERIA EN SISTEMAS
create table CUENTA(
    IdCuenta int primary key,
    nombreCuenta varchar(80),
    saldo number(12,2)
);
--PUNTO INICIAL
INSERT INTO CUENTA VALUES(1,'Ricarby', 30000);
INSERT INTO CUENTA VALUES(2, 'Mark',2000);

CREATE OR REPLACE PROCEDURE transferir_dinero(
    p_id_cuenta_origen IN INT,
    p_id_cuenta_destino IN INT,
    p_monto IN NUMBER
) AS
    v_saldo_origen   NUMBER(12,2);
    v_saldo_destino  NUMBER(12,2);
BEGIN
    -- Comenzar la transacción
    SAVEPOINT inicio_transaccion;

    -- Obtener el saldo actual de la cuenta de origen
    SELECT saldo INTO v_saldo_origen FROM CUENTA WHERE IdCuenta = p_id_cuenta_origen;

    -- Verificar si el monto solicitado es mayor que el saldo disponible
    IF p_monto > v_saldo_origen THEN
        RAISE_APPLICATION_ERROR(-20001, 'Transacción no permitida: el monto solicitado excede el saldo disponible en la cuenta de origen.');
    END IF;

    -- Obtener el saldo actual de la cuenta de destino
    SELECT saldo INTO v_saldo_destino FROM CUENTA WHERE IdCuenta = p_id_cuenta_destino;

    -- Realizar la transferencia
    UPDATE CUENTA SET saldo = saldo - p_monto WHERE IdCuenta = p_id_cuenta_origen;
    UPDATE CUENTA SET saldo = saldo + p_monto WHERE IdCuenta = p_id_cuenta_destino;

    -- Confirmar los cambios
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Revertir a savepoint en caso de error
        ROLLBACK TO inicio_transaccion;
        RAISE;
END transferir_dinero;
/


-- TRANSFERIMOS
BEGIN
    transferir_dinero(1, 2, 200);
END;
/

select * From cuenta;

-- TRANSFERIMOS ESTE DEBERIA DAR ERROR
BEGIN
    transferir_dinero(2, 1, 2201);
END;
/

