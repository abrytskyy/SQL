CREATE TABLE table_boolean(
	product_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

INSERT INTO table_boolean(is_available) VALUES (TRUE);

SELECT * FROM table_boolean;

INSERT INTO table_boolean(is_available) VALUES (FALSE);
INSERT INTO table_boolean(is_available) 
	VALUES ('y'), ('1'), ('yes'), ('n'), ('0'), ('no'), (TRUE), ('true');

SELECT * FROM table_boolean
WHERE is_available = TRUE

SELECT * FROM table_boolean
WHERE is_available = 'n'

SELECT * FROM table_boolean
WHERE is_available = 'yes'

--TRUE: TRUE, 'true', 't', 'y', 'yes', '1'
--FALSE: FALSE, 'false', 'f','n', 'no', '0' 

SELECT * FROM table_boolean
WHERE NOT is_available

ALTER TABLE table_boolean
ALTER COLUMN is_available
SET DEFAULT FALSE

--set default value FALSE in is_available
INSERT INTO table_boolean (product_id) VALUES (18)
