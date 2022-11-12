-- SQL Queries – all types of Join, Sub-Query and
-- View:
-- Design at least 10 SQL queries for suitable database
-- application using SQL DML statements: all types of
-- Join,
-- Sub-Query and View.

show databases;
use dml_commands;

show tables;

CREATE TABLE customer(
id INT PRIMARY KEY,
name VARCHAR(25) NOT NULL,
salary float NOT NULL
);

INSERT INTO customer  VALUES (1,"Mohit",500000),(2,"Ajay",250000),(3,"Rutuja",350000),(4,"Hemanshu",353250);

select * from customer;

CREATE TABLE orders(
     order_id INT PRIMARY KEY,
     customer_id INT REFERENCES customers,
     amount INT NOT NULL
);

INSERT INTO orders VALUES
     (1,2,200),
     (2,2,1200),
     (3,3,2300),
     (4,4,2100),
	 (5,1,100);

SELECT * FROM orders;

-- INNER JOIN
SELECT name,salary,amount
FROM customer
INNER JOIN orders
ON customer.id = orders.customer_id;

-- LEFT JOIN
SELECT name,salary,amount
FROM customer
LEFT JOIN orders
ON customer.id = orders.customer_id;

-- RIGHT JOIN
SELECT name,salary,amount
FROM customer
RIGHT JOIN orders
ON customer.id = orders.customer_id;


-- FULL JOIN
SELECT name,salary,amount
FROM customer
FULL JOIN orders
ON id = orders.customer_id;


SELECT name
FROM customer
WHERE id
IN (SELECT customer_id FROM orders);

UPDATE customer
SET salary=salary+1000
WHERE id
IN (SELECT customer_id FROM orders);

SELECT * FROM customer;