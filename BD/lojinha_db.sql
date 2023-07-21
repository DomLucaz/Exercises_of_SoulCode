CREATE DATABASE  lojinha_db;

USE lojinha_db;


CREATE TABLE vendedor(
	idVendedor INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    sobrenome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL, 
    dataNascimento DATE	
);

CREATE TABLE endereco (
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    uf VARCHAR(2) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    rua VARCHAR(30) NOT NULL,
	cep VARCHAR(9) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(10), 

    fkVendedor INTEGER UNIQUE NOT NULL, 
    FOREIGN KEY(fkVendedor)
	REFERENCES vendedor (idVendedor)
);

CREATE TABLE categoria (
	idCategoria INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE produto (
	idProduto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    descricao VARCHAR(40),
    percentualDesconto DECIMAL(4,2) DEFAULT(0.0), 
    validadeDesconto DATE, 
    estoque INT NOT NULL, 
    
    fkVendedor INTEGER NOT NULL, -- Impede que o ID do colaborador seja repetido (1:1)
		FOREIGN KEY(fkVendedor)
		REFERENCES vendedor (idVendedor),
    
    fkCategoria INTEGER NOT NULL,
		FOREIGN KEY(fkCategoria)
		REFERENCES categoria (idCategoria)
);


DROP DATABASE lojinha_db;

ALTER TABLE produto
MODIFY percentualDesconto DECIMAL(2,1);

ALTER TABLE produto
MODIFY validadeDesconto DATE;

-- 

DESCRIBE vendedor;

DESCRIBE endereco;

DESCRIBE categoria;

DESCRIBE produto;

INSERT INTO vendedor (nome, sobrenome, email, dataNascimento)
VALUES 
    ('João', 'Silva', 'joao.silva@gmail.com', '1990-01-01'),
    ('Maria', 'Santos', 'maria.santos@hotmail.com', '1991-02-02'),
    ('Pedro', 'Ferreira', 'pedro.ferreira@yahoo.com', '1992-03-03'),
    ('Ana', 'Gomes', 'ana.gomes@outlook.com', '1993-04-04'),
    ('Lucas', 'Rodrigues', 'lucas.rodrigues@domain.com', '1994-05-05'),
    ('Laura', 'Almeida', 'laura.almeida@gmail.com', NULL),
    ('Carlos', 'Mendes', 'carlos.mendes@outlook.com', '1996-07-07'),
    ('Mariana', 'Fernandes', 'mariana.fernandes@yahoo.com', '1997-08-08'),
    ('Rafael', 'Pereira', 'rafael.pereira@domain.com', '1998-09-09'),
    ('Juliana', 'Lima', 'juliana.lima@gmail.com', NULL);
    
INSERT INTO endereco (uf, cidade, rua, cep, numero, fkVendedor)
VALUES 
    ('SP', 'São Paulo', 'Avenida Paulista', '01310100', '1000', 1),
    ('RJ', 'Rio de Janeiro', 'Rua Copacabana', '22020001', '500', 2),
    ('MG', 'Belo Horizonte', 'Avenida Afonso Pena', '30130001', '200', 3),
    ('RS', 'Porto Alegre', 'Rua da Praia', '90010001', '300', 4),
    ('BA', 'Salvador', 'Avenida Oceânica', '40140130', '400', 5),
    ('SC', 'Florianópolis', 'Rua das Flores', '88010000', '100', 6),
    ('CE', 'Fortaleza', 'Avenida Beira Mar', '60170001', '200', 7),
    ('PR', 'Curitiba', 'Rua das Araucárias', '80010001', '300', 8),
    ('PE', 'Recife', 'Avenida Boa Viagem', '51011000', '400', 9),
    ('DF', 'Brasília', 'Rua das Palmeiras', '70070001', '500', 10);
    
INSERT INTO categoria (nome)
VALUES 
    ('Eletrônicos'),
    ('Roupas'),
    ('Alimentos'),
    ('Acessórios'),
    ('Móveis'),
    ('Beleza'),
    ('Livros'),
    ('Esportes'),
    ('Jogos'),
    ('Brinquedos');
    
INSERT INTO produto (nome, preco, descricao, percentualDesconto, validadeDesconto, estoque, fkVendedor, fkCategoria)
VALUES 
    ('Celular', 1500.00, 'Smartphone avançado', 0.0, NULL, 100, 1, 1),
    ('Camiseta', 29.99, 'Camiseta estampada', 0.2, '2023-07-13', 200, 2, 2),
    ('Arroz', 5.99, 'Arroz integral, pacote de 1kg', 0.1, '2023-07-12', 150, 3, 3),
    ('Colar', 49.99, 'Colar de pérolas', 0.3, '2023-07-08', 50, 4, 4),
    ('Sofá', 999.99, 'Sofá reclinável de couro', 0.4, '2023-07-11', 300, 5, 5),
    ('Perfume', 79.99, 'Perfume masculino', 0.1, '2023-07-09', 250, 6, 6),
    ('Livro', 19.99, 'Livro de fantasia', 0.2, '2023-07-07', 75, 7, 7),
    ('Bola', 9.99, 'Bola de basquete', 0.0, NULL, 125, 8, 8),
    ('PlayStation', 1999.99, 'Console de videogame', 0.4, '2023-07-06', 175, 9, 9),
    ('Quebra-Cabeça', 14.99, 'Quebra-Cabeça 1000 peças', 0.5, '2023-07-05', 225, 10, 10),
    ('Headphone', 99.99, 'Fone de ouvido sem fio', 0.3, '2023-07-15', 100, 1, 1),
    ('Vestido', 49.99, 'Vestido de festa longo', 0.2, '2023-07-15', 150, 2, 2),
    ('Chocolate', 4.99, 'Chocolate ao leite, barra de 100g', 0.1, '2023-07-15', 200, 3, 3),
    ('Relógio', 89.99, 'Relógio de pulso masculino', 0.0, NULL, 50, 4, 4),
    ('Cama', 799.99, 'Cama de casal com colchão', 0.4, '2023-07-15', 300, 5, 5),
    ('Maquiagem', 59.99, 'Kit de maquiagem profissional', 0.1, '2023-07-15', 250, 6, 6),
    ('Romance', 14.99, 'Livro de romance', 0.2, '2023-07-15', 75, 7, 7),
    ('Bicicleta', 149.99, 'Bicicleta urbana', 0.3, '2023-07-15', 125, 8, 8),
    ('Xbox', 1799.99, 'Console de videogame', 0.4, '2023-07-15', 175, 9, 9),
    ('Lego', 24.99, 'Kit de montar Lego', 0.5, '2023-07-15', 225, 10, 10);


SELECT * FROM vendedor;

SELECT * FROM endereco;

SELECT * FROM produto;

SELECT * FROM categoria;

SELECT * FROM produto WHERE preco > 500;

SELECT * FROM produto WHERE preco >500 and preco <= 1000;

SELECT * FROM vendedor WHERE idVendedor = 7;

SELECT * FROM vendedor WHERE email LIKE '%@hotmail%';

SELECT * FROM vendedor WHERE idVendedor = 1;

-- Filtrar os produtos com preço maior que 500;
SELECT * FROM produto WHERE preco > 500;
-- Filtrar os produtos com preço entre 500 e 1000;
SELECT * 
FROM produto 
WHERE preco BETWEEN 500 AND 1000;

-- Filtrar os produtos do vendedor com ID = 7;
SELECT *
FROM produto
WHERE fkVendedor = 7;

-- Filtrar os vendedores com email (@hotmail);
SELECT *
FROM vendedor
WHERE email LIKE "%hotmail.com";

-- Filtrar os produtos do vendedor com ID = 1 e calcular o preço do produto com desconto;
SELECT nome, preco, percentualDesconto, preco - (preco * percentualDesconto) AS precoFinal
FROM produto
WHERE fkVendedor = 2;

-- Filtrar os produtos das categorias Roupas(2), Alimentos(3) e Acessórios(4);
SELECT * FROM categoria;

SELECT *
FROM produto
WHERE fkCategoria IN(4, 3, 2);

-- Ordenação
SELECT *
FROM produto
ORDER BY preco; -- ASCENDENTE => CRESCENTE (DO MENOR P/ O MAIOR)

SELECT *
FROM produto
ORDER BY preco DESC; -- DECRESCENTE (DO MAIOR P/ O MENOR)

SELECT *
FROM produto
ORDER BY nome DESC; -- Z-A

SELECT *
FROM vendedor
ORDER BY nome DESC, sobrenome DESC; -- Usa outra coluna como critério de "desempate"

UPDATE vendedor
SET nome = "Mariana"
WHERE idVendedor = 2;

SELECT *
FROM vendedor
WHERE dataNascimento IS NOT NULL
ORDER BY dataNascimento;

-- LIMIT 
SELECT *
FROM produto
ORDER BY preco DESC
LIMIT 3;

DESCRIBE uf;

-- FROM WHERE > ORDER BY > LIMIT
-- Q1: Filtre os produtos cujo estoque está entre 200 e 800,
-- ordene por preco decrescente, e limite a 5 registros.

SELECT * -- todas as colunas
FROM produto -- tabela
WHERE estoque BETWEEN 200 AND 800 -- estoque entre 200 e 800
ORDER BY preco DESC -- preco na ordem decrescente
LIMIT 5; -- limite de 5 linhas

-- Q2: Exiba nome, sobrenome e data de nascimento
-- dos vendedores (renomear para aniversario), apenas os que nasceram entre 1993 e 1995,
-- ordene por nome (ordem crescente) e limite a 20.


SELECT nome, sobrenome, dataNascimento AS aniversario 
FROM vendedor
-- WHERE YEAR (dataNascimento) BETWEEN 1993 AND 1995
WHERE dataNascimento BETWEEN "1993-01-01" AND "1993-12-31"
ORDER BY none
LIMIT 20;

-- Q3: Exiba nome, preco, lucro total (preco * estoque) da tabela produto.
-- Apenas os produtos com categoria 1, 2, 3 E com preço menor que 100.
-- Ordene por nome crescente
-- Limite a 100.

SELECT nome, preco, preco*estoque AS lucro_total
FROM produto
WHERE fkCategoria IN(1,2,3) AND preco < 100
ORDER BY none
LIMIT 100;

SELECT CURDATE();
SELECT YEAR("2000-05-20");
SELECT MONTH("2000-05-20");
SELECT MONTH(CURDATE());
SELECT YEAR(CURDATE());

-- Filtrar os vendedores que nasceram entre 1980 e 1990
SELECT *
FROM vendedor
WHERE YEAR(dataNascimento) BETWEEN 1980 AND 1990;

-- Filtrar os produtos que o desconto venceu mês passado
SELECT *
FROM produto
WHERE MONTH(validadeDesconto) = MONTH(CURDATE()) - 1; -- Checa o mês de validade do desconto com o mês atual - 1 

SELECT *
FROM produto
WHERE MONTH(validadeDesconto) BETWEEN 1 AND 3; -- Checa o mês de validade com o primeiro 1/4 do ano

UPDATE produto
SET validadeDesconto = "2023-06-20"
WHERE idProduto = 4;

-- Q1: Agrupar os produtos por percentualDesconto e contar quantos em cada grupo;

SELECT percentualDesconto, COUNT(*) AS quantidade
FROM produto
GROUP BY percentualDesconto;

-- Q2: Agrupar os produtos por fkCategoria e calcular o preço médio por categoria;

SELECT fkCategoria, AVG(preco) AS preco_medio
FROM produto
GROUP BY fkCategoria
ORDER BY preco_medio DESC;
	
-- Q3: Agrupar os endereços por UF e mostrar quantos clientes estão em cada estado;

SELECT UF, COUNT(*) AS total_vendedor
FROM endereco
GROUP BY UF;

-- Q4: Agrupar os produtos por fkVendedor e calcular a média de estoque.

SELECT fkVendedor, AVG(estoque) AS media_estoque
FROM produto
GROUP BY fkVendedor
HAVING media_estoque > 100
ORDER BY media_estoque;

-- Filtrar os grupos com média acima de 100;
-- Ordenar por média de estoques;

SELECT * FROM vendedor;
SELECT * FROM endereco;


USE lojadb;

-- JOIN: Unir duas tabelas e juntar os registros que possuem relacionamentos.

SELECT *
FROM produto
    JOIN categoria
    ON fkCategoria = idCategoria;
    
SELECT produto.nome AS produto, preco, estoque, categoria.nome AS categoria
FROM produto
    JOIN categoria
    ON fkCategoria = idCategoria;
    
SELECT P.nome AS produto, C.nome AS categoria
FROM produto AS P
    JOIN categoria AS C
    ON P.fkCategoria = C.idCategoria
WHERE C.nome = "Livros";

SELECT V.nome, V.email, E.uf, E.cidade
FROM vendedor AS V
    JOIN endereco AS E
    ON E.fkVendedor = V.idVendedor
WHERE E.uf = "SP";

SELECT E.uf, COUNT(*) AS total
FROM vendedor AS V
    JOIN endereco AS E
    ON E.fkVendedor = V.idVendedor
GROUP BY E.uf;

SELECT *
FROM produto AS P
    JOIN vendedor AS V
    ON P.fkVendedor = V.idVendedor
    JOIN endereco AS E
    ON E.fkVendedor = V.idVendedor;

SELECT *
FROM produto AS P
    JOIN endereco AS E
    ON E.fkVendedor = P.fkVendedor; -- Junta as linhas onde o vendedor é o mesmo.

-- Q1: Quero filtrar os produtos dos estados CE, SP e MG E que estão acima de 10% de desconto.
SELECT P.nome AS produto, P.preco, P.percentualDesconto, E.uf
FROM produto AS P
    JOIN endereco AS E
    ON E.fkVendedor = P.fkVendedor
WHERE E.uf IN("CE", "SP", "MG") AND P.percentualDesconto > 0.10;

-- Q2: Conte quantos produtos cada vendedor possui
SELECT V.nome, V.sobrenome, COUNT(*) AS total_produtos
FROM produto AS P
    JOIN vendedor AS V
    ON P.fkVendedor = V.idVendedor
GROUP BY V.idVendedor;

