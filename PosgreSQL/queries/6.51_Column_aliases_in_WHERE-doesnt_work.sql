
SELECT first_name, last_name as surname 
FROM actors
WHERE last_name = 'Allen'


  
--aliases doesn't work in WHERE 	
SELECT first_name, last_name as surname 
FROM actors
WHERE surname = 'Allen'
