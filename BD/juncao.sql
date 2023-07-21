-- Junção: Unir tabelas para realizar consultas mais elaboradas
-- baseadas em seus relacionamentos

USE lojinha_db;

SELECT * FROM vendedor
JOIN endereco ON idVendedor = fkVendedor; -- O que faz o vinculo entre as tabelas

SELECT nome, email, uf, cidade -- Podemos escolher quais colunas exibir da junção
FROM vendedor
	JOIN endereco
    ON idVendedor = fkVendedor;
    
-- Como filtrar os vendedores de SP?

SELECT nome, email, uf, cidade
FROM vendedor
	JOIN endereco
    ON idVendedor = fkVendedor
WHERE uf = "SP" AND email LIKE "%gmail,com";

-- Q1: JUNTE produto + categoria
SELECT * FROM produto
	JOIN categoria
    ON idCategoria = fkCategoria;
    
SELECT produto.nome, preco, descricao, categoria.nome AS categoria
FROM  produto
	JOIN categoria
	ON idCategoria = fkCategoria;

SELECT * FROM produto AS P
	JOIN categoria AS C
    ON C.idCategoria = P.fkCategoria;
    
SELECT nome, preco, nome
FROM produtos AS P
	JOIN categoria AS C
    on C.idCategoria = P.fkcategoria
WHERE C.nome IN ("Jogos", "Eletrônicos");


SELECT P.nome, P.preco, C.nome
FROM produto AS P
	JOIN categoria AS C
    ON C.idCategoria = P.fkCategoria;