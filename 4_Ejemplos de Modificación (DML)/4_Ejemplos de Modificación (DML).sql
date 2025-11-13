-- -----------------------------------------------------
-- Script 4: Ejemplos de Modificación (DML)
-- Propósito: Demuestra cómo usar UPDATE y DELETE.
-- Ejecutar este script opcionalmente para probar.
-- -----------------------------------------------------

USE `gestion_municipal`;

-- UPDATE 
-- Primero, vemos la tarea
SELECT * FROM Tareas WHERE id_tarea = 2;

-- Ahora la actualizamos
UPDATE Tareas
SET
    estado = 'Completada'
WHERE
    id_tarea = 2; 


-- DETELE    
-- verificar qué se va a borrar primero con un SELECT!
SELECT * FROM PartidasPresupuestarias WHERE id_partida = 3;

-- Si es correcto, eliminar
DELETE FROM PartidasPresupuestarias
WHERE id_partida = 3;
