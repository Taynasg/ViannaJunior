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
