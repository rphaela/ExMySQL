CREATE database db_escola;

USE db_escola;

CREATE table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
ano varchar(255),
turma varchar(255),
nota double,

primary key(id)
);

INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Maria Silva", 14, "9 ano", "B", 8.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("João Cordeiro", 14, "9 ano", "A", 7.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Joana Magalhães", 16, "2 ano", "C", 9.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Thiago Oliveira", 15, "1 ano", "B", 5.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Luiza Goes", 14, "9 ano", "C", 4.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Victor Gomes", 17, "3 ano", "A", 6.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Rodrigo Mendes", 17, "3 ano", "B", 3.5);
INSERT INTO tb_alunos(nome, idade, ano, turma, nota) VALUES ("Marina Borges", 15, "1 ano", "C", 5.5);

SELECT * FROM tb_alunos WHERE nota>7;

SELECT * FROM tb_alunos WHERE nota<7;

UPDATE tb_alunos SET nota=8 WHERE id=6;

SELECT * FROM tb_alunos;