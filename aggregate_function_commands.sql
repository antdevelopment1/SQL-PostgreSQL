-- ===============================================
-- SQL FOR COUNTING THE NUMBER OF ROWS IN A COLUMN
-- ===============================================
SELECT COUNT(*) FROM table_name; 

Example: 
SELECT COUNT(*) FROM customers; 


-- ========================================================
-- SQL FOR COUNTING THE NUMBER OF ROWS USING A WHERE CLAUSE
-- ========================================================
SELECT COUNT(column_name) FROM table_name 
WHERE column_name = 'value';

Example: 
SELECT COUNT(name) FROM products
WHERE season LIKE '%Summer%';


-- ===============================================
-- SQL FOR RETURNING THE MINIMUM VALUE IN A COLUMN
-- ===============================================
SELECT MIN(column_name) FROM table_name; 

Example: 
SELECT MIN(price) FROM orders; 


-- ===============================================
-- SQL FOR RETURNING THE MAXIMUM VALUE IN A COLUMN
-- ===============================================
SELECT MAX(column_name) FROM table_name;  

Example: 
SELECT MAX(hours) FROM employees; 

SQL for summing a numeric column: 


-- ========================================================
-- SQL FOR SELECTING THE SUM OF A COLUMN FROM A GIVEN TABLE
-- ========================================================

SELECT SUM(column_name) FROM table_name;  

Example: 
SELECT SUM(quantity) FROM orders
WHERE product_id IN (1,2,3);


-- ================================================
-- SQL FOR RETURNING THE AVERAGE VALUE FOR A COLUMN
-- ================================================
SELECT AVG(column_name) FROM table_name;  

Example: 
SELECT AVG(price) FROM orders
WHERE order_date BETWEEN '20170101' AND '20170131';

