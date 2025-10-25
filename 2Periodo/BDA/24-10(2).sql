-- Recupere o parentesco dos dependentes. Elimine as linhas duplicadas (4 linhas retornadas).
select distinct parentesco from dependente;
-- Recupere o nível de graduação dos cargos. Elimine as linhas duplicadas (5 linhas retornadas).
select distinct nivel_graduacao from cargo;
-- Recupere os nomes e o sexo de todos os empregados lotados no departamento 306 cujos nomes 
-- contêm a letra “a” ordenados alfabeticamente.(2 linhas retornadas)
select nome, sexo 
	from empregado 
join departamento on empregado.codigo_dep = departamento.codigo_dep 
	where departamento.codigo_dep = 306 and nome like "%a";
    -- Recupere a data de nascimento e o nome de todos os empregados do sexo feminino ordenados por data
-- de nascimento descendentemente.(4 linhas retornadas)
-- Recupere o nome dos empregados que não tem dependente. Use NOT IN.(5 linhas retornadas)
-- Recupere o nome dos empregados que não tem dependente. Use junção externa.(5 linhas retornadas)
-- Recupere todas as informações do(s) empregado(s) que não trabalham no Rio de Janeiro. 
-- Use NOT IN.(5 linhas retornadas)
-- Recupere o nome dos cargos que estão ocupados por algum empregado. Use IN.(9 linhas retornadas)

