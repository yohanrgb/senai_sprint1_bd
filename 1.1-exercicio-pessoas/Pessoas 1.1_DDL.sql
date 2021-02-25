CREATE DATABASE Pessoas;

USE Pessoas;

CREATE TABLE Pessoa
(
 idPessoa INT PRIMARY KEY IDENTITY,
 Nome	  VARCHAR (200) NOT NULL,
 CNH	  BIGINT NOT NULL,
 Endereco VARCHAR (200) NOT NULL,
);

CREATE TABLE Emails
( 
 idEmail INT PRIMARY KEY IDENTITY,
 idPessoa INT FOREIGN KEY REFERENCES Pessoa(idPessoa),
 Endereco_de_email VARCHAR (255) NOT NULL,
);

CREATE TABLE Telefones
(
 idTelefone INT PRIMARY KEY IDENTITY,
 idPessoa  INT FOREIGN KEY REFERENCES Pessoa(idPessoa),
 Numero VARCHAR(200) NOT NULL
);

DROP TABLE Telefones