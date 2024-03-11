--CONCAT
use world;

select * from country;

select Name, HeadOfState, IndepYear
from country;

select concat(Name, ' ', HeadOfState), Name, HeadOfState, IndepYear
from country;

select concat(HeadOfState, ' is the head of the state of ', name),
concat(Name, ' ', HeadOfState), Name, HeadOfState, IndepYear
from country;

select concat(name, ' ', IndepYear),
concat(HeadOfState, ' is the head of the state of ', name),
concat(Name, ' ', HeadOfState), Name, HeadOfState, IndepYear
from country;

--DATE
use sakila;
select * from customer;
select create_date from customer;

select create_date, create_date + 1 from customer;
