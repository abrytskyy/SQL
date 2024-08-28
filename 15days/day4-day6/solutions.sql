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

select * from payment

select EXTRACT(month from payment_date) as month, sum(amount) from payment
group by 1
order by 2 desc

select EXTRACT(dow from payment_date) day_of_week, sum(amount) from payment
group by 1
order by 2 desc

select EXTRACT(week from payment_date) week, customer_id, sum(amount) from payment
group by 1, 2
order by 3 desc


select sum(amount) total_amount, to_char(payment_date, 'Dy, DD/MM/YYYY' )
from payment
group by 2
order by 1

select sum(amount) total_amount, to_char(payment_date, 'Mon, YYYY' )
from payment
group by 2
order by 1

select sum(amount) total_amount, to_char(payment_date, 'Dy, HH:MI' )
from payment
group by 2
order by 1 desc

SELECT CURRENT_DATE, CURRENT_TIMESTAMP,
rental_date
FROM rental

SELECT return_date-rental_date rental_duration
FROM rental
where customer_id = 35

SELECT customer_id, avg(return_date-rental_date) avg_rental_duration
FROM rental
group by 1
order by 2 desc
