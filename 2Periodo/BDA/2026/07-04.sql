-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where): 
-- σ π
-- ------------------------------------------------------------------------------------------------------------------------------------------------- --
-- Reserva
-- Recupere o nome do cliente, juntamente com as informações da reserva que ele realizou, para as reservas que custam mais de R$1500,00.
-- Rascunho:
-- Colunas(/select): nomecliente, codigoreserva, codigocliente, numeroassento, codigovoo, preco, datareserva
-- Tabelas(/,): cliente, reserva
-- Condição(/where): preco>1500
-- Junção(/where): codigocliente=codigocliente

-- Algebra Relacional
--  π nomecliente, reserva.codigocliente, numeroassento, codigovoo,preco,datareserva(σ preco>1500 and reserva.codigocliente=cliente.codigocliente 
-- (clientereserva))

-- SQL
select nomecliente, reserva from cliente, reserva where preco>1500 and cliente.codigocliente=reserva.codigocliente;

-- imobiliaria
-- 1 Traga a descrição do imóvel do tipo apartamento.
-- Rascunho:
-- Colunas(/select): descricao
-- Tabelas(/,): imovel,tipo_imovel
-- Condição(/where): tipo = apartamento
-- Junção(/where):  codigo_tipo = codigo_tipo

-- Álgebra Relacional
-- descricao(tipo='apartamento' and imovel.codigo_tipo = tipo_imovel.codigo_tipo(imoveltipo_imovel))
-- SQL
select descricao from imovel, tipo_imovel where imovel.codigo_tipo = tipo_imovel.codigo_tipo and tipo_imovel.tipo = 'apartamento';

-- 2 Recupere o nome do cliente juntamente com o valor do imóvel que ele comprou.
-- Rascunho:
-- Colunas(/select): nome_cliente, valor
-- Tabelas(/,): cliente, venda
-- Condição(/where): -
-- Junção(/where): codigo_cliente = codigo_cliente
		
-- Álgebra Relacional
--  π descricao(σ tipo='apartamento' and imovel.codigo_tipo = tipo_imovel.codigo_tipo(imoveltipo_imovel))

-- SQL
select nome_cliente, valor from cliente, venda where cliente.codigo_cliente = venda.codigo_cliente;

-- 3 Recupere o nome do proprietário juntamente com a descrição do(s) seu(s) imóvel(eis)	
-- Rascunho:
-- Colunas(/select): nome_proprietario, descricao
-- Tabelas(/,): proprietario, imovel_proprietario
-- Condição(/where): -
-- Junção(/where): codigo_proprietario = codigo_proprietario

-- Álgebra Relacional
-- π nome_proprietario, descricao(σ imovel.codigo_imovel = imovel_proprietario.codigo_imovel and imovel_proprietario.codigo_proprietario = 
-- proprietario.codigo_proprietario(imovelimovel_proprietarioproprietario))

-- SQL
select nome_proprietario, descricao from proprietario, imovel_proprietario where proprietario.codigo_proprietario = imovel_proprietario.codigo_proprietario;


-- 4 Recupere o valor de venda do(s) imóvel(eis) juntamente com o nome do(s) proprietário(s) que tenham vendido imóveis situados no centro.
-- Rascunho:
-- Colunas(/select): valor, nome_proprietario, bairro
-- Tabelas(/,): venda, proprietario, imovel, imovel_proprietario
-- Condição(/where): bairro = centro  
-- Junção(/where):  codigo_imovel = codigo_imovel and codigo_imovel = codigo_imovel and codigo_proprietario = codigo_proprietario

-- Álgebra Relacional
-- π valor, nome_proprietario(bairro='centro' and venda.codigo_imovel = imovel.codigo_imovel and imovel.codigo_imovel = imovel_proprietario.codigo_imovel
 -- and imovel_proprietario.codigo_proprietario = proprietario.codigo_proprietario(σ imovelvendaimovel_proprietarioproprietario))
-- SQL
select valor, nome_proprietario from venda v, proprietario p, imovel i, imovel_proprietario ip where v.codigo_imovel = i.codigo_imovel 
and i.codigo_imovel = ip.codigo_imovel and ip.codigo_proprietario = p.codigo_proprietario and bairro= 'centro';

