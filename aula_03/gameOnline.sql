-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criar tabelas
CREATE TABLE tb_classes(
	id bigint auto_increment,
    habilidade varchar(255) not null,
    descricao varchar(255),
    PRIMARY KEY (id)
    );
    
-- Visualizar a tabela
SELECT* FROM tb_classes;
    
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    sexo varchar(255),
    classe_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
    );

-- Visualizar a tabela
SELECT* FROM tb_personagens;

-- Popular tabela classes: 
INSERT INTO tb_classes(habilidade, descricao)
values ("Guerreiro", "Combate corporal com espadas, lanças, machados, maças e escudos");

INSERT INTO tb_classes(habilidade, descricao)
values ("Arqueiro", "Combate a distância com arco e flecha");

INSERT INTO tb_classes(habilidade, descricao)
values ("Bruxo", "Combate a distância com magias de variados elementos");

INSERT INTO tb_classes(habilidade, descricao)
values ("Ninja", "Combate corporal com espadas, lanças, machados, maças e escudos");

INSERT INTO tb_classes(habilidade, descricao)
values ("Sacerdote", "Combate a distância com magias de luz ou da natureza. Às vezes podem usar maças para atacar de perto.");

INSERT INTO tb_classes(habilidade, descricao)
values ("Paladino ", "Combate corporal com espadas, machados, lanças, maças e escudos. Também podem ter magias sagradas que causam dano a distância");

-- Popular tabela personagens: 
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Ellie", 3000, 2000, "f", 5);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Ryu", 2500, 3000, "f", 4);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Chun-li", 3100, 1800, "m", 4);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Lara Croft", 3200, 1900, "f", 2);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Krotos", 3200, 1800, "m", 1);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Mario", 1900, 1900, "m", 1);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Link", 2000, 1500, "m", 6);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Zelda", 2000, 1500, "f", 6);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, sexo, classe_id)
values ("Sonic", 1900, 1800, "m", 1);

-- personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

--  personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

--  INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT * FROM tb_personagens INNER JOIN TB_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.habilidade = "Arqueiro";

-- atualização de dados
UPDATE tb_personagens SET classe_id = 4 WHERE id = 5;


