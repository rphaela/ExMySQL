CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id bigint auto_increment,
uso varchar(255),
controle boolean,
indicacao varchar(255),

PRIMARY KEY(id)
);

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
preco double,
generico boolean,

categoria_id bigint,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(uso, controle, indicacao) VALUES ("oral", true, "adulto");
INSERT INTO tb_categoria(uso, controle, indicacao) VALUES ("oral", false, "adulto");
INSERT INTO tb_categoria(uso, controle, indicacao) VALUES ("oral", true, "pediatra");
INSERT INTO tb_categoria(uso, controle, indicacao) VALUES ("oral", false, "pediatra");
INSERT INTO tb_categoria(uso, controle, indicacao) VALUES ("nasal", false, "sem indicacao");

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Qlaira", "Anticoncepcional", 45.39, true, 2);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Maracugina", "Calmante", 34.25, false, 2);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Allegra", "Alergia e Infecção", 61.49, true, 4);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Sorine", "Congestão Nasal", 27.89, false, 5);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Rinosoro", "Congestão Nasal", 38.96, false, 5);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Seline", "Anticoncepcional", 55.79, false, 2);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Nesina", "Diabetes", 122.39, true, 1);

INSERT INTO tb_produto(nome, tipo, preco, generico, categoria_id)
VALUES ("Puran", "Hipertensão", 55.39, true, 1);

SELECT * FROM tb_produto WHERE preco>50;

SELECT * FROM tb_produto WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 1;

