select count(*)
from payment
where customer_id = 100
	
select last_name
from customer
where first_name = 'ERICA'

select count(*)
from rental
where return_date is null

select payment_id, amount
from payment
where amount <= 2

select * 
from payment
where customer_id in (322, 346, 354) and (amount > 10 or amount < 2)
order by customer_id, amount desc

select count(*) from payment
where payment_date between '2020-01-26' and '2020-01-27 23:59' and amount between 1.99 and 3.99

select * from payment
where customer_id in (12,25,67,93,124,234) and
amount in (4.99, 7.99, 9.99) and
payment_date between '2020-01-01' and '2020-01-31 23:59'

select min(replacement_cost), max(replacement_cost), round(avg(replacement_cost), 2), sum(replacement_cost)
from film

select staff_id, sum(amount), count(*)
from payment
where amount != 0
group by 1

select date(payment_date), staff_id, sum(amount), count(*)
from payment
where amount != 0
group by 1, 2
order by 3 desc

select customer_id, date(payment_date), round(avg(amount), 2)
from payment
where date(payment_date) in ('2020-04-28', '2020-04-29', '2020-04-30')
group by 1, 2
having count(*)>1
order by 3 desc
