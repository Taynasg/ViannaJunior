select pnome,projnome, horas from funcionario inner join trabalha_em on cpf = fcpf  inner join projeto on pnr = projnumero;

-- 3 Recuperar o nome dos empregados juntamente com o nome dos dependentes que eles possuem. 
select pnome,nome_dependente from funcionario inner join dependente on cpf = fcpf;

-- 4 Recuperar o nome do funcionario, o nome dos projetos para os funcionários que trabalham mais de 20 horas em determinado projeto.
select pnome,projnome from funcionario inner join trabalha_em on cpf = fcpf  inner join projeto on pnr = projnumero where horas>20;

-- 5 Recupere o nome dos dependentes de cada funcionária.
select nome_dependente from dependente inner join funcionario f on cpf = fcpf where f.sexo = 'f';


-- 6 Recupere o nome do departamento e sua localização
select dnome, dlocal from departamentp  d inner join localizacao_dep l on d.dnumero = l.dnumero;


