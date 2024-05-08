--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
create table person (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset your.name:2 labels:example-label context:example-context
--comment: example comment
create table company (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset other.dev:3 labels:example-label context:example-context
--comment: example comment
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;



--changeset your.name:4
ALTER  TABLE  person  ADD  column nickname  varchar(30);
--rollback ALTER TABLE person DROP COLUMN nickname;


--changeset your.name:5
ALTER  TABLE  person  ADD  column c1  varchar(30);
ALTER  TABLE  person  ADD  column c2  varchar(30);
--rollback ALTER TABLE person DROP COLUMN nickname;