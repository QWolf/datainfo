SELECT DISTINCT p.name FROM Person p
WHERE EXISTS(
	SELECT * FROM Writes w
	WHERE p.pid = w.pid
	AND EXISTS (
		SELECT * FROM Movie m --movies geschreven door de persoon
		WHERE 'geen regisseur'
		
	)
);