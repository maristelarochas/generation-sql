CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    descricao VARCHAR(500)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	valor DECIMAL(5,2) NOT NULL,
    categoria BIGINT NOT NULL,
    FOREIGN KEY(categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES ("Doce", "Pizzas com recheios doces, ideais para sobremesa"),
("Salgada", "Pizzas tradicionais com recheios salgados"),
("Vegetariana", "Sem carne, à base de vegetais e queijos"),
("Especial", "Combinações gourmet e receitas exclusivas"),
("Vegana", "Sem ingredientes de origem animal");

INSERT INTO tb_pizzas (nome, valor, categoria)
VALUES ("Calabresa", 49.99, 2),
("Frango com Catupiry", 54.90, 2),
("Portuguesa", 52.50, 2),
("Quatro Queijos", 102.00, 2),
("Chocolate com Morango", 42.00, 1),
("Banana com Canela", 39.90, 1),
("Marguerita", 50.00, 3),
("Vegana Mix", 59.90, 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM
tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria = tb_categorias.id;

SELECT * FROM 
tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria = tb_categorias.id
WHERE tb_categorias.id = 1;
