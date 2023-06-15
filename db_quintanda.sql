create database db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal not null,
    primary key (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco)
value ("tomate", 100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT * FROM tb_produtos;