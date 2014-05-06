SELECT DISTINCT p.name FROM Person p
WHERE EXISTS(
	SELECT * FROM Writes w, Movie m
	WHERE p.pid = w.pid
	AND EXISTS (
		SELECT * FROM Movie m
		WHERE m.mid = w.mid
		AND NOT EXISTS ( --film heeft geen regisseur
		SELECT d.pid FROM Directs d
		WHERE d.mid = m.mid
		)
	)
);