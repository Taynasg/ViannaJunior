-- QUESTÃO 01: Traga o nome de todos os filmes, os que foram locados por algum cliente, traga também 
-- o nome do cliente. Traga também o nome de todos os clientes, os que locaram  ou não filmes,
 -- caso tenha locado o nome do filme deverá aparecer (52 linhas retornadas). 
select titulo, nome_cliente
from filme f left join locacao l on f.codigo_filme = l.codigo_filme
left join cliente c on c.codigo_cliente = l.codigo_cliente
union
select titulo, nome_cliente
from filme f right join locacao l on f.codigo_filme = l.codigo_filme
right join cliente c on c.codigo_cliente = l.codigo_cliente;

-- QUESTÃO 02: Traga o nome dos gêneros que não estão em nenhum filme(4 linhas retornadas).

select nome_genero from genero  left join filme_genero on genero.codigo_genero = filme_genero.codigo_genero
left join filme on filme_genero.codigo_filme = filme.codigo_filme where filme.codigo_filme is null;

-- QUESTÃO 03: Traga o nome de todos os diretores. Caso ele tenha dirigido algum filme, 
-- traga o nome do filme (23 linhas retornadas).

	select nome_diretor, titulo from diretor d left join filme_diretor fd on 
    d.codigo_diretor = fd.codigo_diretor left join filme f on fd.codigo_filme = f.codigo_filme;

-- QUESTÃO 04: Traga o nome e cpf de todos os clientes, caso ele tenha alugado algum filme, 
-- traga o título do filme e a data de locação(52 linhas retornadas)
	select nome_cliente, cpf from cliente c left join locacao l on c.codigo_cliente = l.codigo_cliente left join 
	filme f on f.codigo_filme = l.codigo_filme; 


-- QUESTÃO 05: Traga o título dos filmes, juntamente com o nome dos atores que atuaram
-- nele(88 linhas retornadas).
	select titulo, nome_ator from filme f left join filme_ator fa on f.codigo_ator

-- QUESTÃO 06: Traga o nome dos clientes que alugaram filmes do gênero comédia(13 linhas retornadas).

-- QUESTÃO 07: Traga o nome dos filmes que não foram locados por ninguém(4 linhas retornadas).

