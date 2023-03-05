--liquibase formatted sql

--changeset user:1
create table person (
    id int primary key,
    name varchar(255)
);