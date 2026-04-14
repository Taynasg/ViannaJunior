-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where): 
-- σ π
-- ------------------------------------------------------------------------------------------------------------------------------------------------- --
-- 
-- QUESTÃO 07: Recupere o nome e estoque do produto fornecido pelas ongs, assim como o nome dos clientes que fazem parte dessas ongs (2 linhas retornadas).
-- Rascunho:
-- Colunas(/select): produtos.nome, estoque, clientes.nome
-- Tabelas(/,): produtos, clientes, sociedades, provedores
-- Condição(/where): descricao=’ong’
-- Junção(/where): produtos.idprovedor = provedores.idprovedor and provedores.idcliente = clientes.idcliente and clientes.tiposociedade = sociedades.idtiposociedade

-- Álgebra Relacional

-- Banco zoo
-- SQL
select p.nome, p.estoque, c.nome from produtos p, clientes c, provedores pr, sociedades s
where s.descricao = ‘ong’ and produtos.idprovedor = provedores.idprovedor and provedores.idcliente = clientes.idcliente and clientes.tiposociedade = sociedades.idtiposociedade;

-- Banco Petshop
-- QUESTÃO 01: Recupere os tipos de serviços e valor, para os serviços que custam mais de R$50,00.(6 linhas retornadas)
-- Rascunho:
-- Colunas(/select): valor, tipo
-- Tabelas(/,): tipo_servico
-- Condição(/where): valor> 50
-- Junção(/where): id = tipo_servico

-- Álgebra Relacional
 -- π(valor, tipo)  tipo_servico  σvalor>50);

-- SQL
select valor, tipo from tipo_servico ts where  valor>50;


-- QUESTÃO 02: Recupere o nome do animal juntamente com sua raça.(1008 linhas retornadas)
-- Rascunho:
-- Colunas(/select): animal.nome, raca.nome
-- Tabelas(/,): animal, raca
-- Condição(/where): -
-- Junção(/where): animal.id =raca.id

-- Álgebra Relacional


-- SQL
select a.nome, r.nome from animal a, raca r where a.raca = r.id;

-- QUESTÃO 03: Recupere todas as informações dos animais que possuem alto nível de cuidados.(375 linhas retornadas)
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): -
-- Junção(/where): 

-- Álgebra Relacional


-- SQL


-- QUESTÃO 04: Recupere o nome do cliente e o tipo de serviço que ele solicitou. Traga apenas os serviços que ainda não foram pagos.(469 linhas retornadas)
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): -
-- Junção(/where): 

-- Álgebra Relacional


-- SQL


-- QUESTÃO 05: Recupere as informações das clientes, o nome e a raça dos animais que elas possuem e o tipo de serviço que foi realizado. Elimine os valores repetidos. (948 linhas retornadas)
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): -
-- Junção(/where): 

-- Álgebra Relacional


-- SQL

