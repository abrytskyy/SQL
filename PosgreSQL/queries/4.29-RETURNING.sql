INSERT INTO customers (first_name)
VALUES ('Adam') RETURNING *;



INSERT INTO customers (first_name)
VALUES ('Adam') RETURNING customer_id, first_name;
