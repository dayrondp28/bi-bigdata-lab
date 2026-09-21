--liquibase formatted sql

--changeset estudiante:005
CREATE TABLE IF NOT EXISTS workspace.bi_staging_dayron.stg_usuarios (
    id INT,
    nombre VARCHAR(100),
    fecha_extraccion TIMESTAMP
);
--rollback DROP TABLE IF EXISTS workspace.bi_staging_dayron.stg_usuarios;