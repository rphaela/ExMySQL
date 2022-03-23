CREATE database db_produtos;

USE db_produtos;

CREATE table tb_estoque(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
categoria varchar(255),
valor double,
disponivel boolean,

primary key(id)
);

INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("KIT Shampoo e Condicionador", "TRUSS", "Cabelo", 135.78, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("Prime", "MAC", "Maquiagem", 89.90, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("Paleta de Sombras", "Vult", "Maquiagem", 75.00, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("Protetor Solar", "La Roche-Posay ", "Skin Care", 82.50, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("Hidratante Facial", "Neutrogena", "Skin Care", 78.00, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("KIT Completo Maquiagem", "MAC", "Maquiagem", 799.99, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("Conjunto Good Girl", "Carolina Herrera", "Perfumes", 1337, true);
INSERT INTO tb_estoque(nome, marca, categoria, valor, disponivel) VALUES ("HOT!HOT!", "Carolina Herrera", "Perfumes", 648.90, true);

SELECT * FROM tb_estoque WHERE valor>500;

SELECT * FROM tb_estoque WHERE valor<500;

UPDATE tb_estoque SET disponivel=false WHERE id=7;

SELECT * FROM tb_estoque;