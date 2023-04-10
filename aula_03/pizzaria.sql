-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criar tabelas
CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255),
    PRIMARY KEY (id)
    );
    
-- Visualizar a tabela
SELECT* FROM tb_categorias;
    
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
    preco decimal(6.2) not null,
    borda_recheada Boolean,
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
    );

-- Visualizar a tabela
SELECT* FROM tb_pizzas;

-- Popular tabela categorias: 
INSERT INTO tb_categorias(tipo, descricao)
values ("Salgada", "Pizza salgada");

INSERT INTO tb_categorias(tipo, descricao)
values ("Doce", "Pizza com recheio doce");

INSERT INTO tb_categorias(tipo, descricao)
values ("Broto Salgada", "Pizza salgada tamanho reduzido");

INSERT INTO tb_categorias(tipo, descricao)
values ("Broto Doce", "Pizza com recheio doce");

INSERT INTO tb_categorias(tipo, descricao)
values ("Especial", "Pizza tamanho familia");

-- Popular tabela pizzas: 
INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Portuguesa", "cebola, azeitona, ervilha, queijo e presunto", "40", false, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Marguerita", "muçarela, tomate, manjericão, orégano e base de molho de tomate", "50", true, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Frango com catupiry", "Frango com catupiry", "48", true, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Frango com catupiry", "Frango com catupiry", "48", true, 3);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Muçarela", "c queijo muçarela, molho de tomate e orégano", "49", true, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Muçarela", "c queijo muçarela, molho de tomate e orégano", "49", true, 3);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Napolitana", "orégano salpicado, tomate fresco, azeitona sem caroço, queijo muçarela e parmesão", "55", true, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Quatro queijos", "muçarela, catupiry, provolone e parmesão", "55", true, 1);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Brigadeiro", "composta por chocolate e granulado", "55", false, 4);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Brigadeiro", "composta por chocolate e granulado", "55", false, 2);

INSERT INTO tb_pizzas(nome, descricao, preco, borda_recheada, categoria_id)
values ("Romeu e Julieta", "queijo muçarela de búfala e goiabada", "55", false, 2);

--  pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45;

--  pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

--  pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

--  INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";

-- atualização de dados
UPDATE tb_pizzas SET preco = 29.50 WHERE id = 4;
UPDATE tb_pizzas SET preco = 29.50 WHERE id = 6;
UPDATE tb_pizzas SET preco = 29.50 WHERE id = 9;


