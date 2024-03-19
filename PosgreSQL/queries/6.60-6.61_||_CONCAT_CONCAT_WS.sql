SELECT 'Hello'||' '||'World' hw

SELECT first_name||' '||last_name "Actor Name" FROM actors

SELECT CONCAT (first_name, ' ', last_name) "Actor Name" 
FROM actors

SELECT CONCAT (first_name, ' | ', last_name) "Actor Name" 
FROM actors


	
SELECT first_name ||', '|| last_name ||', '|| date_of_birth FROM actors

SELECT CONCAT (first_name, ', ', last_name, ', ', date_of_birth) FROM actors

SELECT 
	CONCAT_WS (', ', first_name, last_name, date_of_birth) FROM actors



SELECT revenues_domestic, 
	   revenues_international,
	   CONCAT(revenues_domestic, revenues_international) AS profits
FROM movies_revenues

SELECT revenues_domestic, 
	   revenues_international,
	   CONCAT(revenues_domestic, ' | ', revenues_international) AS profits
FROM movies_revenues

--CONCAT_WS ignore NULL values !!!
SELECT revenues_domestic, 
	   revenues_international,
	   CONCAT_WS(' | ', revenues_domestic, revenues_international) AS profits
FROM movies_revenues
