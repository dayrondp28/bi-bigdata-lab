--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_dayron
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';
--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_dayron;

--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_dayron
COMMENT 'Staging schema - BI and Big Data - Lab 03';
--rollback DROP SCHEMA IF EXISTS workspace.bi_staging_dayron;

--changeset estudiante:003
CREATE TABLE IF NOT EXISTS workspace.bi_lab_dayron.usuarios_laboratorio (
    id INT,
    nombre VARCHAR(100),
    fecha_creacion TIMESTAMP
);
--rollback DROP TABLE IF EXISTS workspace.bi_lab_dayron.usuarios_laboratorio;

--changeset estudiante:004
INSERT INTO workspace.bi_lab_dayron.usuarios_laboratorio (id, nombre, fecha_creacion)
VALUES 
(1, 'Dayron Diaz', CURRENT_TIMESTAMP),
(2, 'Usuario Prueba', CURRENT_TIMESTAMP);
--rollback DELETE FROM workspace.bi_lab_dayron.usuarios_laboratorio WHERE id IN (1, 2);

--changeset estudiante:005
CREATE TABLE IF NOT EXISTS workspace.bi_staging_dayron.stg_usuarios (
    id INT,
    nombre VARCHAR(100),
    fecha_extraccion TIMESTAMP
);
--rollback DROP TABLE IF EXISTS workspace.bi_staging_dayron.stg_usuarios;