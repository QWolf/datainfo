SELECT DISTINCT p.name FROM Person p
WHERE EXISTS(--person is a writer
	SELECT * FROM Writes w
	WHERE p.pid = w.pid
	AND 'movie heeft geen regisseur'
	)