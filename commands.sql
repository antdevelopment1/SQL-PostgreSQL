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
