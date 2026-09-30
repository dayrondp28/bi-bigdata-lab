--liquibase formatted sql

--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS staging;

--rollback DROP SCHEMA IF EXISTS staging;