CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

create TABLE tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
ataque decimal,
defesa decimal,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens(nome, ataque, defesa)
values ("Saori Kido", 2500, 5000);

INSERT INTO tb_personagens(nome, ataque, defesa)
values ("Seiya de Pégaso", 1500, 2000);

INSERT INTO tb_personagens(nome, ataque, defesa)
values ("Shiryu de Dragão", 1000, 2500);

INSERT INTO tb_personagens(nome, ataque, defesa)
values ("Hyoga de Cisne", 5000, 2500);

INSERT INTO tb_personagens(nome, ataque, defesa)
values ("Shun de Andrômeda", 3000, 4500);

SELECT * FROM tb_personagens;

CREATE TABLE tb_classes(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

INSERT INTO tb_classes (descricao) values ("Cavaleiro");
INSERT INTO tb_classes (descricao) values ("Arqueiro");
INSERT INTO tb_classes (descricao) values ("Caçador");

SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD classe_id bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)
values ("Saori Kido", 2500, 5000, 1);

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)
values ("Seiya de Pégaso", 1500, 2000, 1);

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)
values ("Shiryu de Dragão", 1000, 2500, 2);

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)
values ("Hyoga de Cisne", 5000, 2500, 2);

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id)
values ("Shun de Andrômeda", 3000, 4500, 3);

select * FROM tb_personagens WHERE ataque > 2000;

select * FROM tb_personagens WHERE defesa < 2000 AND defesa > 1000;

select * FROM tb_personagens where nome LIKE "C%";

SELECT nome, ataque, defesa, classe_id, descricao FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT nome, ataque, defesa, classe_id, descricao FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id where descricao = "arqueiro";