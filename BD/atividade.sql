CREATE DATABASE empresa2;
USE empresa2;

SHOW TABLES;

CREATE TABLE departamento(
    idDepartamento INTEGER PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(150) NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE colaborador(
	idColaborador INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    salario DECIMAL(8, 2) NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL,
    fkDepartamento INTEGER NOT NULL,
    FOREIGN KEY(fkDepartamento)
    REFERENCES departamento(idDepartamento)
);

CREATE TABLE endereco(
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(40) DEFAULT("Sem complemento"),
    fkColaborador INTEGER UNIQUE NOT NULL,
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

SHOW TABLES;
SELECT * FROM departamento;
SELECT * FROM colaborador;
SELECT * FROM endereco;

INSERT INTO departamento
VALUES (NULL, "Desenvolvimento", "Desenvolve software");

INSERT INTO departamento
VALUES (NULL, "Marketing", "Faz marketing");

INSERT INTO departamento
VALUES (NULL, "Financeiro", "Cuida das finanças");

INSERT INTO colaborador
VALUES (NULL, "Maria Gomes", "11111111111", 7000.0, "+5588972308021", "1979-01-28", 1);

INSERT INTO colaborador
VALUES (NULL, "José Ferreira", "11111111112", 7000.0, "+5588972308022", "1980-01-28", 1);

INSERT INTO colaborador
VALUES (NULL, "Gabriel Souza", "11111111113", 6000.0, "+5588972308025", "1990-01-28", 2);

SELECT * FROM colaborador;

DESCRIBE endereco;

INSERT INTO endereco (uf, cidade, rua, numero, fkColaborador)
VALUES ("CE", "Ubajara", "Rua X", "200", 1);

INSERT INTO endereco (uf, cidade, rua, numero, fkColaborador)
VALUES ("SP", "São Paulo", "Rua W", "300", 2);

INSERT INTO endereco (uf, cidade, rua, numero, fkColaborador)
VALUES ("MG", "Belo Horizonte", "Rua T", "215", 3);

SELECT * FROM endereco;

-- Tabela Dependente
CREATE TABLE dependente(
    idDependente INTEGER PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(200) NOT NULL,
    dataNascimento DATE NOT NULL,
    fkColaborador INTEGER NOT NULL, -- 1:N
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

INSERT INTO dependente (nome, dataNascimento, fkColaborador)
VALUES ("Joãozinho", "2010-01-01", 1);

INSERT INTO dependente (nome, dataNascimento, fkColaborador)
VALUES ("Mariazinha", "2012-06-08", 1);

INSERT INTO dependente (nome, dataNascimento, fkColaborador)
VALUES ("Pedrinho", "2015-05-02", 2);

SELECT * FROM dependente;

-- Tabela Projeto
CREATE TABLE projeto(
    idProjeto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    orcamento DECIMAL(8,2) NOT NULL,
    prazo DATE NOT NULL
);

INSERT INTO projeto(nome, orcamento, prazo)
VALUES ("Landing page", 4500, "2024-01-20"), 
       ("Ticket system", 50000, "2028-01-15"),
       ("Plataforma finanças", 1500, "2023-05-25");

-- Tabela Relacionamento Colaborador-Projeto
CREATE TABLE rel_colaborador_projeto(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    fkColaborador INTEGER NOT NULL,
    fkProjeto INTEGER NOT NULL,
    FOREIGN KEY (fkColaborador) REFERENCES colaborador(idColaborador),
    FOREIGN KEY (fkProjeto) REFERENCES projeto(idProjeto)
);

SELECT * FROM colaborador;
SELECT * FROM projeto;

-- Maria (1) => Landing Page (1) e Ticket System (2)
INSERT INTO rel_colaborador_projeto(fkColaborador, fkProjeto)
VALUES (1, 1), (1, 2);

SELECT * FROM rel_colaborador_projeto;

-- José (2) => Plataforma finanças(3)
INSERT INTO rel_colaborador_projeto(fkColaborador, fkProjeto)
VALUES (2, 3);
-- Gabriel (3) => Todos (1, 2, 3)
INSERT INTO rel_colaborador_projeto(fkColaborador, fkProjeto)
VALUES (3, 1), (3, 2), (3, 3);

SELECT * FROM departamento;

INSERT INTO colaborador
VALUES (NULL, "Carlos Soza", "11111111114", 7500.0, "+5588972308028", "1960-02-25", 3);

INSERT INTO rel_colaborador_projeto(fkColaborador, fkProjeto)
VALUES (5, 3);

DELETE FROM rel_colaborador_projeto
WHERE fkColaborador = 1 AND fkProjeto = 1;