-- Relação funcionario
SELECT * FROM empresa.funcionario;
SELECT * FROM funcionario WHERE cpf_supervisor  is null;
SELECT * FROM funcionario WHERE sexo != 'f';
SELECT * FROM funcionario WHERE cpf_supervisor  is not null || salario > 35000;
SELECT * FROM funcionario WHERE sexo = 'm' && datanasc > '1962-01-01';
SELECT * FROM funcionario WHERE unome = 'Silva' || pnome = 'Jorge';
SELECT * FROM funcionario WHERE dnr is null;

-- Relação departamento
SELECT * FROM departamento WHERE cpf_gerente is not null;
SELECT * FROM departamento WHERE dnome ='Matriz';
SELECT * FROM departamento WHERE data_inicio_gerente is null;

-- Relação Dependente
SELECT * FROM dependente WHERE parentesco ='Esposa';
SELECT * FROM dependente WHERE parentesco ='Esposa'|| parentesco = 'Filha';
SELECT * FROM dependente WHERE fcpf= 12345678966;
SELECT * FROM dependente WHERE parentesco ='Filho'|| sexo = 'M';

-- Relação Projeto
SELECT * FROM projeto WHERE projlocal ='São Paulo';
SELECT * FROM projeto WHERE projlocal ='São Paulo' && projnumero = 5 || projnumero = 1 ;

-- Relação Trabalha_em
SELECT * FROM trabalha_em WHERE horas > 20;
SELECT * FROM trabalha_em WHERE horas > 10 || pnr = 3;
SELECT * FROM trabalha_em WHERE fcpf = 98765432168 && pnr = 30;