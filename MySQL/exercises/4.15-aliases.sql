USE sakila;
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) full_name FROM actor; 

SELECT first_name , last_name "Family Name", CONCAT(first_name, ' ', last_name) "Full Name" FROM actor;  
