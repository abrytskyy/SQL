SELECT * FROM actors
WHERE date_of_birth IS NULL

SELECT * FROM actors
WHERE date_of_birth IS NULL 
	  OR first_name IS NULL

SELECT * FROM movies_revenues
WHERE revenues_domestic IS NULL

SELECT * FROM movies_revenues
WHERE revenues_domestic IS NULL
OR revenues_international IS NULL

SELECT * FROM movies_revenues
WHERE revenues_domestic IS NOT NULL
