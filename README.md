## Proyecto Portafolio - Módulo 5: Fundamentos de Bases de Datos

Este directorio contiene toda la evidencia correspondiente al Módulo 5: Fundamentos de bases de datos relacionales. El objetivo es implementar una base de datos relacional funcional desde cero para el proyecto de portafolio.

El proyecto utiliza MySQL y ha sido gestionado con MySQL Workbench.

## Competencias demostradas

Este proyecto cumple con todos los requisitos funcionales del módulo:

Diseño: Se elaboró un modelo de datos y un Diagrama Entidad-Relación (ver carpeta 5_Diagrama).

DDL (Definición): Se implementaron las estructuras de datos (CREATE TABLE) con sus relaciones y claves (ver carpeta 1_Definición...).

DML (Manipulación): Se insertaron (INSERT), actualizaron (UPDATE) y eliminaron (DELETE) datos (ver carpetas 2_Inserción... y 4_Ejemplos...).

SQL (Consulta): Se utilizaron consultas SELECT con JOIN y GROUP BY para obtener información relevante (ver carpeta 3_Consultas...).

## 🗂️ Estructura de carpetas

El repositorio está organizado en carpetas numeradas que siguen el flujo de trabajo lógico para construir y probar la base de datos.

1_Definición de la Estructura (DDL)/: Contiene el script para crear el schema y todas las tablas.

2_Inserción de Datos/: Contiene el script para poblar las tablas con datos de ejemplo.

3_Consultas/: Contiene los scripts SELECT para obtener la información que se mostraría en el dashboard.

4_Ejemplos de Modificación (DML)/: Contiene ejemplos de UPDATE y DELETE para mantener los datos.

5_-Diagrama/: Contiene el Diagrama Entidad-Relación (ER) que sirve como plano para la base de datos.

## 🚀 Orden de ejecución recomendada

Para recrear la base de datos, los scripts SQL deben ejecutarse en el siguiente orden:

Script 1: 1_Definición de la Estructura (DDL) (Solo se corre una vez para crear todo).

Script 2: 2_Inserción de Datos (Para poblar las tablas).

Script 3: 3_Consultas (Para probar que las consultas funcionen).

Script 4: 4_Ejemplos de Modificación (DML) (Opcional, para probar la modificación de datos).
