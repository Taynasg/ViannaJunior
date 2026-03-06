-- Criando a base de dados
create schema hospital;
use hospital;

-- Criando tabela paciente
create TABLE paciente(
cpf DECIMAL(11) primary key,
rg varchar(13),
nome varchar(45) not null,
rua varchar(60),
bairro varchar(20),
cidade varchar(30),
cep numeric(8),
dataNasc date not null
);

-- Criando tabela doenca
create table doenca(
cid varchar(5) primary key,
descricao varchar(50)
);

-- Criando tabela médico
create TABLE medico(
crm DECIMAL(5) primary key,
nome varchar(45) not null,
rua varchar(60),
bairro varchar(20),
cidade varchar(30),
cep numeric(8)
);

-- Criando tabela diagnostico
CREATE TABLE diagnostico (
    cpf DECIMAL(11),
    crm DECIMAL(5),
    cid VARCHAR(5) NOT NULL,
    dataDiag DATE,
    PRIMARY KEY (cpf , crm , cid),
    FOREIGN KEY (cpf)
        REFERENCES paciente (cpf)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_med_diag FOREIGN KEY (crm)
        REFERENCES medico (crm),
    CONSTRAINT fk_doenca_diag FOREIGN KEY (cid)
        REFERENCES doenca(cid)
        ON DELETE CASCADE ON UPDATE RESTRICT
);

-- Criando tabela especialidade
CREATE TABLE especialidade (
    rqe decimal(5) PRIMARY KEY,
    nome_especialidade VARCHAR(10)
);

-- Criando tabela hospital
CREATE TABLE hospital (
    cnpj DECIMAL(13) PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    rua VARCHAR(60),
    bairro VARCHAR(20),
    cidade VARCHAR(30),
    cep NUMERIC(8),
    telefone VARCHAR(15)
);
-- Criando tabela medico_especialidade
create table medico_especialidade(
crm decimal(5),
rqe decimal(5),
datanasc date,
primary key(crm,rqe)
);

-- Criando tabela medico_hospital
create table medico_hospital(
crm decimal(5),
cnpj decimal(13),
dataInicio date,
primary key(crm,cnpj)
);

-- Criando as chaves estrangeiras da tabela medico_especialidade
alter table medico_especialidade add foreign key(crm) references medico(crm) 
on delete cascade on update cascade, 
add foreign key(rqe) references especialidade(rqe);

-- Criando as chaves estrangeiras da tabela medico_hospital
alter table medico_hospital add foreign key(crm) references medico(crm) 
on delete cascade on update cascade, 
add foreign key(cnpj) references especialidade(rqe);

set sql_safe_updates = 0;

/*Fazendo 3 inserções na tabela especialidade*/
insert into especialidade(rqe, nome_espec) values
(12345,'Cardiologia'),
(23456,'Urologia'),
(34567,'Ginecologia');

/*Alterando a tipagem da coluna cep para varchar(10)*/
alter table paciente modify cep varchar(10);

set sql_safe_updates = 0;
delete from paciente;

/*Nenhuma linha da tabela paciente
Excluir os pacientes que moram no Rio de Janeiro*/
delete from paciente where cidade='Rio de Janeiro';

/*Uma linha de qualquer tabela
Excluir a doenca Esquizofrenia*/
delete from doenca where descricao='Esquizofrenia';

/*Duas linhas de qualquer tabela
Excluir o dignostico da doenca J01.1*/
delete from diagnostico where cid='J01.1';

/*Excluir todas as linhas de qualquer tabela*/
delete from diagnostico;  

/*UPDATE*/

/*Nenhuma linha da tabela hospital
Atualizar a cidade dos hospitais do bairro Santa Luzia para Petrópolis*/
update hospital set cidade='Petrópolis' where bairro='Santa Luzia';

/*Uma linha da tabela especialidade
Atualizar o nome da especialidade Neurologia para Neuro e codigo para 2840*/
update especialidade 
set rqe=2740, especialidade='Neuro'
where especialidade='Neurologia';