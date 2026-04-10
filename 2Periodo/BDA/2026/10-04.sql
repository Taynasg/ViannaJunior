-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where): 
-- σ π
-- ------------------------------------------------------------------------------------------------------------------------------------------------- --
-- QUESTÃO 01: Liste o nome do animal e de seus cuidadores (60 linhas retornadas).
-- Rascunho:
-- Colunas(/select): animal.nome, empregado.nome
-- Tabelas(/,): animal, empregado
-- Condição(/where): -
-- Junção(/where): idcuidador = idempregado

-- Álgebra Relacional
--  π animais.nome, empregados.nome(σ idcuidador = idempregado(animaisempregados))

-- SQL
select a.nome nome_animal, e.nome nome_cuidador from animais a, empregados e where a.idcuidador = e.idempregado;

 -- QUESTÃO 02: Liste os nomes de todos os clientes que também são provedores(4 linhas retornadas).

-- Rascunho: 
-- Colunas(/select): cliente.nome
-- Tabelas(/,): clientes, provedores
-- Condição(/where): - 
-- Junção(/where): idCliente = ididCliente

-- Álgebra Relacional

-- SQL
select clientes.nome from clientes, provedores where clientes.idCliente = provedores.idCliente; 

-- QUESTÃO 03: Liste o nome e data de saída dos animais que saíram do zoológico por falecimento(2 linhas retornadas).
-- Rascunho:
-- Colunas(/select): nome, dataSaida 
-- Tabelas(/,): animais, eventoanimais
-- Condição(/where): descricao = 'falecimento'
-- Junção(/where): anamais.idAnimais = eventoanimais.idAnimais

-- Álgebra Relacional
-- SQL
select a.nome,a.dataSaida from animais a, eventoanimais e where descricao='falecimento' and a.idanimal = e.idanimal;
-- QUESTÃO 04: Liste os nomes dos animais, a data de nascimento, o nome do seu cuidador e a descrição da medicação que tomou. (60 linhas retornadas).
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):

-- Álgebra Relacional
-- SQL
select a.nome, datanascimento, e.nome, descricao
from animais a, empregados e, medicacao m
where idcuidador = idempregado and a.idmedicacao = m.idmedicacao;

-- QUESTÃO 05: Recupere os dados de todos os animais carnívoros que ainda estão no zoológico (17 linhas retornadas).
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):
-- Álgebra Relacional
-- SQL

select a.* from animais a, alimentacao al, especies e where a.dataSaida is null and al.nome = 'Carnivoros' and a.idEspecie = e.idEspecie 
and e.idAlimentacao =al.idAlimentacao; 

-- QUESTÃO 06: Liste o nome e a espécie dos animais que fizeram translado (2 linhas retornadas).
-- Rascunho:
-- Colunas(/select): nome,nomeComum
-- Tabelas(/,): animais, especies, tipoeventos, eventoanimais
-- Condição(/where): tipoeventos.descricao == 'translado'
-- Junção(/where): animais.idEspecies = especies.idEspecies
-- Álgebra Relacional
-- SQL
select nome,nomeComum from animais a, e especies, tipoeventos te, eventoanimais ea  
-- QUESTÃO 07: Recupere o nome e estoque do produto fornecido pelas ongs, assim como o nome dos clientes que fazem parte dessas ongs (2 linhas retornadas).
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):
-- Álgebra Relacional
 -- SQL
