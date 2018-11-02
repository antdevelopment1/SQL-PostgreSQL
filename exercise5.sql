select * from address;
select * from customers;

select a.id, a.city, c.first_name, c.last_name, c.address_id from address a
left join customers c on a.id = c.address_id;

1. How many rows are returned by a LEFT JOIN between the customers (table 1) and address (table 2) tables.

select c.first_name, c.last_name, a.city from customers c
left join address a on c.address_id = a.id;  25 rows

2. How many rows are returned by a RIGHT JOIN between the customers (table 1) and address (table 2) tables. 

select c.first_name, c.last_name, a.city from customers c
right join address a on c.address_id = a.id;  28 rows

3. How many rows are returned by a FULL JOIN between the customers (table 1) and address (table 2) tables.

select * from customers c
full join address a on c.address_id = a.id; 29 rows

