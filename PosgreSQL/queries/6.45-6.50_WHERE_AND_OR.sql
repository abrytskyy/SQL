--first AND after OR, but better allways to use ()
SELECT * FROM movies
WHERE movie_lang = 'English'
AND age_certificate = '18'
OR movie_lang = 'Chinese'

SELECT * FROM movies
WHERE movie_lang = 'English'
OR movie_lang = 'Chinese'
AND age_certificate = '12'
ORDER BY 4

SELECT * FROM movies
WHERE (movie_lang = 'English'
OR movie_lang = 'Chinese')
AND age_certificate = '12'
ORDER BY 4
