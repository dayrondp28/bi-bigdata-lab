--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS gold;

--rollback DROP SCHEMA IF EXISTS gold;