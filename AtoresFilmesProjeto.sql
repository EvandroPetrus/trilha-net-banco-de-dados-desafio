CREATE PROCEDURE GetNameAndYear
AS
BEGIN
SELECT Nome, Ano FROM Filmes
END

GetNameAndYear

CREATE PROCEDURE GetNameAndYearInYearOrderRelease
AS
BEGIN
SELECT Nome, Ano FROM Filmes
ORDER BY Ano
END

GetNameAndYearInYearOrderRelease


CREATE PROCEDURE GetBackToTheFutureData
AS
BEGIN
SELECT Nome, Ano, Duracao FROM Filmes WHERE Id = 28
END

GetBackToTheFutureData

CREATE PROCEDURE MoviesLaunchedIn1997
AS
BEGIN
SELECT Nome FROM Filmes WHERE Ano = 1997
END

MoviesLaunchedIn1997

CREATE PROCEDURE MoviesLaunchedAfter2000
AS
BEGIN
SELECT Nome FROM Filmes WHERE Ano > 2000
END

MoviesLaunchedAfter2000

CREATE PROCEDURE MoviesLonger100Less150Cresc
AS
BEGIN
SELECT Nome FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao
END

MoviesLonger100Less150Cresc

CREATE PROCEDURE QuantityMoviesYearDecresc
AS
BEGIN
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
END

CREATE PROCEDURE GetMasculineActors
AS
BEGIN
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
END

CREATE PROCEDURE GetFemenineActresses
AS
BEGIN
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F'
END

CREATE PROCEDURE GetFemenineActressesOrderedByName
AS
BEGIN
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome
END

CREATE PROCEDURE SearchMovieAndGenre
AS
BEGIN
SELECT 
     Nome, Genero
FROM 
    Filmes, Generos, FilmesGenero

WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero
END

CREATE PROCEDURE MisteryMovies
AS
BEGIN
SELECT 
     Nome, Genero 
   FROM Filmes, Generos, FilmesGenero
     
	 WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero AND FilmesGenero.IdGenero = 10


END

SELECT * FROM ElencoFilme

CREATE PROCEDURE MovieCastAndRole
AS
BEGIN
SELECT Nome, PrimeiroNome, UltimoNome, Papel
      FROM Filmes, Atores, ElencoFilme
	  WHERE Filmes.Id = ElencoFilme.IdFilme AND Atores.Id = ElencoFilme.IdAtor 
END