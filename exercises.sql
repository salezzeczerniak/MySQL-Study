CREATE DATABASE vendas;

USE vendas;
CREATE TABLE Produto(
Codigo_produto INT,
Descricao_Produto VARCHAR (30),
Preco_Produto FLOAT);

ALTER TABLE Produto
ADD constraint PK_Produto PRIMARY KEY (Codigo_Produto);

ALTER TABLE Produto
CHANGE Codigo_Produto Cod_Produto INTEGER;


CREATE TABLE Nota_Fiscal(
Numero_Nf integer,
Data_Nf DATE,Cod_Produto
Valor_Nf FLOAT);

RENAME TABLE Nota_Fiscal to NF;

ALTER TABLE NF
ADD CONSTRAINT PK_NF PRIMARY KEY (Numero_NF);

CREATE TABLE Itens(
Produto_Codigo_Produto INTEGER,
Nota_Fiscal_Numero_NF INTEGER,
Num_Item INTEGER, 
Qtde_Item INTEGER);

ALTER TABLE Itens
	ADD CONSTRAINT PK_Itens PRIMARY KEY (Produto_Codigo_Produto, Nota_Fiscal_Numero_NF);
    
ALTER TABLE Produto 
MODIFY COLUMN Descricao_Produto VARCHAR(50);

ALTER TABLE nf
ADD COLUMN ICMS FLOAT AFTER Numero_NF;

ALTER TABLE Produto 
ADD COLUMN PESO FLOAT;

ALTER TABLE Produto
RENAME COLUMN PESO to Peso;

ALTER TABLE Itens
DROP PRIMARY KEY;

ALTER TABLE Itens
ADD CONSTRAINT PK_Itens PRIMARY KEY (Num_Item);

SELECT * FROM Produto;

SELECT * FROM nf;

ALTER TABLE nf
RENAME COLUMN Valor_NF TO ValorTotal_NF;

ALTER TABLE nf
DROP COLUMN Data_NF;

DROP TABLE Itens;

RENAME TABLE nf TO Venda;

DROP DATABASE world;
DROP DATABASE sys;