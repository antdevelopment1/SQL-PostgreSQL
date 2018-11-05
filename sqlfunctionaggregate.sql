1. Write a query which will return the maximum value in the hours column from the employees table. 

2. Write a query which will return the number of rows in the address table where city is equal to London. 

3. What was the total quantity bought in January 2017, grouped by each product and order date?

4. What was the average price spent, grouped by each order date, for March 2017? 


select max(hours) from employees;

select count(city) from address
where city = 'London';

select product_id, order_date, sum(quantity) from orders
group by product_id, order_date
having order_date between '2017-01-01' and '2017-01-31';

select order_date, avg(price) from orders
group by order_date
having order_date between '2017-03-01' and '2017-03-31';
