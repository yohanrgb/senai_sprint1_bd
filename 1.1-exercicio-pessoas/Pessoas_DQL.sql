SELECT * FROM Pessoas;

SELECT * FROM Email;

SELECT * FROM Telefone;

SELECT Pessoas.Nome, Email.Endere�o FROM Pessoas
INNER JOIN Email
ON Pessoas.idPessoa = Email.idPessoa