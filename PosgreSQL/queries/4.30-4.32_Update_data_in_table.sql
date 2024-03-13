SELECT * FROM customers;

UPDATE customers
SET email = 'abrytskyy@yahoo.com'
WHERE customer_id = 1



UPDATE customers
SET 
email = 'abrytskyy2@gmail.com',
age = 34
WHERE customer_id = 1

SELECT * FROM customers;



UPDATE customers
SET 
email = 'linda@gmail.com',
age = 38
WHERE customer_id = 3
RETURNING *;



SELECT * FROM customers;

--using pgAdmin:
ALTER TABLE IF EXISTS public.customers
    ADD COLUMN is_enable character varying(2);

UPDATE customers
SET is_enable = 'Y'
where first_name = 'Artem'

--for all:
UPDATE customers
SET is_enable = 'Y'

--all except for Artem change to 'X'
UPDATE customers
SET is_enable = 'X'
where first_name <> 'Artem'
RETURNING *;

SELECT * FROM customers;
