-- Criação do banco de dados hospital
create database hospital;

-- Selecionando a base de dados para utilização
use hospital;

-- Criação da tabela paciente
CREATE TABLE paciente (
    cpf DECIMAL(11),
    nome VARCHAR(80),
    rua VARCHAR(45),
    bairro VARCHAR(30),
    cidade VARCHAR(45),
    cep DECIMAL(8),
    datanasc DATE
);

-- Criação da tabela doença
CREATE TABLE doenca (
    cid VARCHAR(5) primary key,
    descricao VARCHAR(30)
);

-- Criação da tabela médico
CREATE TABLE medico (
    crm VARCHAR(6) PRIMARY KEY,
    cpf DECIMAL(11),
    nome VARCHAR(80),
    rua VARCHAR(45),
    bairro VARCHAR(30),
    cidade VARCHAR(45),
    cep DECIMAL(8)
);

-- Criação da tabela especialidade
CREATE TABLE especialidade (
    rqe VARCHAR(7) PRIMARY KEY,
    nome_especialidade VARCHAR(50)
);

-- Criação da tabela Hospital
create table hospital(
	cnpj decimal(13) primary key,
    nome VARCHAR(80),
    rua VARCHAR(45),
    bairro VARCHAR(30),
    cidade VARCHAR(45),
    cep DECIMAL(8),
    telefone varchar(15)
);
-- Adicionando a chave primária na tabela paciente
ALTER TABLE paciente add primary key(cpf);
-- Criação da tabela diagnóstico
CREATE TABLE diagnostico (
    cpf DECIMAL(11),
    crm VARCHAR(6),
    cid VARCHAR(5),
    datadiag DATE,
    PRIMARY KEY (cpf , crm , cid),
    FOREIGN KEY (cpf)
        REFERENCES paciente (cpf),
    FOREIGN KEY (crm)
        REFERENCES medico (crm),
    FOREIGN KEY (cid)
        REFERENCES doenca (cid)
);

-- Criação da tabela medico_especialidade
CREATE TABLE medico_especialidade (
    crm VARCHAR(6),
    rqe VARCHAR(7),
    PRIMARY KEY (crm , rqe),
    FOREIGN KEY (crm)
        REFERENCES medico (crm),
    FOREIGN KEY (rqe)
        REFERENCES especialidade (rqe)
);

-- Criação da tabela medico_hospital
CREATE TABLE medico_hospital (
    cnpj DECIMAL(13),
    crm VARCHAR(6),
    datainicio DATE,
    PRIMARY KEY (cnpj , crm),
    FOREIGN KEY (cnpj)
        REFERENCES hospital (cnpj),
    FOREIGN KEY (crm)
        REFERENCES medico (crm)
);
-- Inserindo três hospitais
insert into hospital values 
(1112223334445,'Hospital Unimed','Deusdedith Salgado, 456','Cascatinha','Juiz de Fora','36050100','323690-4455'),
(2223334445556, 'Santa Casa de Misericórdia','Av. Barão do Rio Branco, 1000','Centro','Juiz de Fora','36020123','323215-5566'),
(3334445556667,'Hospital de Pronto Socorro - HPS','Av. Barão do Rio Branco, 1023','Centro','Juiz de Fora','36020123','323691-5548');

-- Inserindo três doencas
insert into doenca(descricao,cid) values
('Hipertenção Arterial','I10'),
('Diabetes Mellitus','E10'),
('Alergia','T78.4');

-- Inserindo três médicos
insert into medico values
('123456',11223344556, 'José de Souza','Rua Tiradentes, 45','Centro','Juiz de Fora','36015123'),
('234567',22334455667, 'João Arnaldo','Rua Porto das Flores, 350','Santa Luzia','Juiz de Fora','36030456'),
('345678',33445566778,'Maria da Penha','Rua Florizno Peixoto, 22','Centro','Juiz de Fora','36018234');

-- Inserindo três especialidades
insert into especialidade values
('1234568','Pediatria'),
('2345679','Cardiologia'),
('3456780', 'Endocrinologia');

-- Inserindo três pacientes
insert into paciente values
(15141312110,'Maria das Dores','Rua Santo Antônio, 32','Centro','Juiz de Fora','36015324','2000-05-15'),
(16171819102,'Isaura Silva','Rua Gil Horta, 44','São Matheus','Juiz de Fora','36045123','1942-04-23'),
(17181920243,'Ronildo Vasconellos','Rua Dr. Paulo Japiassu Coelho','Cascatinha','Juiz de Fora','36078365','1982-07-18');

-- Inserindo três linhas na tabela medico_especialidade
insert into medico_especialidade values
('123456','2345679'),
('123456', '3456780'),
('234567','3456780');

-- Inserindo três linhas na tabela medico_hospital
insert into medico_hospital values
(1112223334445,'123456','2003-06-12'),
(2223334445556,'234567','1997-08-15'),
(3334445556667,'345678','2014-01-13');

-- Inserindo três linhas na tabela diagnostico
insert into diagnostico values
(15141312110,'123456', 'I10','2024-12-12'),
(16171819102,'234567','E10','2021-11-18'),
(15141312110,'345678', 'I10','2025-01-15');





