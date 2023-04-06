-- Query para a criação de banco de dados
CREATE DATABASE db_loja;

-- Começar utilizar o banco
USE db_loja;

-- Criar tabela
CREATE TABLE tb_loja(
	id bigint auto_increment,
    nome_produto varchar(255) not null,
	quantidade int,
    preco decimal(8,2) not null,
	descricao varchar(255) not null,
    primary key(id)
    );
    
-- Popular tabela
INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Iphone", 20, 5000.00, "Celular Iphone Completo");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Celular Motorola", 20, 1500.00, "Celular Motorola Completo");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Celular Samsung", 30, 1900.00, "Celular Samsung Completo");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Caixa de som", 10, 90.00, "Caixa de som para computador");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Webcam", 5, 150.00, "Full HD");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Microfone", 7, 90.00, "Alta qualidade e redução de ruido");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Notebook", 5, 1600.00, "Positivo");

INSERT INTO tb_loja(nome_produto, quantidade, preco, descricao)
values ("Monitor", 2, 300.00, "HD");

-- Visualizar a tabela
SELECT* FROM tb_loja;

-- buscar produto maior que 500
SELECT * FROM tb_loja WHERE preco > 500.00;

-- buscar produto menor que 500
SELECT * FROM tb_loja WHERE preco < 500.00;

-- atualização de dados
UPDATE tb_loja SET nome_produto = "Impressora" WHERE id = 9;
