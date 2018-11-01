-- ================================
-- To SELECT all data from a table: 
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
-- SQL for WHERE clause:
-- =====================

SELECT column_name1, column_name2 FROM table_name
WHERE column_name1 = 'Value';
Example: 

SELECT id, name, season FROM products
WHERE in_stock = 'True';

-- =======================================================
-- SQL for multiple WHERE clauses in one SELECT statement: 
-- =======================================================

SELECT column_name1, column_name2 FROM table_name 
WHERE column_name1 = 'Value'
AND column_name2 = 'Value';
Example: 

SELECT id, product_id, quantity FROM orders 
WHERE product_id = 5
AND quantity > 1;