CREATE database db_funcionaries;

USE db_funcionaries;

CREATE table tb_infos(
id bigint auto_increment,
nome varchar(255),
setor varchar(255),
idade int,
inicio int,
salario double,

primary key(id)
);

INSERT INTO tb_infos(nome, setor, idade, inicio, salario) values ("Maria", "Produção", 23, 2019, 1500);
INSERT INTO tb_infos(nome, setor, idade, inicio, salario) values ("João", "TI", 26, 2016, 3500);
INSERT INTO tb_infos(nome, setor, idade, inicio, salario) values ("Joana", "Vendas", 28, 2021, 1250);
INSERT INTO tb_infos(nome, setor, idade, inicio, salario) values ("Thiago", "Marketing", 33, 2015, 2500);
INSERT INTO tb_infos(nome, setor, idade, inicio, salario) values ("Luana", "TI", 29, 2014, 4500);

SELECT * FROM tb_infos where salario>2000;

SELECT * FROM tb_infos where salario<2000;

UPDATE tb_infos SET salario=2000 WHERE id=1;

UPDATE tb_infos SET salario=1500 WHERE id=3;

SELECT * FROM tb_infos
