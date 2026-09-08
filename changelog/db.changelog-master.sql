--liquibase formatted sql
--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_<dayron>
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';
--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_<dayron>;