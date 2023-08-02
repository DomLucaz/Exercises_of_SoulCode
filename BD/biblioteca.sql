CREATE DATABASE biblioteca_db;

USE biblioteca_db;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL, 
    dataNasc DATE NOT NULL,
    CPF CHAR(11) NOT NULL,
    dataCadastro DATE NOT NULL,
    telCelular CHAR(11)
);

CREATE TABLE perfil (
    idPerfil INT PRIMARY KEY AUTO_INCREMENT,
    preferenciaLeitura VARCHAR(255),
    descricao VARCHAR(1000),
    
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE autor(
	idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250),
    dataNasc DATE,
    paisOrigem VARCHAR(50)
);

CREATE TABLE genero(
	idGenero INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250)
);

CREATE TABLE livro(
	idLivro INT PRIMARY KEY AUTO_INCREMENT,
    ISBN VARCHAR(13) NOT NULL,
    anoPublicacao INT,
    titulo VARCHAR(255) NOT NULL,
    idioma VARCHAR(50),
    numeroPaginas INT,
    editora VARCHAR(255),
    quantidadeDisp INT,
    
    fkAutor INT,
	FOREIGN KEY(fkAutor) REFERENCES autor(idAutor),
    fkGenero INT,
    FOREIGN KEY(fkGenero) REFERENCES genero(idGenero)
);

CREATE TABLE locacao(
	idLocacao INT PRIMARY KEY AUTO_INCREMENT,
	statusLocacao VARCHAR(30),
    dataLocacao  DATE NOT NULL,
    dataDevolucao  DATE NOT NULL,
    dataDevEfetiv  DATE,
    
    fkUsuario INT,
    FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario),
    
    fkLivro INT,
    FOREIGN KEY(fkLivro) REFERENCES livro(idLivro)
);

CREATE TABLE reserva(
	idReserva INT PRIMARY KEY AUTO_INCREMENT,
    dataDevolPrevista DATE,
    statusReserva VARCHAR(30),
    dataReserva DATE,
    
    fkUsuario INT,
    FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario),
    
    fkLivro INT,
    FOREIGN KEY(fkLivro) REFERENCES livro(idLivro)

);

INSERT INTO usuario (nomeCompleto, email, dataNasc, CPF, dataCadastro, telCelular)
VALUES
    ('João da Silva', 'joao.silva@hotmail.com', '1990-05-15', '12345678900', '2023-01-10', '11987654321'),
    ('Maria Oliveira', 'maria.oliveira@hotmail.com', '1985-11-22', '98765432100', '2021-04-20', '11987654321'),
    ('Pedro Santos', 'pedro.santos@gmail.com', '1998-03-10', '56789012300', '2021-11-11', '11987654321'),
    ('Ana Rodrigues', 'ana.rodrigues@gmail.com', '2000-08-01', '65432109800', '2020-11-05', '11987654321'),
    ('Carlos Sousa', 'carlos.sousa@gmail.com', '1976-12-05', '32109876500', '2020-02-08', '11987654321'),
    ('Luisa Souza', 'luisa.souza@yahoo.com.br', '1994-09-18', '78901234500', '2021-05-22', '11987654321'),
    ('Rafaela Pereira', 'rafaela.pereira@outlook.com', '1988-06-30', '89012345600', '2022-05-25', '11987654321'),
    ('Fernando Almeida', 'fernando.almeida@gmail.com', '1992-04-25', '90123456700', '2022-09-17', '71987654321'),
    ('Mariana Costa', 'mariana.costa@outlook.com', '2001-01-08', '23456789000', '2020-11-13', '11987654321'),
    ('Gustavo Lima', 'gustavo.lima@hotmail.com', '1982-07-12', '34567890100', '2020-10-03', '11987654321');

INSERT INTO perfil (preferenciaLeitura, descricao, fkUsuario)
VALUES
    ('Romances e Fantasia', 'Gosto de algumas series de livros de fantasia e alguns romances clássicos.', 1),
    ('Ficção Científica e Suspense', 'Fa de ficção cientifica, HQ adora livros de suspense.', 2),
    ('História e Biografias', 'Gosto de ler sobre história do mundo e biografias de personalidades importantes.', 3),
    ('Mistério e Policial', 'Prefiro livros com enigmas e historias policiais.', 4),
    ('Poesia e Contos', 'Adoro poesia e livros de ficcao.', 5),
    ('Romances e Fantasia', 'Já li uma série de livros de fantasia e alguns romances classicos.', 6),
    ('Ficção Científica e Suspense', 'Fa de ficcao científica e adoro livros de suspense.', 7),
    ('História e Biografias', 'Gosto de ler sobre historia brasileira e biografias de personalidades importantes.', 8),
    ('Manga, HQ e Contos', 'Prefiro mangas, HQ e livros de contos de super herois.', 9),
    ('Poesia e Contos', 'Adoro poesia, literatura classicas e escritores brasileiros.', 10);
    
INSERT INTO genero (nome)
VALUES
    ('Fantasia'),
    ('Ficcao Cientifica'),
    ('Romance'),
    ('Suspense'),
    ('História'),
    ('Biografia'),
    ('Misterio'),
    ('Poesia'),
    ('Manga'),
	('HQ'),
    ('literatura brasileira'),
	('Policial'),
    ('Contos');
    
INSERT INTO autor (nome, dataNasc, paisOrigem)
VALUES
    ('J.K. Rowling', '1965-07-31', 'Reino Unido'),
    ('George R.R. Martin', '1948-09-20', 'Estados Unidos'),
    ('Agatha Christie', '1890-09-15', 'Reino Unido'),
    ('Isaac Asimov', '1920-01-02', 'Rússia'),
    ('Yuval Noah Harari', '1976-02-24', 'Israel'),
    ('Jane Austen', '1775-12-16', 'Reino Unido'),
    ('George Orwell', '1903-06-25', 'Reino Unido'),
    ('Malala Yousafzai', '1997-07-12', 'Paquistão'),
    ('Virginia Woolf', '1882-01-25', 'Reino Unido'),
    ('J.R.R. Tolkien', '1892-01-03', 'Reino Unido'),
    ('Anne Frank', '1929-06-12', 'Alemanha'),
    ('Machado de Assis', '1839-06-21', 'Brasil'),
    ('Carlos Drummond de Andrade', '1902-10-31', 'Brasil'),
    ('Akira Toriyama', '1955-04-05', 'Japão'),
    ('Eiichiro Oda', '1975-01-01', 'Japão'),
    ('Frank Miller', '1957-01-27', 'Estados Unidos'),
    ('Guimarães Rosa', '1908-06-27', 'Brasil'),
    ('Arthur Conan Doyle', '1859-05-22', 'Reino Unido'),
    ('Clarice Lispector', '1920-12-10', 'Brasil'),
    ('Monteiro Lobato', '1882-04-18', 'Brasil');

INSERT INTO livro (ISBN, anoPublicacao, titulo, idioma, numeroPaginas, editora, quantidadeDisp, fkAutor, fkGenero)
VALUES
    ('9781234567890', 1997, 'Harry Potter e a Pedra Filosofal', 'Português', 400, 'Editora Fantástica', 5, 1, 1),
    ('9782345678901', 1996, 'A Guerra dos Tronos', 'Inglês', 350, 'Editora Fantástica', 2, 2, 1),
    ('9783456789012', 1934, 'Assassinato no Expresso Oriente','Português', 280, 'Editora Romance', 1, 3, 12),
    ('9784567890123', 1951, 'Fundação', 'Português', 320, 'Editora Sci-fi', 3, 4, 2),
    ('9785678901234', 2011, 'Sapiens: Uma Breve História da Humanidade', 'Português', 500, 'Editora Histórica', 3, 5, 5),
    ('9786789012345', 1813, 'Orgulho e Preconceito', 'Português', 600, 'Editora Romance', 3, 6, 3),
    ('9787890123456', 1949, '1984', 'Português', 420, 'Editora Misterio', 2, 7, 2),
    ('9788901234567', 2013, 'Eu Sou Malala', 'Português', 150, 'Editora Biografica', 1, 8, 6),
    ('9789012345678', 1927, 'Ao Farol', 'Japonês', 250, 'Editora Mulher', 2, 9, 1),
    ('9780123456789', 1954, 'O Senhor dos Anéis', 'Inglês', 180, 'Editora HQ', 2, 10, 1),
    ('9782345678900', 1947, 'O Diário de Anne Frank', 'Português', 400, 'Editora Biografica',1, 11, 6),
    ('9783456789001', 1899, 'Dom Casmurro', 'Português', 280, 'Editora Brasileira', 4, 12, 11),
    ('9784567890112', 1956, 'Sentimento do Mundo', 'Português', 320, 'Editora Poesia', 1, 13, 8),
    ('9785678901204', 1988, 'Dragon Ball', 'Inglês', 500, 'Editora Mangá', 20, 14, 9),
    ('9786789012315', 1999, 'One Piece', 'Inglês', 350, 'Editora Mangá', 20, 15, 9),
    ('9787890123467', 1986, 'O Cavaleiro das Trevas', 'Português', 420, 'Editora HQ', 10, 16, 10),
    ('9788901234568', 1956, 'Grande Sertão: Veredas', 'Português', 150, 'Editora Nacional', 1, 17, 11),
    ('9789012345679', 1887, 'Um Estudo em Vermelho', 'Inglês', 250, 'Editora Mistério', 1, 18, 4),
    ('9780123456780', 1977, 'A Hora da Estrela', 'Português', 180, 'Editora Nacional', 2, 19, 13),
    ('9782345678902', 1927, 'Sítio do Picapau Amarelo', 'Português', 400, 'Editora Nacional', 2, 20, 11);

	INSERT INTO locacao (statusLocacao, dataLocacao, dataDevolucao, fkUsuario, fkLivro)
VALUES
    ('Em andamento', '2023-07-15', '2023-07-25', 1, 2),
    ('Concluída', '2023-07-10', '2023-07-20', 2, 5),
    ('Em andamento', '2023-07-12', '2023-07-22', 3, 9),
    ('Concluída', '2023-07-18', '2023-07-28', 4, 14),
    ('Em andamento', '2023-07-20', '2023-07-30', 5, 6),
    ('Concluída', '2023-07-05', '2023-07-15', 6, 7),
    ('Em andamento', '2023-07-14', '2023-07-24', 7, 12),
    ('Concluída', '2023-07-01', '2023-07-11', 8, 16),
    ('Em andamento', '2023-07-03', '2023-07-13', 9, 3),
    ('Concluída', '2023-07-22', '2023-08-01', 10, 17);


INSERT INTO reserva (dataDevolPrevista, statusReserva, dataReserva, fkUsuario, fkLivro)
VALUES
    ('2023-08-10', 'Pendente', '2023-08-01', 10, 13),
    ('2023-08-12', 'Pendente', '2023-08-02', 6, 19);


DROP DATABASE biblioteca_db;

SELECT * FROM usuario;
SELECT * FROM perfil;
SELECT * FROM autor;
SELECT * FROM genero;
SELECT * FROM livro;
SELECT * FROM locacao;
SELECT * FROM reserva;

DESCRIBE usuario;
DESCRIBE perfil;
DESCRIBE autor;
DESCRIBE genero;
DESCRIBE livro;
DESCRIBE locacao;
DESCRIBE reserva;

DELETE FROM genero WHERE nome = 'Misterio';

UPDATE genero SET nome = 'Literatura Nacional' WHERE nome = 'Literatura Brasileira';

-- Tabela para encontrar o livro com menor números de páginas
SELECT MIN(numeroPaginas) AS min_paginas FROM livro;

-- Tabela para somar o total de livros disponíveis (QuantidadeDisp) por gênero
SELECT fkGenero, SUM(quantidadeDisp) AS total_disponiveis_por_genero
FROM livro
GROUP BY fkGenero;

-- Tabela para visualizar quantos usuarios tem livros reservados em status 'Em andamento'
SELECT COUNT(DISTINCT locacao.fkUsuario) AS quantidade_usuarios_em_andamento
FROM usuario
INNER JOIN locacao ON usuario.idUsuario = locacao.fkUsuario
WHERE locacao.statusLocacao = 'Em andamento';

-- Selecionar todos os livros disponíveis (quantidadeDisp > 0)
SELECT * FROM livro WHERE quantidadeDisp > 0;

-- Tabela para visualizar quantidade de livros disponíveis por genero
SELECT genero.nome AS genero, COUNT(livro.idLivro) AS quantidade_disponivel
FROM genero
JOIN livro ON genero.idGenero = livro.fkGenero
WHERE livro.quantidadeDisp > 0 OR livro.quantidadeDisp IS NULL
GROUP BY genero.nome;

-- Tabela para visualizar todos os livros com nome do autor
SELECT livro.titulo, autor.nome AS nome_autor
FROM livro
JOIN autor ON livro.fkAutor = autor.idAutor;

-- Contar a quantidade de livros por gênero
SELECT genero_livros.nome AS genero, COUNT(livros.idLivro) AS quantidade
FROM livro AS livros
JOIN genero AS genero_livros ON livros.fkGenero = genero_livros.idGenero
GROUP BY genero_livros.nome;

-- Quantos livros tem apenas de manga?
SELECT livro.titulo, livro.quantidadeDisp AS quantidade
FROM livro
INNER JOIN genero ON livro.fkGenero = genero.idGenero
WHERE genero.nome = 'Manga' AND livro.quantidadeDisp > 0;

-- Tabela com nome do titulo do livro e a quantidade disponiveis deles

SELECT livro.titulo, livro.quantidadeDisp AS quantidade
FROM livro;

-- Tabela para encontrar a data mais recente de locação para cada usuário:

SELECT nomeUser.nomeCompleto AS nome_usuario, MAX(locado.dataLocacao) AS data_ultima_locacao
FROM locacao AS locado
JOIN usuario AS nomeUser ON locado.fkUsuario = nomeUser.idUsuario
GROUP BY nomeUser.nomeCompleto;

-- Tabela para calcular a quantidade total de livros locados por nome usuário:
SELECT nomeUser.nomeCompleto AS nome_usuario, COUNT(*) AS total_livros_locados
FROM locacao AS livroLocado
JOIN usuario AS nomeUser ON livroLocado.fkUsuario = nomeUser.idUsuario
GROUP BY nomeUser.nomeCompleto;



