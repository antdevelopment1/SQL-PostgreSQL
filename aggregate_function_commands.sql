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