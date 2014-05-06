SELECT p.name, min(m.year)
FROM Person p, Directs d, Genre g, Movie m
WHERE d.pid = p.pid
AND	g.mid = d.mid
AND g.genre = 'Action'
AND m.mid = d.mid
GROUP BY p.name
HAVING count(p.name)>=2
;