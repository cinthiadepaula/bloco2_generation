create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco decimal,
PRIMARY KEY (id)
);

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria(categoria) values ("salgada");
INSERT INTO tb_categoria(categoria) values ("doce");

ALTER TABLE tb_pizzas ADD categoria_id bigint;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoria
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("muçarela", "queijo, tomate e molho", 49.00, 1);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("calabresa", "calabreza, oregano e molho", 39.00, 1);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("marguerita", "queijo, tomate e molho", 49.00, 1);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("muçarela", "queijo, tomate e molho", 49.00, 1);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("portuguesa", "queijo, ovo e molho", 60.00, 1);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("sonho de valsa", "chocolate, granulado e bombom", 30.00, 2);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("banofe", "chocolate, leite condensado e banana", 35.00, 2);

INSERT into tb_pizzas (nome, descricao, preco, categoria_id)
values("prestigio", "chocolate, leite condensado e coco ralado", 39.00, 2);

SELECT * FROM tb_pizzas where preco > 45.00;

SELECT * FROM tb_pizzas where preco > 40.00 AND preco < 100;

SELECT * FROM tb_pizzas where nome LIKE 'M%';

SELECT nome, descricao, preco, categoria FROM tb_pizzas
INNER join tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id;

SELECT nome, descricao, preco, categoria FROM tb_pizzas
INNER join tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id  where categoria = "doce";
