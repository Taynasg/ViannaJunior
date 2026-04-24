-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where): 
-- σ π ⋈ 
-- ------------------------------------------------------------------------------------------------------------------------------------------------- --
-- 
-- QUESTÃO 01:
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):

-- Álgebra Relacional

-- Banco Enade
-- SQL
-- QUESTÃO 02:
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):

-- Álgebra Relacional

-- Banco Enade
-- SQL

-- QUESTÃO 01:
-- Rascunho:
-- Colunas(/select): 
-- Tabelas(/,): 
-- Condição(/where): 
-- Junção(/where):

-- Álgebra Relacional

-- Banco Enade
-- QUESTÃO 01: Recupere o nome de todas as áreas.
-- SQL
select nomearea from area;
-- QUESTÃO 02: Recupere o nome dos municípios do estado de MG.
select nomeMunicipio from municipio where siglaUF = 'MG';
-- QUESTÃO 03: Liste os nomes das instituições privadas com fins lucrativos.(675 linhas retornadas).
select nomeies from ies inner join  categoria on ies.codCategoria = ies.codCategoria where nomeCategoria = 'Privada com fins lucrativos';
-- QUESTÃO 04: Recupere os nomes da IES e o conceitoFaixa das IES que participaram do enade de 2017 cuja modalidade de educação é a distância.(516 linhas retornadas)
select nomeIes, conceitoFaixa from ies i inner join resultado r on i.codIES = r.codIES inner join modalidade m on r.codModalidade = m.codModalidade
 where anoEnade = 2017 and nomeModalidade ='Educação a Distância';
-- QUESTÃO 05: Recupere o nome das ies e das áreas que obtiveram conceitoFaixa 5 da área de TECNOLOGIA EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS no enade de 2017.(12 linhas retornadas)
select nomeies, conceitoFaixa,nomeArea from ies inner join  resultado r on 
ies.codIES = r.codIES inner join area a on a.codArea = r.codArea where conceitoFaixa = 5 
and anoEnade= 2017 and nomeArea ='TECNOLOGIA EM ANALISE E DESENVOLVIMENTO DE SISTEMAS';

-- QUESTÃO 06: Recupere o nome da ies, o nome da área e conceitoFaixa do enade de 2017 das ies situadas no município de Juiz de Fora que obtiveram nota 5.(18 linhas retornadas)
select nomeies, conceitoFaixa,nomeArea from ies inner join  resultado r on 
ies.codIES = r.codIES inner join area a on a.codArea = r.codArea where conceitoFaixa = 5 
and anoEnade= 2017 and nomeArea ='TECNOLOGIA EM ANALISE E DESENVOLVIMENTO DE SISTEMAS' and nomeMunicipio ='Juiz de Fora' ;


-- QUESTÃO 07: Recupere os nomes da IES,o conceitoContinuo e conceitoFaixa das IES do município de Juiz de Fora, cuja área seja TECNOLOGIA EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS.(2 linhas retornadas)


-- QUESTÃO 08: Recupere os nomes da IES, os nomes das áreas, o número de inscritos, o número de participantes e o conceitoFaixa das IES que obtiveram conceitoFaixa menor que 3 no município de Juiz de Fora.(7 linhas retornadas)
