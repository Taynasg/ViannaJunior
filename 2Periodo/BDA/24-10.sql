-- Traga todas as informações dos funcionários que residem em São Paulo, SP
select *
from funcionario
where endereco like '%sao paulo, sp%';

-- Encontrar todos os funcionários em que o primeiro nome tem 2 caracteres quaisquer seguido de ice
select *
from funcionario
where pnome like '__ice';


-- Traga todas as informações dos funcionários cujo primeiro nome tenha apenas 4 letras
select *
from funcionario
where pnome like '____';

Encontre os funcionários que ganham entre 25000 e 40000.
select *
from funcionario
where salario between 25000 and 40000;

-- Encontre os funcionários que não ganham entre 25000 e 40000.
select *
from funcionario
where salario not between 25000 and 40000;
-- Recupere o nome e o número do departamento dos funcionários que trabalham nos departamentos 5,4 ou 1
select pnome, unome, dnr
from funcionario
where dnr=5 or dnr=4 or dnr=1;

select pnome, unome, dnr
from funcionario
where dnr in(5,4,1);

-- Recupere o nome dos funcionários e o nome dos departamentos dos funcionários que trabalham nos departamento de pesquisa, matriz ou administração.
select pnome, unome, dnome
from funcionario inner join departamento on dnr = dnumero
where dnome in('Matriz','Administração','Pesquisa');

-- Traga todas as informações dos funcionários que trabalham no departamento 5 ordenando do maior para o menor salario.
select *
from funcionario
where dnr=5
order by salario desc;



-- Recupere o nome dos funcionários que possuem dependentes.
	select *
from funcionario
where cpf in (select fcpf from dependente);

/*ou*/
select distinct f.*
from funcionario f inner join dependente d on cpf = fcpf;


-- Recupere as informações dos funcionários que não possuem dependente.

select *
from funcionario
where cpf not in (select fcpf from dependente);

/*ou*/
select f.*
from funcionario f left join dependente d on cpf = fcpf
where fcpf is null;

-- Recupere o nome e sobrenome dos funcionários que não estão associados a projetos. Ordene 
-- alfabeticamente pelo nome do funcionário.
