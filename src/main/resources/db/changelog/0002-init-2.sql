--liquibase formatted sql

--changeset user:2
create table keyvalue (
    name varchar(255) primary key,
    val json
);