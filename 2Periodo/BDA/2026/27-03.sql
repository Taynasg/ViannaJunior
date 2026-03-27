--  π numeroassento, classe (σ status ='Disponivel'(aeronave))
select numeroassento, classe from assento where status ='Disponivel';

-- π fabricante, anofabricacao (σ capacidade > 200(aeronave))
select fabricante, anofabricacao from aeronave where capacidade > 200;

-- π numerovoo, horariosaida(σ cidadedestino > 4567(voo))
select numerovoo, horariosaida from voo where cidadedestino > 4567;

-- π preco(σ codigovoo = 1100(reserva))
select preco from reserva where codigovoo = 1100;

-- π codigocliente(σ datareserva = '2014-11-10'(reserva))
select codigocliente from reserva where datareserva = '2014-11-10';

-- π codigocidade(σ nomecidade = 'Belo Horizonte'(cidade))
select codigocidade from cidade where nomecidade = 'Belo Horizonte';

-- π codigocidade(σ anofabricacao > '2013'(aeronave))
select codigoaeronave, prefixo from aeronave where anofabricacao > '2013';

--  π numeroassento (σ preco >1000(reserva))
select numeroassento from reserva where preco >1000;

-- π numerovoo (σ horariosaida > 22(voo))
select numerovoo from voo where horariosaida > '22:00';

-- π endereco, telefone (σ nomecliente = 'Joice Leite'(cliente))
select endereco, telefone from cliente where nomecliente = 'Joice Leite';
