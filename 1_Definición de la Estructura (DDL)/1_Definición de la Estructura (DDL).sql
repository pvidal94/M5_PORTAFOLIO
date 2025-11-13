-- -----------------------------------------------------
-- Script 1: Definición de la Estructura (DDL)
-- Propósito: Crea el schema y todas las tablas.
-- Ejecutar este script PRIMERO y SÓLO UNA VEZ.
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `gestion_municipal` DEFAULT CHARACTER SET utf8mb4 ;
USE gestion_municipal;

-- 1. tabla de roles 
CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE COMMENT 'Ej: Alcalde, Director, Funcionario'
);

-- 2. tabla de Usuarios 
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL COMMENT 'En una app real, NUNCA guardes texto plano',
    id_rol INT,
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol)
);

-- 3. tabla de Proyectos 
CREATE TABLE Proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin_estimada DATE,
    presupuesto_inicial DECIMAL(12, 2) COMMENT 'Basado en Ppto. inicial total',
    id_usuario_responsable INT,
    estado VARCHAR(50) DEFAULT 'En curso' COMMENT 'Ej: En curso, Completado, Atrasado',
    FOREIGN KEY (id_usuario_responsable) REFERENCES Usuarios(id_usuario)
);
-- 4. tabla de Tareas 
CREATE TABLE Tareas (
    id_tarea INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha_vencimiento DATE,
    estado VARCHAR(50) DEFAULT 'Pendiente' COMMENT 'Ej: Pendiente, En curso, Completada, Atrasada',
    FOREIGN KEY (id_proyecto) REFERENCES Proyectos(id_proyecto) ON DELETE CASCADE
    -- ON DELETE CASCADE significa que si se borra un proyecto, se borran sus tareas
);

-- 5. tabla de partidas presupuestarias 
CREATE TABLE PartidasPresupuestarias (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    descripcion_gasto VARCHAR(255) NOT NULL,
    monto_gastado DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    fecha_gasto DATE,
    FOREIGN KEY (id_proyecto) REFERENCES Proyectos(id_proyecto) ON DELETE CASCADE
);
