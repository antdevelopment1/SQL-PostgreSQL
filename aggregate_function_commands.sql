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