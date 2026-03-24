-- Selecione o nome e cidade dos clientes que não possuem telefone cadastrado.
-- π nome_cliente, cidade σ(telefone is not null(cliente))
select nome_cliente, cidade from cliente where telefone is not null;

-- Selecione nome, cpf e rg dos clientes que moram no centro.
-- π nome_cliente, cpf, rg (σ bairro ='centro'(cliente))
select nome_cliente, cpf, rg from cliente where bairro ='centro';

-- Selecione o nome e a rua dos clientes que moram em São Paulo ou que tenham nascido após 01/01/1990(1990-01-01).
-- π nome_cliente,rua (σ cidade ='São Paulo' or datanasc = '1990-01-01'(cliente))
select nome_cliente, rua from cliente where cidade ='São Paulo' or datanasc > '1990-01-01';

-- Selecione o código dos clientes que possuem telefone cadastrado e que não tem data de nascimento cadastrada.
-- π codigo_cliente (σ telefone is not null and datanasc = '1990-01-01'(cliente))
select codigo_cliente from cliente where telefone is not null and datanasc = '1990-01-01';

-- Selecione os códigos dos imóveis que possuem tipo cadastrado.
-- π codigo_imovel (σ codigo_tipo is not null(imovel))
select codigo_imovel from imovel where codigo_tipo is not null;

-- Selecione o código e a descrição dos imóveis localizados no centro de Juiz de Fora.
-- π codigo_imovel, codigo_tipo (σ bairro = 'centro' and cidade = 'Juiz de Fora'(imovel))
select codigo_imovel, codigo_tipo from imovel where bairro = 'centro' and cidade = 'Juiz de Fora';

-- Selecione o código e a descrição dos imóveis situados no Rio de Janeiro ou Petrópolis.
-- π codigo, descricao (σ cidade = 'Rio de Janeiro' or cidade = 'Petropolis'(imovel))
select codigo_imovel, descricao from imovel where cidade = 'Rio de Janeiro' or cidade = 'Petropolis';

-- Selecione o nome e cpf do(s) proprietário(s) de nome João e sobrenome da Silva.
-- π nome_proprietario, cpf (σ nome_proprietário = 'João' and sobrenome = 'da Silva'(proprietario))
select nome_proprietario, cpf from proprietario where nome_proprietario = 'João' and sobrenome = 'da Silva';

-- Selecione as informações cujo tipo de imóvel é apartamento.
--  σ tipo = 'Apartamento' (tipo_imovel))
select * from tipo_imovel where tipo = 'Apartamento';

-- Selecione todas as informações da tabela venda cujos valores dos imóveis sejam de R$150.000,00.
--  σ  valor = 150000 (venda))
select * from venda where valor = 150000;

-- Selecione todas as informações da tabela venda, cujos imóveis estejam com o valor entre R$100.000,00 e R$200.000,00.
--  σ valor >= 100000 and valor <= 200000 (venda))
select * from venda where valor >= 100000 and valor <= 200000;

-- Selecione  todas as informações da tabela locação para os imóveis que estão sendo alugados por mais de R$2000,00.
--  σ valor valor > 2000 (locacao))
select * from locacao where valor > 2000;

-- Selecione  todas as informações da tabela locação para os imóveis que estão sendo alugados por R$900,00.
--  σ valor valor > 2000 (locacao))
select * from locacao where valor = 900;