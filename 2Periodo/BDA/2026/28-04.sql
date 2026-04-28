-- 1

select Nome_cliente, Num_pedido, data_compra ,nome_vendedor from cliente c inner join pedido p on c.Cod_cliente = p.Cod_cliente inner join vendedor v on 
v.cod_vendedor = p.cod_vendedor; 

-- 2
select distinct descricao from produto pr  inner join item_pedido ip on pr.cod_produto = ip.cod_produto inner join pedido p on 
ip.num_pedido = p.Num_pedido where data_compra > '2011-05-01' and data_compra < '2011-05-31';

-- 3
select distinct descricao, quantidade from produto pr inner join item_pedido ip on pr.cod_produto = ip.cod_produto where quantidade> 10;

-- 4
select  descricao, quantidade, Valor_unitario, (quantidade* Valor_unitario) as total  from produto pr
inner join item_pedido ip on pr.cod_produto = ip.cod_produto;


-- 5
select Nome_cliente, nome_vendedor from cliente c inner join pedido p on c.Cod_cliente = p.Cod_cliente inner join vendedor v on 
v.cod_vendedor = p.cod_vendedor; 

-- 6
select  Num_pedido, descricao, quantidade from produto pr inner join item_pedido ip on pr.cod_produto = ip.cod_produto where quantidade> 100;
