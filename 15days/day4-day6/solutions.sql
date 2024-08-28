select lower(first_name), lower(last_name) from customer
where length(first_name) > 10 or length(last_name) > 10

select right(email, 5) from customer

select left(right(email, 4), 1) from customer

select left(email,1) || '***' || right(email,19) from customer

select last_name || ', ' || left(email, position ('.' in email)-1)  from customer


select email from customer

select left(email, 1)|| '***' ||
	right(left(email, position ('.' in email)+1), 2) || '***' ||
	right(email, 19)
	from customer

SELECT
left(email, 1)|| '***' ||
SUBSTRING (email from POSITION('.' in email) for 2)|| '***' ||
SUBSTRING (email from POSITION('@' in email))
FROM customer
	

select '***' || right(left(email, position ('.' in email)+1), 3) || 
		'***' || right(email, 19)
from customer

select '***' ||
		SUBSTRING (email from POSITION('.' in email)-1 for 3)|| '***' ||
		SUBSTRING (email from POSITION('@' in email))
from customer
