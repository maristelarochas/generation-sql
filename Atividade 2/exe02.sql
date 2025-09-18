CREATE DATABASE db_comercio;
USE db_comercio;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(7,2),
    peso DECIMAL(5,2),
    breveDescricao VARCHAR(255)
);

INSERT INTO tb_produtos(nome, valor, peso, breveDescricao)
VALUES("Memoria RAM",279.90, 0.5,"RGB 16GB"),
("Smart TV",7192.60, 2.43,"4k QLED"),
("Robo aspirador",1129.90,2,"Mapeamento a laser"),
("Battlefield",352.47,0,"Digital PS5"),
("Water Cooler", 265.99, 0.5, "RGB 240mm"),
("SSD", 478.99, 1, "1TB"),
("Placa de video", 1799.99, 0.5,"8GB"),
("Headset",274.99,1.5,"Plug and play");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET peso = 0.8 WHERE id = 7;