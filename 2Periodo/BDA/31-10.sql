Traga o número de funcionários que trabalham na empresa.
select count(*)as qdade_func
from funcionario;

Traga a quantidade de salários distintos pagos pela empresa.
select count(distinct salario) as salario_dif
from funcionario;
	
Traga o média salarial, o menor e o maior salário dos funcionários da empresa.
select round(avg(salario),0) as media, min(salario) as minimo, max(salario) as maximo
from funcionario;

/*Função round realiza o arrendondamento do número, parâmetros -> o número
e a quantidade de casas decimais.
Função truncate realiza o truncamento do número,parâmetros -> o número
e a quantidade de casas decimais.*/

Traga um relatório que mostre o gasto total da empresa com o pagamento anual dos salários dos funcionários.
select sum(salario) as valor_total
from funcionario;



Traga um relatório que mostre o gasto total da empresa com o pagamento mensal dos salários dos funcionários.
select truncate(sum(salario)/12,2) as valor_total
from funcionario;


Traga o número do departamento seguido da quantidade de funcionários que ele tem.
	select dnr, count(*) as qdade
from funcionario
where dnr is not null
group by dnr;

Traga o número do departamento seguido da quantidade de funcionários que ele tem, desde que o departamento tenha mais de 2 funcionários.
select dnr, count(*) as qdade
from funcionario
where dnr is not null
group by dnr
having count(*)>2
order by qdade desc;




/*Traga o nome e sobrenome do funcionario, juntamente com a quantidade de dependentes que ele tem.*/
select pnome, unome, count(*) as qdade_dep
from funcionario inner join dependente on cpf = fcpf
group by pnome, unome;

/*Traga o nome e sobrenome do funcionario, juntamente com a quantidade de dependentes que ele tem. 
Caso ele não tenha dependente exiba 0 na contagem.*/
select pnome, unome, count(fcpf) as qdade_dep
from funcionario left join dependente on cpf = fcpf
group by cpf;


