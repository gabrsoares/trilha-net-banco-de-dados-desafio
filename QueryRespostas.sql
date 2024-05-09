SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos


-- 1 
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o Futuro'

-- 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
	f.Nome,
	gen.Genero
FROM Filmes f
JOIN FilmesGenero fgen ON f.Id = fgen.IdFilme
JOIN Generos gen ON gen.Id = fgen.IdGenero

-- 11
SELECT 
	f.Nome,
	gen.Genero
FROM Filmes f
JOIN FilmesGenero fgen ON f.Id = fgen.IdFilme
JOIN Generos gen ON gen.Id = fgen.IdGenero
WHERE gen.Genero = 'Mistério'

-- 12
SELECT
	f.Nome,
	ator.PrimeiroNome,
	ator.UltimoNome,
	elenco.Papel
FROM Filmes f
JOIN ElencoFilme elenco ON f.Id = elenco.IdFilme
JOIN Atores ator ON ator.Id = elenco.IdAtor
