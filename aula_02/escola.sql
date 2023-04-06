-- Query para a criação de banco de dados
CREATE DATABASE db_escola;

-- Começar utilizar o banco
USE db_escola;

-- Criar tabela
CREATE TABLE tb_escola(
	id bigint auto_increment,
    nome_aluno varchar(255) not null,
    nota decimal(3,1) not null,
    turma int,
    telefone varchar(20) not null,
    primary key(id)
    );
    
-- Popular tabela
INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Alisson Souza", 8.0, 20, "11 99905-0596");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Bianca Andrade", 7.5, 21, "11 99974-2596");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Carolina Brandão", 5.0, 20, "11 99958-1456");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Daniela Alves", 6.5, 20, "11 92695-0566");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Evandro Castro", 9.0, 20, "11 99905-1414");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Fernando Monteiro", 10.0, 21, "11 96335-0596");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Gustavo Pascoal", 4.0, 20, "11 93645-0596");

INSERT INTO tb_escola(nome_aluno, nota, turma, telefone)
values ("Juliana Paesleme", 8.5, 20, "11 99905-0596");

-- Visualizar a tabela
SELECT* FROM tb_escola;

-- buscar nota maior que 7
SELECT * FROM tb_escola WHERE nota > 7.0;

-- buscar nota menor que 7
SELECT * FROM tb_escola WHERE nota < 7.0;

-- atualização de dados
UPDATE tb_escola SET turma = 21 WHERE id = 3;

