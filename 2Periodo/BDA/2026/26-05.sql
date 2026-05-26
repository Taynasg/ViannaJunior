-- Traga o valor que a empresa gasta com os salários de seus funcionários, assim como, o valor do maior salário, o valor do menor salário e a média salarial de todos os funcionarios.

select truncate(sum(salario),0) as soma_salarial, max(salario) as maior_salario, 
min(salario) as menor_salario, round(avg(salario),0) as media_salarial
from funcionario;

-- Traga o valor que a empresa gasta com os salários de suas funcionárias, assim como, o valor do maior salário, o valor do menor salário e a média salarial delas.

select truncate(sum(salario),0) as soma_salarial, max(salario) as maior_salario, 
min(salario) as menor_salario, round(avg(salario),0) as media_salarial
from funcionario;

-- Traga o número de funcionários que trabalham na empresa.
select count(*) as num_funcionarios
from funcionario;


-- Traga a quantidade de salários distintos pagos pela empresa.
select count(distinct salario) as salarios_distintos
from funcionario;

-- Traga um relatório que mostre o gasto total da empresa com o pagamento anual dos salários dos funcionários.
select sum(salario) as gasto_anual
from funcionario;

-- Traga um relatório que mostre o gasto total da empresa com o pagamento mensal dos salários dos funcionários.
select sum(salario)/12 as gasto_anual
from funcionario;

-- Traga o número do departamento seguido da quantidade de funcionários que ele tem, desde que o departamento tenha mais de 2 funcionários.
-- Ordenando da maior para menor quantidade.
select dnr, count(*) as qdade_func
from funcionario
group by dnr
having qdade_func>2
order by qdade_func desc;


-- Traga o número do departamento seguido da quantidade de funcionários que ele tem.


-- Traga o número do departamento seguido da quantidade de funcionários que ele tem, desde que o departamento tenha mais de 2 funcionários.




-- Traga o nome e sobrenome do funcionario, juntamente com a quantidade de dependentes que ele tem.
select pnome, unome, count(*) as qdade_dep
from funcionario inner join dependente on cpf = fcpf
group by pnome, unome;

-- Traga o nome e sobrenome do funcionario, juntamente com a quantidade de dependentes que ele tem. Caso ele não tenha dependente exiba 0 na contagem.
select pnome, unome, count(fcpf) as qdade_dep
from funcionario left join dependente on cpf = fcpf
group by cpf;
