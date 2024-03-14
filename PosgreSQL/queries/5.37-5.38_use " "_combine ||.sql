SELECT first_name AS "First Name" FROM actors;

SELECT
		movie_name AS "Movie Name", 
		movie_lang AS "Language"
FROM movies
--can not use 'Movie Name'

	
SELECT first_name, last_name FROM actors

SELECT first_name ||' '|| last_name AS "Full Name" FROM actors
