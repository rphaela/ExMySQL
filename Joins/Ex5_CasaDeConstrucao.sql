CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
material varchar(255),
promocao boolean,

PRIMARY KEY(id)
);

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
preco double,
estoque int,
categoria_id bigint,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(material, promocao) VALUES ("Blocos e Tijolos", false);
INSERT INTO tb_categoria(material, promocao) VALUES ("Cimentos e Argamassas", false);
INSERT INTO tb_categoria(material, promocao) VALUES ("Drywall", true);
INSERT INTO tb_categoria(material, promocao) VALUES ("Escadas Fixas", true);
INSERT INTO tb_categoria(material, promocao) VALUES ("Blocos de vidro", false);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("tijolos comuns", "martins", 4.29, 54, 1);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("tijolos cerâmica", "união", 2.99, 87, 1);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("cimento", "votorantim", 27.89, 458, 2);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("placa de gesso", "placo", 50.59, 125, 3);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("cantoneira", "placo", 13.29, 23, 3);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("testeira antiderrapante", "metropac", 160.45, 11, 4);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("elemento vazado", "ibravir", 31.89, 128, 5);

INSERT INTO tb_produto(nome, marca, preco, estoque, categoria_id)
VALUES ("veneziana de vidro", "ibravir", 36.99, 34, 5);

SELECT * FROM tb_produto WHERE preco>100;

SELECT * FROM tb_produto WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produto WHERE nome LIKE "%c%%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 5;