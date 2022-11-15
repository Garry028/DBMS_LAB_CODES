-- SQL Queries – all types of Join, Sub-Query and
-- View:
-- Design at least 10 SQL queries for suitable database
-- application using SQL DML statements: all types of
-- Join,
-- Sub-Query and View.


CREATE TABLE Customer_table(
id INT PRIMARY KEY,
name VARCHAR(25) NOT NULL,
salary float NOT NULL
);

INSERT INTO Customer_table (id,name,salary) VALUES (1,'Mohit',500000);
INSERT INTO Customer_table (id,name,salary) VALUES (2,'Ajay',250000);
INSERT INTO Customer_table (id,name,salary) VALUES (3,'Rutuja',350000);
INSERT INTO Customer_table (id,name,salary) VALUES (4,'Hemanshu',353250);

select * from Customer_table ORDER BY id ASC;

CREATE TABLE Orders_table(
     order_id INT PRIMARY KEY,
     Customer_table_id INT REFERENCES Customer_table,
     amount INT NOT NULL
);

desc Orders_table;

INSERT INTO Orders_table VALUES(1,2,200);
INSERT INTO Orders_table VALUES (2,2,1200);
INSERT INTO Orders_table VALUES (3,3,2300);
INSERT INTO Orders_table VALUES (4,4,2100);
INSERT INTO Orders_table VALUES(5,1,100);

SELECT * FROM Orders_table ORDER BY order_id ASC;

-- INNER JOIN
SELECT name,salary,amount
FROM Customer_table
INNER JOIN Orders_table
ON Customer_table.id = Orders_table.Customer_table_id;

-- LEFT JOIN
SELECT name,salary,amount
FROM Customer_table
LEFT JOIN Orders_table
ON Customer_table.id = Orders_table.Customer_table_id;

-- RIGHT JOIN
SELECT name,salary,amount
FROM Customer_table
RIGHT JOIN Orders_table
ON Customer_table.id = Orders_table.Customer_table_id;


-- FULL JOIN
SELECT name,salary,amount
FROM Customer_table
FULL JOIN Orders_table
ON id = Orders_table.Customer_table_id;

--  This are sub querys

SELECT name
FROM Customer_table
WHERE id
IN (SELECT Customer_table_id FROM Orders_table);

UPDATE Customer_table
SET salary=salary+1000
WHERE id
IN (SELECT Customer_table_id FROM Orders_table);

SELECT * FROM Customer_table;