## 2. Inserción de Datos (DML)

Esta carpeta contiene el script de Lenguaje de Manipulación de Datos (DML) enfocado en la inserción.

## 📜 Archivo

2_inserción de Datos.sql

## 🎯 Propósito

El propósito de este script es poblar las tablas (creadas en el paso anterior) con datos de ejemplo realistas. Esto permite que la base de datos sea funcional y que las consultas devuelvan resultados.

Acciones que realiza:

INSERT INTO Roles ...

INSERT INTO Usuarios ...

INSERT INTO Proyectos ...

INSERT INTO Tareas ...

INSERT INTO PartidasPresupuestarias ...

## 🏃‍♂️ Ejecución

Este script debe ejecutarse después de 1_Definición de la Estructura.sql. Puede ejecutarse varias veces, pero hacerlo insertará datos duplicados (a menos que existan restricciones UNIQUE que lo impidan).