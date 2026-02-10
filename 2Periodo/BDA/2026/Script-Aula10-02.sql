-- Criando o banco de dados universidade
create database if not exists universidade;

-- Selecionando banco de dados
use universidade;

-- Criando a tabela aluno
CREATE TABLE aluno (
    nome VARCHAR(30) NOT NULL,
    matricula DECIMAL(4),
    tipo_aluno INTEGER,
    curso VARCHAR(3)
);
-- Mostrando descrição da tabela aluno
desc table aluno;

CREATE TABLE curso (
    codigo_curso VARCHAR(3),
    nome VARCHAR(45)
)

-- Criando o banco de dados hospital
create schema hospital;

-- Selecionando banco de dados
use hospital;

CREATE TABLE paciente (
    cpf DECIMAL(11) NOT NULL,
    rg VARCHAR(13),
    nome VARCHAR(45) NOT NULL,
    rua VARCHAR(60),
    bairro VARCHAR(20),
    cidade VARCHAR(30),
    uf CHAR(2),
    cep NUMERIC(8),
    datanasc DATE NOT NULL,
	unique(cidade, uf) -- impede que o conjunto se repita no registro 
);

-- Mostrando descrição da tabela paciente
desc paciente