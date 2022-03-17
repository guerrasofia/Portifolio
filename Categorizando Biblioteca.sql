CREATE TABLE livro(
    id_livro INT,
	nome_livro TEXT,
    preco_livro DOUBLE,
	formato_livro TEXT,
	editora_livro TEXT,
	autores_livro TEXT,
	genero_livro TEXT
);

CREATE TABLE cliente(
	id_cliente INT,
	nome_cliente TEXT,
	aniversario_cliente DATE,
	email_cliente TEXT
);

CREATE TABLE vendedor(
	id_vendedor INT,
	nome_vendedor TEXT,
	data_contratacao_vendedor DATE,
	telefone_vendedor INT,
	data_aniversario_vendedor DATE
);

CREATE TABLE compra(
	id_compra INT,
	data_compra DATE,
	valor_compra DOUBLE,
	cliente_compra TEXT,
	vendedor_compra TEXT,
	livro_compra TEXT
);

INSERT into livro
	VALUES 
		(1, 'capitaes da areia', 10,'capa simples', 'record', 'paulo', 'romance'),
		(2, 'game of thrones', 12, 'capa simples', 'rocco', 'julia', 'terror'),
		(3, 'o cortico', 9, 'capa dura', 'rocco', 'claudia', 'comedia'),
		(4,'o alquimista', 8, 'capa simples', 'globo', 'carlos', 'policial');

INSERT into cliente
	VALUES 
		(100, 'vania', '2000-11-11', 'vania@gmail.com'),
		(200, 'davi', '1998-05-20', 'davi@outlook.com'),
		(300, 'lucas', '1999-04-01', 'lucas@outlook.com'),
		(400, 'lara', '1998-07-03', 'lara@gmail.com');

INSERT into vendedor
	VALUES 
		(1000, 'sarah', '2022-01-11', 969470351, '1998-07-04'),
		(2000, 'otavio', '2022-02-12', 973074270, '1998-07-10'),
		(3000, 'bruna', '2022-01-07', 982474695, '1999-05-08'),
		(4000, 'vitor', '2022-01-09' ,971848131, '1997-10-09');

INSERT into compra
	VALUES 
		(770, '2022-03-01', 12, 'vania', 'sarah', 'game of thrones' ),
		(771, '2022-03-01', 9, 'lara', 'bruna', 'o cortico' ),
		(772, '2022-03-02', 10, 'davi', 'otavio', 'capitaes da areia' ),
		(773, '2022-03-02', 8, 'lucas', 'vitor', 'o alquimista' );

SELECT * FROM compra WHERE data_compra= '2022-03-01'

--Alterar chave primaria
ALTER TABLE `testes`.`cliente` 
CHANGE COLUMN `id_cliente` `id_cliente` INT NOT NULL ,
ADD PRIMARY KEY (`id_cliente`);
;

--Criando tabela com a chave primaria
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);