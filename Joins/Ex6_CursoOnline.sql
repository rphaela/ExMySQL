CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
categoria varchar(255),
professores varchar(255),

PRIMARY KEY(id)
);

CREATE TABLE tb_curso(
id bigint auto_increment,
nome varchar(255),
duracaoHoras int,
preco double,
modulo varchar(255),
categoria_id bigint,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(categoria, professores) VALUES ("Tech", "Roberto e Vanessa");
INSERT INTO tb_categoria(categoria, professores) VALUES ("Tech", "Giovanni e Bruno");
INSERT INTO tb_categoria(categoria, professores) VALUES ("Comunicação", "Luana e Ana");
INSERT INTO tb_categoria(categoria, professores) VALUES ("ADM", "Leandra e Victor");
INSERT INTO tb_categoria(categoria, professores) VALUES ("Design", "Lia e Fábio");

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Progração JAVA", 60, 500, "Iniciante", 1);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Progração JAVA", 60, 700, "Intermediário", 2);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Progração C++ e C#", 120, 1500, "Iniciante", 1);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Progração C++ e C#", 120, 1700, "Intermediário", 2);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Comunicação Efetiva e Não-Violenta", 60, 500, "Iniciante", 3);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Gestão e Empreendedorismo", 25, 250, "Intermediário", 4);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("Teorias da Comunicação", 120, 1500, "Avançado", 3);

INSERT INTO tb_curso(nome, duracaoHoras, preco, modulo, categoria_id)
VALUES ("UX Writing: Introdução ", 60, 800, "Iniciante", 5);

SELECT * FROM tb_curso WHERE preco>500;

SELECT * FROM tb_curso WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_curso WHERE nome LIKE "%j%%";

SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_curso.categoria_id = tb_categoria.id;

SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_curso.categoria_id = tb_categoria.id
WHERE categoria_id = 3;