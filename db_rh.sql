CREATE DATABASE RH;

use RH;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    cargo varchar(255) not null,
    idade int,
    salario decimal(4,2)not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, sobrenome, cargo, idade, salario)
values("Cinthia", "de Paula", "Desenvolvedora Front-End", 29, 4.000);

INSERT INTO tb_funcionarios(nome, sobrenome, cargo, idade, salario)
values("Priscila", "Carla", "Suporte de TI", 22, 2.000);

INSERT INTO tb_funcionarios(nome, sobrenome, cargo, idade, salario)
values("Sabrina", "Bertioga", "Coordenadora", 25, 5.000);

INSERT INTO tb_funcionarios(nome, sobrenome, cargo, idade, salario)
values("Romário", "Barcelos", "Suporte", 22, 1.500);

SELECT * FROM tb_funcionarios where salario > 2.000;

SELECT * FROM tb_funcionarios where salario <= 2.000;

UPDATE tb_funcionarios SET salario = 1.000 where id=2;

SELECT * FROM tb_funcionarios