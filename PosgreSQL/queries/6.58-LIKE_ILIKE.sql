SELECT 'hello' LIKE 'hello'

SELECT 'hello' LIKE 'h%'

SELECT 'hello' LIKE '%e%'

SELECT 'hello' LIKE 'hell%' true_false

SELECT 'hello' LIKE '_ello'

SELECT 'hello' LIKE '__ll_'

SELECT 'hello' LIKE '%ll_'

--first name starts with 'A'
SELECT * FROM actors
WHERE first_name LIKE 'A%'	
ORDER BY 2

--last_name ends with 'a'
SELECT * FROM actors
WHERE last_name LIKE '%a'
ORDER BY 3

--first name with 5 characters
SELECT * FROM actors
WHERE first_name LIKE '_____'

SELECT * FROM actors
WHERE LENGTH(first_name) = 5

--first name contains 'l' on the second place
SELECT * FROM actors
WHERE first_name LIKE '_l%'


SELECT * FROM actors
WHERE first_name LIKE '%Tim%'

--doesnt work: 
SELECT * FROM actors
WHERE first_name LIKE '%tim%'

--works for ILIKE:
SELECT * FROM actors
WHERE first_name ILIKE '%tim%'

SELECT * FROM actors
WHERE first_name ILIKE '%Tim%'
