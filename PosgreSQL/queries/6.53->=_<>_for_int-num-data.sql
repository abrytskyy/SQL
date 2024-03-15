--numeric
SELECT * FROM movies
WHERE movie_length >= 100

--doesn't work:	
SELECT * FROM movies
WHERE movie_length => 100

--for numeric values is better to use without '', but bouth is acaptable
SELECT * FROM movies
WHERE movie_length > '100'

SELECT * FROM movies
WHERE movie_length > 100  


  
--data
SELECT * FROM movies
WHERE release_date > '2000-12-31'
ORDER BY 6

  

--int
SELECT * FROM movies
WHERE movie_lang > 'English'
ORDER BY 4

-- <>/!=	
SELECT * FROM movies
WHERE movie_lang <> 'English'
ORDER BY 4

SELECT * FROM movies
WHERE movie_lang != 'English'
ORDER BY 4
