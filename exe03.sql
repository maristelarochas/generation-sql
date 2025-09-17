CREATE DATABASE db_colegio;
USE db_colegio;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(255) NOT NULL
);

INSERT INTO tb_estudantes(nome, nota, idade, turma)
VALUES("Ana Clara Silva", 8.5, 14, "8A"),
("João Pedro Santos", 8.0, 15, "9B"),
("Mariana Oliveira", 5.5, 13, "7C"),
("Lucas Almeida", 6.0, 14, "8A"),
("Gabriel Costa", 4.5, 12, "6B");

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 9.2 WHERE id = 3;