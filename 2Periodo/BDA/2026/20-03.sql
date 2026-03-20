-- 1 BANCO HOSPITAL
select * from paciente where bairro != "centro";
-- σ bairro !='centro'(paciente)

select * from doenca where descricao is null;
-- σ descricao is null(doenca)

select * from hospital where bairro = "são mateus" and cidade = "Juiz de Fora";
-- σ bairro = 'são mateus' and cidade ='Juiz de Fora'(hospital)

select * from medico where rua = 'Av. Barão do Rio Branco';
-- σ rua ='Av. Barão do Rio Branco' (medico)

select * from paciente where datanasc > '1990-01-01';
-- σ datanasc >  1990-01-01 (paciente);

select * from especialidade where especialidade ='Dermatologia';
-- σ especialidade ='Dermatologia' (medico)

select * from diagnostico where cpf = '12345678901';
-- σ cpf ='12345678901' (diagnostico)

select * from medico_hospital where dataInicio >= '2000-01-01' and  dataInicio <= '2003-02-08';
-- σ dataInicio >= '2000-01-01' and  dataInicio <= '2003-02-08' (medico_hospital)

-- 2 BANCO EMPRESA
use empresa;

-- funcionario
select * from funcionario where cpf_supervisor is null;
-- σ cpf_supervisor is null (funcionario)

select * from funcionario where sexo != 'F';
-- σ sexo != 'F'(funcionario)

select * from funcionario where cpf_supervisor is not null || salario >35000;
-- σ cpf_supervisor is null or salario > 35000(funcionario)

select * from funcionario where sexo = 'M' && datanasc> '1962-01-01' ;
-- σ sexo = 'M' and datanasc> '1962-01-01'(funcionario)

select * from funcionario where unome = 'Silva' ||pnome = 'Jorge' ;
-- σ  unome = 'Silva' or pnome = 'Jorge'(funcionario)

select * from funcionario where dnr is null;
-- σ dnr is null(funcionario)

-- departamento
select * from departamento where cpf_gerente is not null;
-- σ cpf_gerente is not null(departamento)

select * from departamento where dnome = 'Matriz';
-- σ dnome = 'Matriz' (departamento)

select * from departamento where data_inicio_gerente is null;
-- σ data_inicio_gerente is null (departamento)

-- dependente
select * from dependente where parentesco ='Esposa';
-- σ parentesco ='Esposa' (dependente)

select * from dependente where parentesco ='Esposa' or parentesco ='Filha';
-- σ parentesco ='Esposa'  or parentesco ='Filha' (dependente)


select * from dependente where fcpf =12345678966;
-- σ fcpf =12345678966 (dependente)

select * from dependente where sexo ='M' or parentesco ='Filho';
-- σ sexo ='M' or parentesco ='Filho' (dependente)

-- projeto
select * from projeto where projlocal = 'São Paulo';
-- σ projlocal = 'São Paulo' (projeto)

select * from projeto where projlocal = 'São Paulo' and dnum =1 or projlocal = 'São Paulo' and dnum = 5;
-- σ projlocal = 'São Paulo' and dnum =1 or projlocal = 'São Paulo' and dnum = 5 (projeto)

--  localizacao_dep
select * from localizacao_dep where dlocal = 'São Paulo';
-- σ dlocal = 'São Paulo' (localizacao_dep)

select * from localizacao_dep where dlocal = 'São Paulo' and dnumero =1 or dlocal = 'São Paulo' and dnumero = 5;
-- σ dlocal = 'São Paulo' and dnumero =1 or dlocal = 'São Paulo' and dnumero = 5 (localizacao_dep)

--  trabalha_em
select * from trabalha_em where horas > 20;
-- σ horas > 20 (trabalha_em)

select * from trabalha_em where horas > 10 or pnr = 3;
-- σ horas > 10 or pnr = 3 (trabalha_em)

select * from trabalha_em where fcpf = 98765432168 and pnr = 30;
-- σ fcpf = 98765432168 and pnr =30
