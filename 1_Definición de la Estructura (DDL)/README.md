## 1. Definición de la Estructura (DDL)

Esta carpeta contiene el script de Lenguaje de Definición de Datos (DDL).

## 📜 Archivo

1_Definición de la Estructura.sql

## 🎯 Propósito

El propósito de este script es crear la estructura fundamental de la base de datos gestion_municipal.

Acciones que realiza:

CREATE SCHEMA IF NOT EXISTS gestion_municipal;

USE gestion_municipal;

CREATE TABLE Roles;

CREATE TABLE Usuarios;

CREATE TABLE Proyectos;

CREATE TABLE Tareas;

CREATE TABLE PartidasPresupuestarias;

Este script define todas las columnas, tipos de datos, PRIMARY KEY (claves primarias) y FOREIGN KEY (claves foráneas) que establecen las relaciones entre las tablas.

## 🏃‍♂️ Ejecución

Este script debe ser el primero en ejecutarse y solo debe correrse una vez para construir el esqueleto de la base de datos.