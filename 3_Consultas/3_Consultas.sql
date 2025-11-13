-- -----------------------------------------------------
-- Script 3: Consultas 
-- Propósito: Contiene las consultas SELECT .
-- -----------------------------------------------------
USE `gestion_municipal`;

-- Consulta 1: Obtener proyectos activos

SELECT COUNT(*) AS 'Proyectos Activos'
FROM Proyectos
WHERE estado = 'En curso';

-- consulta 2: calcular ppto. utilizado vs total
SELECT
    p.nombre_proyecto,
    p.presupuesto_inicial,
    SUM(pp.monto_gastado) AS 'gasto_acumulado_total',
    (p.presupuesto_inicial - SUM(pp.monto_gastado)) AS 'saldo_disponible'
FROM
    Proyectos p
JOIN
    PartidasPresupuestarias pp ON p.id_proyecto = pp.id_proyecto
GROUP BY
    p.id_proyecto;

SELECT
    SUM(presupuesto_inicial) AS 'Ppto. Inicial Total',
    (SELECT SUM(monto_gastado) FROM PartidasPresupuestarias) AS 'Gasto Acumulado Total'
FROM Proyectos;

-- consulta 3: obtener tareas atrasadas

SELECT
    p.nombre_proyecto,
    t.descripcion AS 'tarea_atrasada',
    t.fecha_vencimiento
FROM
    Tareas t
JOIN
    Proyectos p ON t.id_proyecto = p.id_proyecto
WHERE
    t.estado = 'Atrasada' OR (t.fecha_vencimiento < CURDATE() AND t.estado != 'Completada');

