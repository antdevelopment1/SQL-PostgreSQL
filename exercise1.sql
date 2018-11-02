-- Exercises 1

SELECT city, postcode FROM address;

SELECT name FROM products
WHERE season = 'Winter';

SELECT id, quantity, order_date FROM orders
WHERE price > 25.00
AND quantity < 4;

SELECT * FROM products
WHERE season = 'Summer'
AND wholesale_price >= 20.00;


