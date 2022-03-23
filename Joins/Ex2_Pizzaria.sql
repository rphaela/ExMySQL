CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tamanho varchar(255),
    sabor varchar(255),
    massa varchar(255),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(255),
    ingredientes varchar(500),
    preco double,
    borda boolean,
    tb_categoria_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY(tb_categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias(tamanho, sabor, massa) VALUES ("broto", "doce", "media");
INSERT INTO tb_categorias(tamanho, sabor, massa) VALUES ("grande", "salgada", "grossa");
INSERT INTO tb_categorias(tamanho, sabor, massa) VALUES ("media", "doce", "fina");
INSERT INTO tb_categorias(tamanho, sabor, massa) VALUES ("familia", "doce", "grossa");
INSERT INTO tb_categorias(tamanho, sabor, massa) VALUES ("grande", "salgada", "fina");

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("mussarela", "queijo", 45.00, true, 5);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("calabresa", "calabresa e cebola", 45.00, true, 5);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("brigadeiro", "chocolate e granulado", 35.00, false, 1);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("romeu e julieta", "queijo e goiabada", 55.00, false, 2);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("fracatu", "frango e catupiry", 65.00, true, 4);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("bacon", "queijo e bacon", 55.00, true, 5);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("atum", "queijo, atum e cebola", 65.00, false, 4);

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda, tb_categoria_id)
VALUES ("cocada", "brigadeiro e coco ralado", 50.00, true, 3);

SELECT * FROM tb_pizzas WHERE preco>45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias on tb_pizzas.tb_categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias on tb_pizzas.tb_categoria_id = tb_categorias.id
WHERE tb_categoria_id = 4;