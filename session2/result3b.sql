SELECT DISTINCT p.pid 
FROM Acts a, Movie m 
WHERE m.mid = a.mid
AND m.name = 'Back to the Future'
;