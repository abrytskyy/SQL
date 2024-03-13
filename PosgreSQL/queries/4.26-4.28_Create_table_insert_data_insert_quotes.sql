CREATE TABLE customers (
	customer_id SERIAL PRIMARY kEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(150),
	age INT
);

SELECT * FROM customers;



INSERT INTO customers (first_name, last_name, email, age)
VALUES ('Artem', 'Brytskyy', 'abrytskyy2@gmail.com', 44);

SELECT * FROM customers;



INSERT INTO customers (first_name, last_name)
VALUES
('John', 'Adams'),
('Linda', 'Abe');

SELECT * FROM customers;



INSERT INTO customers (first_name)
VALUES
('Bill''O Sullivan');

SELECT * FROM customers; 
