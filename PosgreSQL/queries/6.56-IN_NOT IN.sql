SELECT * FROM movies
WHERE age_certificate IN ('12', 'PG')
ORDER BY 5

SELECT * FROM movies
WHERE director_id NOT IN (13, 10)
ORDER BY 7

SELECT * FROM actors
WHERE actor_id NOT IN (1, 2, 3, 4)
ORDER BY
