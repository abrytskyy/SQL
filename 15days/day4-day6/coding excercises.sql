--Coding Exercise 16: LENGTH, LOWER & UPPER
select review_id, review_text, length(review_text) review_length
from customer_reviews
where product_id = 101 and lower(review_text) like '%great%' 

--Coding Exercise 17: Concatenate
select name || ' - '|| category || ': $' || price product_summary from products
order by name

--Coding Exercise 18: Mathematical functions and operators
select product_name, sum(quantity_sold * price_per_unit)total_revenue from sales
group by 1
order by 2 desc
limit 1

--Coding Exercise 19: CASE WHEN
select order_id, product_id, quantity, unit_price, 
case
when quantity > 1 then quantity*unit_price*0.9+shipping_fee
else quantity*unit_price+shipping_fee
end total_price
from sales_orders

--Coding Exercise 20: CASE WHEN & SUM
select sum(case
when category = 'Income' then amount end) TotalIncome,
sum(case
when category = 'Expense' then amount end) TotalExpenses,
sum(case
when category = 'Income' then amount end) -
sum(case
when category = 'Expense' then amount end) NetIncome
from transactions

--Coding Exercise 21: COALESCE
SELECT transaction_id, account_id, transaction_type, amount, coalesce(description, 'Not Provided') description
from transactions
