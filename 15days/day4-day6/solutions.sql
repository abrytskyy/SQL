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

select film_id, round(rental_rate/replacement_cost*100, 2) from film
where rental_rate < 0.04*replacement_cost
order by 2

	

select * from flights

select
actual_departure-scheduled_departure,
case
	when actual_departure is null then 'no departure time'
	when actual_departure-scheduled_departure < '00:05' THEN 'On time'
	when actual_departure-scheduled_departure < '01:00' THEN 'A little bit late'
	else 'Very Late'
end
from flights

select
	count(*) flights,
case
	when actual_departure is null then 'no departure time'
	when actual_departure-scheduled_departure < '00:05' THEN 'On time'
	when actual_departure-scheduled_departure < '01:00' THEN 'A little bit late'
	else 'Very Late' 
end is_late
from flights
group by is_late

	
select count(*),
case
	when total_amount < 20000 then 'Low price ticket'
	when total_amount < 150000 then 'Mid price ticket'
	else 'High price ticket'
end
from bookings
group by 2

--solution 1
select count(*),
case 
	when EXTRACT(month from actual_departure) in (12, 1, 2) then 'Winter'
	when EXTRACT(month from actual_departure) in (3, 4, 5) then 'Spring'
	when EXTRACT(month from actual_departure) in (6, 7, 8) then 'Summer'
	else 'Fall'
end
from flights
group by 2

--solution 2
select count(*),
case 
	when trim(to_char(actual_departure, 'Month')) in ('December', 'Januar', 'Februar') then 'Winter'
	when trim(to_char(actual_departure, 'Month')) in ('March', 'April', 'May') then 'Spring'
	when trim(to_char(actual_departure, 'Month')) in ('June', 'July', 'August') then 'Summer'
	else 'Fall'
end
from flights
group by 2
