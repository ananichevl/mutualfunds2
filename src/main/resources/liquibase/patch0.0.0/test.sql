--liquibase formatted sql
--changeset test:1
CREATE TABLE SPDR_SP_500 (company_name VARCHAR2(50) NOT NULL , semptember_30_2016 NUMBER);