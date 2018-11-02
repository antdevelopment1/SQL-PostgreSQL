-- ================================
-- To SELECT ALL DATA FROM A TABLE
-- ================================
To SELECT all data from a table
SELECT * FROM table_name; 

Example: 
SELECT * FROM products; 


To SELECT specific columns from a table: 
SELECT column_name1, column_name2 FROM table_name; 

Example: 
SELECT first_name, last_name FROM customers; 


-- =====================
-- SQL FOR WHERE CLAUSES
-- =====================
SELECT column_name1, column_name2 FROM table_name
WHERE column_name1 = 'Value';
Example: 

SELECT id, name, season FROM products
WHERE in_stock = 'True';

-- ======================================================
-- SQL FOR MULTIPLE WHERE CLAUSES IN ONE SELECT STATEMENT
-- ======================================================
SELECT column_name1, column_name2 FROM table_name 
WHERE column_name1 = 'Value'
AND column_name2 = 'Value';
Example: 

SELECT id, product_id, quantity FROM orders 
WHERE product_id = 5
AND quantity > 1;

-- ================================
-- SQL FOR IN AND NOT IN STATEMENTS
-- ================================
-- When wanting to select a column with more than 1 value we use IN
SELECT * FROM table_name 
WHERE column_name1 IN ('value1','value2','value3')
AND column_name2 NOT IN ('value1','value2','value3');
Example: 

-- When wanting to select a column that is not = to a certain value we use NOT IN
SELECT * FROM customers 
WHERE first_name IN ('Emily','George','John')
AND last_name NOT IN ('Edwards','Smith','Simmonds');

-- =======================================
-- SQL FOR WHERE CLAUSE BETWEEN TWO VALUES
-- =======================================
SELECT * FROM table_name 
WHERE column_name1 BETWEEN 'value1' AND 'value2';
Example: 

SELECT * FROM customers 
WHERE date_joined BETWEEN '2017-01-01'AND '2017-03-31';


-- ==========================================================================
-- SQL FOR USING A LIKE OPERATOR TO MATCH ANY NUMBER OF CHARACTERS IN A QUERY
-- ==========================================================================
SELECT * FROM table_name 
WHERE column_name1 LIKE '%pattern%';
Example:

SELECT * FROM address
WHERE postcode LIKE 'BN%';
SQL for using a LIKE operator to match one character in a query: 

SELECT * FROM table_name 
WHERE column_name1 LIKE '_pattern_';
Example:

SELECT * FROM customers
WHERE last_name LIKE '_mit_';

-- ===================================================
-- SQL STATEMENT FOR ORDERING DATA IN DESCENDING ORDER
-- ===================================================
SELECT * FROM table_name
ORDER BY column_name1 DESC;
Example:

SELECT * FROM orders 
ORDER BY order_date DESC;

-- ===================================================
-- SQL STATEMENT FOR ORDERING DATA IN ASCENDING ORDER
-- ===================================================
SELECT * FROM table_name
WHERE column_name1 = 'value'
ORDER BY column_name2 ASC;
Example: 

SELECT * FROM customers
WHERE gender = 'M'
ORDER BY date_joined ASC;

-- =================================================================================================================
-- SQL FOR LIMITING THE NUMBER OF ROWS RETURNED IN A SELECT QUERY AFTER IT'S BEEN SORTED TO THE FIRST NUMBER OF ROWS
-- =================================================================================================================
SELECT * FROM table_name
WHERE column_name1 = 'value'
LIMIT number;
Example: 

SELECT * FROM address
WHERE city = 'Worthing'
LIMIT 8;

-- =====================================================
-- SQL FOR LIMITING THE NUMBER OF RESULTS WITH AN OFFSET
-- =====================================================
SELECT * FROM table_name
WHERE column_name1 = 'value'
LIMIT n OFFSET m;
Example:

SELECT * FROM orders 
WHERE quantity > 1
LIMIT 5 OFFSET 5;

-- ========================================================
-- SQL FOR ONLY RETURNING DISTINCT VALUES IN THE RESULT SET
-- ========================================================
SELECT DISTINCT column_name1 FROM table_name; 

Example: 
SELECT DISTINCT last_name FROM customers; 

-- ==================================================
-- SQL FOR ONLY RETURNING A COLUMN IN THE RESULTS SET
-- ==================================================
-- Cannot use alias inside a WHERE clause. We have to refer to the original column name in the database
-- We can use an alias name when using the ORDER BY statement
SELECT column_name1 AS alias FROM table_name;  

Example: 
SELECT wholesale_price AS price FROM products; 

-- =============================================
-- SQL FOR JOINING TWO TABLES WITH AN INNER JOIN
-- =============================================
SELECT t1.column_name1, t1.column_name2, t2.column_name1 FROM table_name1 t1
INNER JOIN table_name2 t2 ON t1.column_name2 = t2.column_name1;
Example: 

SELECT c.first_name, c.last_name, a.postcode FROM customers c 
INNER JOIN address a ON c.address_id = a.id;

-- More examples of inner joins

select * from orders;
select * from products;

select customers.first_name, customers.last_name, orders.quantity, orders.price from orders
-- We can also say join without inner. When you say join it defaults to inner join
inner join customers on orders.customer_id = customers.id;

-- Using alias'
select cu.id, cu.first_name, cu.last_name, o.quantity, o.price from orders o
join customers cu on o.customer_id = cu.id;

-- Another example
select pr.name, o.quantity, o.price from orders o
join products pr on o.product_id = pr.id;

===================================================================
-- SQL FOR JOINING TWO TABELS WITH AN INNER JOIN AND A WHERE CLAUSE
===================================================================
SELECT t1.column_name1, t1.column_name2, t2.column_name1 FROM table_name1 t1 
INNER JOIN table_name2 t2 ON t1.column_name1 = t2.column_name2 
WHERE t1.column_name1 = 'value1';

Example: 
SELECT p.name, o.quantity, o.order_date FROM products p 
INNER JOIN orders o ON p.id = o.product_id 
WHERE p.name = 'Shoes';

-- Another Example
select cu.id, cu.first_name, cu.last_name, o.quantity, o.price, o.order_date from orders o
join customers cu on o.customer_id = cu.id
where cu.id in (2, 4, 6, 8, 9)
and o.quantity > 1
order by o.order_date ASC;

-- ============================================
-- SQL FOR JOINING TWO TABLES USING A LEFT JOIN
-- ============================================
SELECT t1.column_name, t1.column_name2, t2.column_name1 FROM table_name1 t1
LEFT JOIN table_name2 t2 ON t1.column_name1 = t2column_name1
WHERE t1.column_name2 = 'value1';

Example:
SELECT a.city, a.postcode, c.first_name, c.last_name FROM address a 
LEFT JOIN customers c ON a.id = c.address_id 
WHERE c.date_joined BETWEEN '20170101' AND '20173006';


-- =============================================
-- SQL FOR JOINING TWO TABLES USING A RIGHT JOIN
-- =============================================
SELECT t1.column_name, t1.column_name2, t2.column_name1 FROM table_name1 t1
RIGHT JOIN table_name2 t2 ON t1.column_name1 = t2column_name1
WHERE t1.column_name2 = 'value1';

Example:
SELECT a.city, a.postcode, c.first_name, c.last_name FROM address a 
RIGHT JOIN customers c ON c.address_id = a.id 
where c.date_joined between '2017-01-01' AND '2017-03-06';

-- ============================================
-- SQL FOR JOINING TWO TABLES USING A FULL JOIN
-- ============================================
SELECT t1.column_name, t1.column_name2, t2.column_name1 FROM table_name1 t1

FULL JOIN table_name2 t2 ON t1.column_name1 = t2column_name1
WHERE t1.column_name2 = 'value1';

Example:
SELECT a.city, a.postcode, c.first_name, c.last_name FROM address a 
FULL JOIN customers c ON a.id = c.address_id 
WHERE c.date_joined BETWEEN '20170101' AND '20173006';


-- =============================================
-- SQL FOR JOINING MORE THAN TWO TABLES TOGETHER
-- =============================================
SQL for joining more than two tables together: 

SELECT t1.column_name, t2.column_name2, t3.column_name1 FROM table_name1 t1
INNER JOIN table_name2 t2 ON t1.column_name1 = t2column_name1
INNER JOIN table_name3 t3 ON t1.column_name2 = t3.column_name2
WHERE t1.column_name2 = 'value1'
AND t3.column_name2 = 'value2';
Example:

SELECT a.city, a.postcode, c.first_name, c.last_name, o.product_id, o.quantity, o.order_date FROM address a 
INNER JOIN customers c ON a.id = c.address_id 
INNER JOIN orders o ON o.customer_id = c.id
where c.date_joined between '2017-01-01' and '2017-03-06'
and o.product_id < 4;



-- =======================================================================
-- SQL FOR JOINING MORE THAN TWO TABLES TOGETHER USING UNION AND UNION ALL
-- =======================================================================
SELECT column_name1, column_name2 FROM table_name1 
UNION
SELECT column_name1, column_name2 FROM table_name2;
SELECT column_name1, column_name2 FROM table_name1 
UNION ALL
SELECT column_name1, column_name2 FROM table_name2;
Example: 

SELECT first_name, last_name FROM customers
UNION
SELECT first_name, last_name FROM employees;
SELECT first_name, last_name FROM customers
UNION ALL
SELECT first_name, last_name FROM employees;





