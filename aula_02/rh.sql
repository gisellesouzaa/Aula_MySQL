-- Query para a criação de banco de dados
CREATE DATABASE db_rh;

-- Começar utilizar o banco
USE db_rh;

-- Criar tabela
CREATE TABLE tb_rh(
	id bigint auto_increment,
    nome_funcionario varchar(255) not null,
    cargo varchar(255) not null,
    telefone varchar(20) not null,
    endereco varchar(255),
    primary key(id)
    );
    
-- Popular tabela
INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Alessandra Lima", "Gerente", "11 99905-0596", "Rua dos Pinheiros, 60 - São Paulo");

INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Flavia Alessandra", "Desenvolvedora Junior", "11 98585-0587", "Rua das Pimentas, 99 - São Paulo");

INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Carolina Hereira", "Desenvolvedora Pleno", "11 98655-0596", "Rua das Oliveiras, 14 - São Paulo");

INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Raquel Brandão", "Desenvolvedora Senior", "11 95895-0557", "Rua das Rosas,780 - São Paulo");

INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Paulo Ricardo", "Contador", "11 98755-6256", "Rua Girasol, 7 - São Paulo");

INSERT INTO tb_rh(nome_funcionario, cargo, telefone, endereco)
values ("Amanda Pereira", "Estagiaria", "11 98755-6745", "Rua Enrolarada, 40 - São Paulo");

-- Visualizar a tabela
SELECT* FROM tb_rh;

-- Adicionar coluna salário
ALTER TABLE tb_rh ADD salario decimal(6,2) not null;
ALTER TABLE tb_rh CHANGE salario salario decimal(8,2);

-- Inserir salários
UPDATE tb_rh SET salario = 15000.00 WHERE id = 1;
UPDATE tb_rh SET salario = 13000.00 WHERE id = 2;
UPDATE tb_rh SET salario = 10000.00 WHERE id = 3;
UPDATE tb_rh SET salario = 7000.00 WHERE id = 4;
UPDATE tb_rh SET salario = 5000.00 WHERE id = 5;
UPDATE tb_rh SET salario = 1900.00 WHERE id = 6;

-- Visualizar a tabela
SELECT* FROM tb_rh;

-- buscar salario maior que 2000
SELECT * FROM tb_rh WHERE salario > 2000.00;

-- buscar salario menor que 2000
SELECT * FROM tb_rh WHERE salario < 2000.00;

-- atualização de dados
UPDATE tb_rh SET telefone = "12 99968-6936" WHERE id = 6;
