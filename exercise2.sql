-- Exercises 2
select first_name, last_name from customers
where first_name in ('Emily', 'John');

select id, name from products
where name like ('%Shirt%');

select id from customers
where date_joined between '2016-06-01'AND '2016-09-30';

select id, order_date from orders
where customer_id in (2, 4, 6, 8)
and order_date between '2017-03-01'AND '2017-03-31';