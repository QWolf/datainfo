SELECT DISTINCT p.name 
FROM Person p, Writes w
WHERE p.pid = w.pid
AND NOT EXISTS(
	SELECT m.mid
	FROM Movie m, Directs d, Writes x
	WHERE m.mid = x.mid
	AND d.mid = m.mid
	AND x.pid = p.pid
);