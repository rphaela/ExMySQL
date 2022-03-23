CREATE DATABASE db_casa_das_carnes;

USE db_casa_das_carnes;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
soja boolean,

PRIMARY KEY(id)
);

CREATE TABLE tb_produto(
id bigint auto_increment,
corte varchar(255),
preco double,
kg double,
marca varchar(255),
categoria_id bigint,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, soja) VALUES ("frango", false);
INSERT INTO tb_categoria(tipo, soja) VALUES ("frango", true);
INSERT INTO tb_categoria(tipo, soja) VALUES ("boi", false);
INSERT INTO tb_categoria(tipo, soja) VALUES ("boi", true);
INSERT INTO tb_categoria(tipo, soja) VALUES ("porco", false);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Contra filé", 44.95, 0.500, "Nelore", 3);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Bisteca", 21.95, 1, "Aurora", 5);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Contra filé", 63.95, 1.5, "Friboi", 4);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Sobrecoxa", 25.85, 2.85, "Sadia", 1);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Acém", 25.45, 0.500, "Nelore", 3);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Filé de Frango", 28.85, 1.14, "Sadia", 2);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Linguiça Calabresa", 15.85, 0.500, "Aurora", 5);

INSERT INTO tb_produto(corte, preco, kg, marca, categoria_id)
VALUES ("Alcatra", 72.78, 1.12, "Friboi", 3);

SELECT * FROM tb_produto WHERE preco>50;

SELECT * FROM tb_produto WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produto WHERE corte LIKE "%c%%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 3;