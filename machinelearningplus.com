--https://www.machinelearningplus.com/sql/sql-window-functions-exercises/
--https://www.db-fiddle.com/f/3oGvSWxmho5KMidcvPr5qd/9

--Q1 Find the running cumulative total demand.
--From the demand2 table, find the cumulative total sum for qty
DROP TABLE IF EXISTS demand2;

CREATE TABLE demand2 (
  day INT,
  qty FLOAT
);


INSERT INTO demand2
  (day, qty)
VALUES
  (1, 10),
  (2, 6),
  (3, 21),
  (4, 9),
  (6, 12),
  (7, 18),
  (8, 3),
  (9, 6),
  (10, 23);

--Solution Q1
select *,
sum(qty) over(order by day) as cumQty from demand2




--Q2 Find the running cumulative total demand by product
--From the demand table, find the cumulative total sum for qty for each product category.
DROP TABLE IF EXISTS demand;

CREATE TABLE demand (
  product VARCHAR(10),
  day INT,
  qty FLOAT
);


INSERT INTO demand
  (product, day, qty)
VALUES
  ("A", 1, 10),
  ("A", 2, 6),
  ("A", 3, 21),
  ("A", 4, 9),
  ("A", 5, 19),
  ("B", 1, 12),
  ("B", 2, 18),
  ("B", 3, 3),
  ("B", 4, 6),
  ("B", 5, 23);

--Solution Q2
select *,
sum(qty) over(partition by product order by day) as CUMSUM
from demand
