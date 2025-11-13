-- -----------------------------------------------------
-- Script 2: Inserción de Datos (DML)
-- Propósito: Puebla la base de datos con datos de ejemplo.
-- -----------------------------------------------------
-- Insertar Roles 
USE gestion_municipal;
INSERT INTO Roles (nombre_rol) VALUES
('Director'),
('Funcionario'),
('Alcalde');

-- Insertar Usuarios 
INSERT INTO Usuarios (nombre, email, password_hash, id_rol) VALUES
('Juan Soto', 'administrador@puyehuechile.cl', '123456', 1),
('Patricia Vidal', 'pvidal@puyehuechile.cl', '123456', 2),
('Jimena Nuñez', 'alcalde@puyehuechile.cl', '123456', 3);

-- Insertar Proyectos 
INSERT INTO Proyectos (nombre_proyecto, descripcion, fecha_inicio, presupuesto_inicial, id_usuario_responsable, estado) VALUES
('Implementación Programa Seguridad y Oportunidades', 'Gestión de proyectos del programa...', '2025-01-10', 50000000.00, 1, 'En curso'),
('Dashboard Municipal en Tiempo Real', 'Desarrollo del dashboard principal', '2025-02-15', 25402104.00, 1, 'En curso'),
('Digitalización de Procesos Administrativos', 'Migración de documentos a sistema digital', '2025-03-01', 10000000.00, 2, 'Pendiente');

-- Insertar Tareas para el proyecto 1 
INSERT INTO Tareas (id_proyecto, descripcion, fecha_vencimiento, estado) VALUES
(1, 'Levantamiento de beneficiarios', '2025-02-01', 'Completada'),
(1, 'Coordinación con equipo territorial', '2025-03-15', 'En curso'),
(1, 'Primera entrega de informe', '2025-11-10', 'Atrasada'); 

-- Insertar Gastos (Partidas) para el proyecto 2 (Dashboard) 
INSERT INTO PartidasPresupuestarias (id_proyecto, descripcion_gasto, monto_gastado, fecha_gasto) VALUES
(2, 'Licencias de software (Chart.js, etc)', 1500000.00, '2025-02-20'),
(2, 'Servicios Cloud (Hosting/Servidor)', 3000000.00, '2025-03-01'),
(2, 'Compra de equipo análisis', 10000000.00, '2025-03-05');
