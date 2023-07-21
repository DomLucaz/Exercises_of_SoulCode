-- Aula 11/06

CREATE DATABASE empresa_db;

USE empresa_db;

CREATE TABLE departamento(
	idDepartamento int primary key auto_increment,
	nome varchar(150) not null,
    descricao varchar(200)
);


-- Tipos de dados
	-- int/integer = até 2 bilhões
    -- BIGINT = até 9 quintilhões
	-- decimal = valores decimais exatos
    -- float = até 7 casas de precisão
    -- double = até 15 casas de precisão
	-- TEXT = textos muito longos
    -- DATE = formato YYYY-MM-DD
    -- TIME = formato hh:mm:ss
    -- DATETIME = formato YYYY-MM-DD hh:mm:ss
    -- BLOB = arquivos (binary large object)
 
-- Aula 12/07
-- CONSTRAINTS; CHAVE ESTRANGEIRA; INSERT; UPDATE; DELETE;

CREATE TABLE colaborador(
	idColaborador INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    salario DECIMAL(8, 2) NOT NULL, -- Oito dígitos e 2 de precisão
    telefone VARCHAR(20) UNIQUE NOT NULL,
    dataNascimento DATE NOT NULL,
    fkDepartamento INTEGER NOT NULL,
    FOREIGN KEY(fkDepartamento) -- Coluna que será a chave estrangeira
    REFERENCES departamento(idDepartamento) -- Chave primária da outra tabela
);

DROP TABLE colaborador; -- Apaga a tabela e todos os registros dela
DROP TABLE endereco;
DROP TABLE departamento;

SHOW TABLES;
DESCRIBE colaborador; -- Mostra a estrutura da tabela

CREATE TABLE endereco(
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    -- Usa "Sem complemento" caso não definirmos um valor específico
    complemento VARCHAR(40) DEFAULT("Sem complemento"),
    fkColaborador INTEGER UNIQUE NOT NULL, -- Impede que o ID do colaborador seja repetido (1:1)
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

SHOW TABLES;
DESCRIBE endereco;

DESCRIBE colaborador;
-- Listar dados de uma tabela
SELECT * FROM departamento;
SELECT * FROM colaborador;
SELECT * FROM endereco;

INSERT INTO departamento 
VALUES (NULL, "Recursos Humanos", NULL);

INSERT INTO departamento 
VALUES (NULL, "Marketing", "Faz marketing");

INSERT INTO colaborador
VALUES (NULL, "José Ferreira", "11111111111", 5500.0, "+5588972308020", "1980-01-28", 2);

INSERT INTO colaborador
VALUES (NULL, "João Carlos", "11111111112", 6000.0, "+5588972308021", "1980-01-28", 2);

INSERT INTO endereco 
VALUES (NULL, "Ubajara", "CE", "Rua X", "200", NULL, 1);

INSERT INTO endereco 
VALUES (NULL, "Tianguá", "CE", "Rua Y", "235", NULL, 4);

SELECT * FROM colaborador;

-- AULA 13/07
-- UPDATE; DELETE; CORREÇÃO

UPDATE colaborador 
SET salario = 8500; -- PERIGO: Atualiza todas as linhas da tabela sem critério nenhum

UPDATE colaborador
SET salario = 9000
WHERE idColaborador = 3; -- WHERE: Indica uma condição para aplicar o UPDATE

UPDATE colaborador
SET salario = 4500.0
WHERE idColaborador = 1;

UPDATE colaborador 
SET nome = "José Ferreira Marques Silva", 
    salario = 7000,
    dataNascimento = "1976-04-20",
    fkDepartamento = 2
WHERE idColaborador = 1; -- SE UMA COLUNA FALHAR, NÃO ATUALIZA NENHUM CAMPO
    
UPDATE colaborador
SET salario = salario + 50 
WHERE fkDepartamento = 2; -- INCREMENTA O SALARIO DE TODOS DO MARKETING

UPDATE endereco
SET cidade = "Fortaleza",
    rua = "Rua Z",
    numero = "911",
    complemento = "Ao lado da Rua Y"
WHERE fkColaborador = 1;

SELECT * FROM colaborador;
SELECT * FROM departamento;
SELECT * FROM endereco;

DELETE FROM endereco; -- CUIDADO: Isso apaga todas as linhas sem critério

DELETE FROM colaborador
WHERE idColaborador = 3; -- Vai apagar somente o registro com id = 3

DELETE FROM departamento
WHERE idDepartamento = 1; -- Só podemos apagar registros que não têm vínculo com outros registros de outras tabelas

-- INSERT; UPDATE; DELETE; SELECT