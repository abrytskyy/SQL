SELECT first_name, last_name AS surname
FROM actors 
ORDER BY last_name DESC
	
SELECT first_name, last_name AS surname
FROM actors 
ORDER BY surname DESC


  
SELECT first_name, LENGTH(first_name) AS len
FROM actors
ORDER BY len DESC
