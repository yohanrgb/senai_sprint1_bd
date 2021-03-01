CREATE DATABASE ClinicaPet

USE ClinicaPet

CREATE TABLE Clinicas
(
	idClinica INT PRIMARY KEY IDENTITY
	,RazaoSocial VARCHAR(200) NOT NULL
	,Endereco VARCHAR(200) NOT NULL
);

CREATE TABLE TiposPets
(
	idTipoPet INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Donos
(
	idDono INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Veterinarios
(
	idVeterinario INT PRIMARY KEY IDENTITY
	,idClinica INT FOREIGN KEY REFERENCES Clinicas(idClinica)
	,Nome VARCHAR(200) NOT NULL
	,CRMV VARCHAR(200) NOT NULL
);

CREATE TABLE Racas
(
	idRaca INT PRIMARY KEY IDENTITY
	,idTipoPet INT FOREIGN KEY REFERENCES TiposPets(idTipoPet)
	,Descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Pets
(
	idPet INT PRIMARY KEY IDENTITY
	,idRaca INT FOREIGN KEY REFERENCES Racas(idRaca)
	,idDono INT FOREIGN KEY REFERENCES Donos(idDono)
	,Nome VARCHAR(200) NOT NULL
	,DataNascimento VARCHAR(200)NOT NULL
);

CREATE TABLE Atendimentos
(
	idAtendimento INT PRIMARY KEY IDENTITY
	,idVeterinario INT FOREIGN KEY REFERENCES Veterinarios(idVeterinario)
	,idPets INT FOREIGN KEY REFERENCES Pets(idPet)
	,Descricao VARCHAR(200) NOT NULL
	,DataAtendimento VARCHAR(200) NOT NULL
);



DROP TABLE Clinicas
DROP TABLE TiposPets
DROP TABLE Donos
DROP TABLE Veterinarios
DROP TABLE Racas
DROP TABLE Pets
DROP TABLE Atendimentos