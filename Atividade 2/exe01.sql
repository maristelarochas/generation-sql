CREATE DATABASE db_recursosHumanos;
USE db_recursosHumanos;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    dataNascimento DATE NOT NULL,
    cargo VARCHAR(250) NOT NULL,
    salario DECIMAL (8,2) NOT NULL
);

INSERT INTO tb_funcionarios(nome, dataNascimento, cargo, salario)
VALUES("Maristela", "2000-10-27", "Desenvolvedor Junior", 5000.50), 
	("Maria", "1999-07-25", "Analista de Dados", 1500.96), 
	("Clarice", "2003-03-02", "Estagiária", 1009.77), 
	("Ana", "1995-09-17", "Tech Lead", 2750.32), 
	("Beatriz", "1900-01-06", "Scrum Master", 8350.60);
    
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 1609.98 WHERE id = 2;