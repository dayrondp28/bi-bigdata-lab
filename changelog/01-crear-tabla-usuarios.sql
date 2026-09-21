--liquibase formatted sql

--changeset estudiante:003
CREATE TABLE workspace.bi_lab_dayron.usuarios_laboratorio (
    id INT,
    nombre VARCHAR(100),
    fecha_creacion TIMESTAMP
);
--rollback DROP TABLE IF EXISTS workspace.bi_lab_dayron.usuarios_laboratorio;
--include file="changelog/01-crear-tabla-usuarios.sql"