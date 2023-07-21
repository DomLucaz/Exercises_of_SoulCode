CREATE DATABASE loja_db;

USE loja_db;

CREATE TABLE vendedor(
	idVendedor INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    sobrenome VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL, 
    dataNascimento DATE
);

DROP TABLE vendedor; -- Apaga todos os registros e o schema da tabela

-- categoria - VARCHAR(30) NOT NULL

ALTER TABLE vendedor
ADD COLUMN cat VARCHAR (30) NOT NULL DEFAULT("Sem categoria");

SELECT * FROM vendedor;

INSERT INTO vendedor (nome, sobrenome, email, dataNascimento)
VALUES ("Jose", "Almir", "jose.almir@email.com", "1990-01-01");

INSERT INTO vendedor (nome, sobrenome, email, dataNascimento)
VALUES ("Maria", "Souza", "maria.souza@email.com", "1992-06-01");

-- Renomear coluna + constrainsts

ALTER TABLE vendedor
CHANGE cat categoria VARCHAR(30) NOT NULL DEFAULT ("Sem categoria");
-- Alterar constraits

ALTER TABLE vendedor
MODIFY nome VARCHAR(75) NOT NULL;

-- Remover coluna

ALTER TABLE vendedor
DROP COLUMN dataNascimento;

SELECT * FROM vendedores;

-- Renomear tabela
ALTER TABLE vendedor 
RENAME vendedores; -- Altera o nome da tabela por completo

SELECT * FROM vendedores;

-- Renomear coluna sem alterar constraints (MySQL 8.0)
ALTER TABLE vendedores
RENAME COLUMN categoria TO cat;

SELECT * FROM vendedores;

DELETE FROM vendedores WHERE idVendedor = 2;

UPDATE vendedores
SET cat = "Tecnologia"
WHERE idVendedor = 1;