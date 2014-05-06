SELECT DISTINCT p.name 
FROM Person p
WHERE EXISTS(
	SELECT w.mid 
	FROM Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(
	'film met regisseur'
	)
);