CREATE DATABASE Pclinics;

USE Pclinics;

CREATE TABLE Enderecos
(
	idEndereco INT PRIMARY KEY IDENTITY
	,Endereco VARCHAR(200)	NOT NULL
);

CREATE TABLE Clinicas
(
	idClinica	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200)	NOT NULL
	,idEndereco INT	FOREIGN KEY REFERENCES Enderecos(idEndereco)
);

CREATE TABLE Funcionarios
(
	idFuncionario INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200)	NOT NULL
	,idClinica	INT FOREIGN KEY REFERENCES Clinicas(idClinica)
);

CREATE TABLE Tipos
(
	idTipo	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200)	NOT NULL
);

CREATE TABLE Racas
(
	idRaca	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200)	NOT NULL
	,idTipo	INT FOREIGN KEY REFERENCES Tipos(idTipo)
);

CREATE TABLE Pets
(
	idPet	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200)	NOT NULL
	,DatadeNascimento	DATE
	,Dono	VARCHAR(200)	NOT NULL
	,idFuncionario INT FOREIGN KEY REFERENCES Funcionarios(idFuncionario)
	,idRaca	INT	FOREIGN KEY REFERENCES Racas(idRaca)
);