CREATE DATABASE Locadora;

USE Locadora

CREATE TABLE Empresas
(
	idEmpresa INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Marcas
(
	idMarca INT PRIMARY KEY IDENTITY
	,Marca VARCHAR(200) NOT NULL
);

CREATE TABLE Modelos
(
	idModelo INT PRIMARY KEY IDENTITY
	,idMarca INT FOREIGN KEY REFERENCES Marcas(idMarca)
	,Modelo VARCHAR(200) NOT NULL
);

CREATE TABLE Veiculos
(
	idVeiculo INT PRIMARY KEY IDENTITY
	,idEmpresa INT FOREIGN KEY REFERENCES Empresas(idEmpresa)
	,idModelo INT FOREIGN KEY REFERENCES Modelos(idModelo)
	,Placa VARCHAR(200) NOT NULL
);

CREATE TABLE Clientes
(
	idCliente INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,CPF VARCHAR(200) NOT NULL
);

CREATE TABLE Alugueis
(
	idAluguel INT PRIMARY KEY IDENTITY
	,idVeiculo INT FOREIGN KEY REFERENCES Veiculos(idVeiculo)
	,idCliente INT FOREIGN KEY REFERENCES Clientes(idCliente)
	,DataInicio VARCHAR (200)
	,DataFim VARCHAR (200)
);

DROP TABLE Clientes
DROP TABLE Empresas
DROP TABLE Alugueis
DROP TABLE Marcas
DROP TABLE Modelos
DROP TABLE Veiculos