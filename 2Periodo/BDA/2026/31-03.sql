-- Ordem de execução
-- FROM --> WHERE --> SELECT  
-- Exemplo em algebra relacional
--         SELECT                  WHERE                                FROM
-- π nome_dependente(σ funcionario.sexo='F' and cpf=fcpf(funcionario x dependente))

-- 1 Traga a lista dos nomes dos dependentes de cada funcionária.
-- Rascunho 
-- Colunas(π/select): nome_dependente
-- Tabelas(x /,): dependente, funcionario
-- Condição(σ/where): sexo = f
-- Junção(σ/where): cpf = fcpf

-- Álgebra relacional:
-- π nome_dependente(σ funcionario.sexo='F' and cpf=fcpf(funcionario x dependente))
-- SQL
select nome_dependente from dependente, funcionario where funcionario.sexo = 'f' and cpf = fcpf ;

-- 2 Recuperar os nomes dos funcionários juntamente com o nome dos departamentos em que eles trabalham
-- Rascunho 
-- Colunas(π/select): pnome, unome, dnome
-- Tabelas(x /,): funcionario, departamento
-- Condição(σ/where): -
-- Junção(σ/where): dnr = dnumero

-- Álgebra relacional:
-- π pnome, unome, dnome(σ dnr=dnumero(funcionario x departamento))
-- SQL
select pnome, unome, dnome from funcionario, departamento where dnr=dnumero;

-- 3 Recuperar os nomes dos funcionários juntamente com o nome dos projetos em que eles trabalham.
-- Rascunho 
-- Colunas(/select): pnome, unome, projnome
-- Tabelas(/,): funcionario, projeto, trabalha_em
-- Condição(/where): -
-- Junção(/where): cpf = fcpf and pnr=projnumero

-- Álgebra relacional:
-- π pnome, unome, projnome(cpf=fcpf and pnr=projnumero(funcionariotrabalha_emprojeto))
-- SQL
select pnome, unome, projnome from funcionario, trabalha_em, projeto where pnr=projnumero and cpf = fcpf;
