Create DATABASE Optus

USE Optus

CREATE TABLE Artistas
(
	idArtista		INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(200) NOT NULL
);

CREATE TABLE Estilos
(
	idEstilo		INT PRIMARY KEY IDENTITY
	,Tipo			VARCHAR(200) NOT NULL
);

CREATE TABLE Albuns
(
	idAlbun			INT PRIMARY KEY IDENTITY
	,idArtista		INT FOREIGN KEY REFERENCES Artistas(idArtista)
	,idEstilo		INT FOREIGN KEY REFERENCES Estilos(idEstilo)
	,Titulo			VARCHAR(200) NOT NULL
	,DataLancamento VARCHAR(200) NOT NULL
	,Localizacao	VARCHAR(200) NOT NULL
	,QtdMinutos		VARCHAR(200) NOT NULL
	,Ativo			VARCHAR(200) NOT NULL
);

CREATE TABLE AlbunsEstilos
(
	idEstilo		INT FOREIGN KEY REFERENCES Estilos(idEstilo)
	,idAlbun		INT FOREIGN KEY REFERENCES Albuns(idAlbun)
);

CREATE TABLE Usuarios
(
		idUsuario	INT PRIMARY	KEY	IDENTITY,
		Nome		VARCHAR(200) NOT NULL,
		Email		VARCHAR(200) NOT NULL,
		Senha		VARCHAR(200) NOT NULL,
		Permissao	VARCHAR(13)	NOT NULL,
);

DROP TABLE Usuarios
DROP TABLE AlbunsEstilos
DROP TABLE Estilos
DROP TABLE Albuns
DROP TABLE Artistas

