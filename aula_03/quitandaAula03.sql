-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES ("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- Visualizar as colunas e suas caracteristicas
SHOW FULL COLUMNS FROM tb_produtos;

-- Mostrar tabela ordenada por nome
SELECT * FROM tb_produtos ORDER BY nome;

-- ??
SELECT * FROM tb_produtos ORDER BY nome, preco DESC;

-- Pesquisar id com categorias diferente de 1  
SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;

-- Pesquisar o valores especificos DENTRO da tabela 
SELECT * FROM tb_produtos WHERE preco IN (5, 10, 15);

-- Pesquisar valores ENTRE os intervalos 5 e 15 
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

-- Busca: Inicia com "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "ra%";

-- Busca: Possui a sílaba "ra", independente da posição
SELECT * FROM TB_produtos WHERE NOme LIKE "%ra%";

-- Busca: Termina com "ra"
SELECT * FROM TB_produtos WHERE NOme LIKE "%ra";

-- Contagem de linhas
SELECT COUNT(*) FROM TB_produtos;

-- Contagem de linhas que possuem categoria definda
SELECT COUNT(CATegoria_id) FROM TB_produtos;

-- Somar dos preços
SELECT SUM(PRECo) FROM TB_produtos;

-- Somar dos preços e renomear/apelidar nome da coluna (Alias)
SELECT SUM(pRECO) AS SoMA_Preco FROM TB_Produtos;

-- Media dos preços
SELECT AVG(PrECO) AS MEdIA_Preco FROM tB_PRodutos;

-- Media dos preços com base nas categorias
SELECT CATEGOria_id, AVG(pReCO) AS MeDiA_Preco FROM tb_PROdutos GROUP BY CATeGOria_id;

-- Media dos preços com base nas categorias e ordenada pelo preco
SELECT cATEGORia_id, AVG(prEcO) AS MedIa_Preco 
FROM tb_PRODutos GROUP BY CATEgORia_id ORDER BY MEDIa_Preco;

-- Qual o maior valor na tabela produtos
SELECT MAX(PREcO) FROM tB_PRODutos;

-- Qual o menor valor na tabela produtos
SELECT MIN(PREcO) FROM tB_PRODutos;

-- Pesquisar todos os produtos que possuem categorias associadas
SELECT * FROM tB_PRODutos INNER JOIN TB_CATEgorias
ON tb_prODutos.categorIa_id = tb_catEgorias.id;

-- Pesquisar todos os produtos  tem categoria associada & produtos sem categoria
SELECT * FROM tB_PRODutos LEFT JOIN TB_CATEgorias
ON tb_prODutos.categorIa_id = tb_catEgorias.id;

-- Pesquisar todos os produtos  tem categoria associada & produtos sem categoria
SELECT * FROM tB_PRODutos RIGHT JOIN TB_CATEgorias
ON tb_prODutos.categorIa_id = tb_catEgorias.id;

-- Unindo diferentes elementos de pesquisa 
SELECT * FROM tB_PRODutos INNER JOIN TB_CATEgorias
ON tb_prODutos.categorIa_id = tb_catEgorias.id
WHERE tb_CATEgorias.descricAo = "frutaS"
ORDER BY NOME;