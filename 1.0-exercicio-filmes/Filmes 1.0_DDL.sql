/* 
	asdasd
*/


CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY IDENTITY
	,Titulo		VARCHAR(250) NOT NULL
	,idGenero	INT FOREIGN KEY REFERENCES Generos
);