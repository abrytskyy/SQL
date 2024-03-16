SELECT * FROM actors
WHERE date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY 5

SELECT * FROM movies
WHERE release_date BETWEEN '1998-01-01' AND '2002-12-31'
ORDER BY 3

SELECT * FROM movies_revenues
WHERE revenues_domestic BETWEEN 100 AND 300
ORDER BY 3

SELECT * FROM movies
WHERE movie_lang = 'English' AND 
	  movie_length BETWEEN 100 AND 200
ORDER BY 1

SELECT * FROM movies
WHERE movie_length NOT BETWEEN 100 AND 130
ORDER BY 3

SELECT * FROM movies
WHERE movie_length BETWEEN 100 AND 130
ORDER BY 3

SELECT * FROM movies
WHERE movie_length >= 100 AND movie_length <= 130
ORDER BY 3

SELECT * FROM movies
WHERE 100 >= movie_length <= 130
ORDER BY 3
