--Coding Exercise 1: Let's get started!	
SELECT * FROM payment

--Coding Exercise 2: SELECT
select title, publication_year
from books

--Coding Exercise 3: SELECT & ORDER BY
select * from books
order by price desc

--Coding Exercise 4: SELECT DISTINCT & LIMIT
select distinct genre from books
order by 1
limit 5

--Coding Exercise 5: COUNT()
select COUNT(id) from employees

--Coding Exercise 6: WHERE
select name, price from products
where category = 'Electronics'
order by price

--Coding Exercise 7: WHERE operators	
select name, price
from products
where price > 200
order by 2

--Coding Exercise 8: WHERE with AND/OR
select name, price
from products
where price > 200 and category = 'Electronics'
order by price

--Coding Exercise 9: BETWEEN
select id, date, amount from sales
where date between '2024-01-10' and '2024-02-10'
order by 2

--Coding Exercise 10: IN operator
select distinct customer_id
from orders
where product_name in ('Laptop', 'Tablet', 'Smartphone')
order by 1

--Coding Exercise 11: LIKE
select CustomerName, ProductID, ReviewText from CustomerReviews
where ReviewText like '%love%'

--Coding Exercise 12: Aggregate functions
select count(*) TotalOrders, avg(Amount) AverageOrderAmount
from orders
where OrderDate between '2023-08-01' and '2023-08-31 23:59'

--Coding Exercise 13: GROUP BY
select category, sum(quantity) total_quantity, sum(sale_amount) total_sales_amount 
from sales_data
group by 2, 3
order by 3 desc

--Coding Exercise 14: GROUP BY multiple columns
select category, sale_date, count(*) total_items_sold, sum(amount) total_sales_amount 
from sales
group by 1, 2
order by 1, 2 

--Coding Exercise 15: HAVING
select City, avg(amount) AverageAmount
from Sales
group by 1
having count(*)>2 and AverageAmount > 150
order by 2 desc
