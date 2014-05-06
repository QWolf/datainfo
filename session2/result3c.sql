SELECT DISTINCT p.name 
FROM Person p, Writes w, Movie m
WHERE p.pid = w.pid
AND m.mid = w.mid
AND NOT EXISTS ( --film heeft geen regisseur
	SELECT d.pid FROM Directs d
	WHERE d.mid = m.mid
);