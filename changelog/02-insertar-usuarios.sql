--liquibase formatted sql

--changeset estudiante:004
INSERT INTO workspace.bi_lab_dayron.usuarios_laboratorio (id, nombre, fecha_creacion)
VALUES 
(1, 'Dayron Diaz', CURRENT_TIMESTAMP),
(2, 'Usuario Prueba', CURRENT_TIMESTAMP);
--rollback DELETE FROM workspace.bi_lab_dayron.usuarios_laboratorio WHERE id IN (1, 2);