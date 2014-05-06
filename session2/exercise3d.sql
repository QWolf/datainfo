SELECT DISTINCT p.name 
FROM Person p
WHERE EXISTS(
	SELECT w.mid 
	FROM Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(
		SELECT m.mid
		FROM Movie m
		WHERE m.mid = w.mid
		AND film heeft regisseur'
	)
);