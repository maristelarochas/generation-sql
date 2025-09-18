CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    incrementoAtaque INT NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    classe BIGINT NOT NULL,
    FOREIGN KEY (classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, incrementoAtaque)
VALUES ("Guerreiro", 20),
("Mago", 15),
("Caçador", 15),
("Ladrão", 10),
("Clérigo", 5);

INSERT INTO tb_personagens (nome, ataque, defesa, classe)
VALUES ("Arthas", 900, 700, 1),
("Merlina", 4000, 2000, 2),
("Elandor", 6500, 1500, 3),
("Shade", 1000, 900, 4),
("Seraphina", 800, 300, 5),
("Chorg", 2300, 3000, 1),
("Lyca", 1500, 1000, 2),
("Kael", 700, 500, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa < 2000 AND defesa > 1000;

SELECT * FROM tb_personagens WHERE nome LIKE ("%C%");

SELECT * FROM 
tb_personagens LEFT JOIN tb_classes
ON tb_personagens.classe = tb_classes.id;

SELECT * FROM 
tb_personagens LEFT JOIN tb_classes
ON tb_personagens.classe = tb_classes.id
WHERE classe = 2;

-- DROP DATABASE db_generation_game_online;