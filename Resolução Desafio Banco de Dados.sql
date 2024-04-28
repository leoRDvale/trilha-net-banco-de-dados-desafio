--Resolução Atividades, comandos e INNER JOIN 

--1

SELECT Nome, Ano FROM Filmes

--2

SELECT Nome, Ano FROM Filmes ORDER BY Ano

--3

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro' 

--4

SELECT * FROM Filmes WHERE Ano = 1997

--5

SELECT * FROM Filmes WHERE Ano > 2000 

--6

SELECT * FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao 

--7

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8

SELECT  PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10

SELECT Filmes.Nome, Generos.Genero  FROM Filmes, FilmesGenero, Generos WHERE (Filmes.Id = FilmesGenero.IdFilme) AND (FilmesGenero.IdGenero = Generos.Id) 

--11 Necessário o uso do INNER JOIN para vincular tabelas

SELECT 
     Filmes.Nome,
	 Generos.Genero
  FROM
  Filmes
  INNER JOIN FilmesGenero  ON  (Filmes.Id = FilmesGenero.IdFilme)
  INNER JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id ) 
  WHERE Genero = 'Mist�rio'

--12 Necessário o uso do INNER JOIN para vincular tabelas

SELECT 
     Filmes.Nome,
	 Atores.PrimeiroNome,
	 Atores.UltimoNome,
	 ElencoFilme.Papel
  FROM
  Filmes
  INNER JOIN ElencoFilme ON  (Filmes.Id = ElencoFilme.IdFilme)
  INNER JOIN Atores ON (ElencoFilme.IdAtor = Atores.Id) 
  



 