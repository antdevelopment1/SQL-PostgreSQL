select customers.first_name, customers.last_name, products.name as products_name, orders.quantity, address.city from customers
inner join orders on customers.id = orders.customer_id
inner join products on orders.product_id = products.id
inner join address on customers.address_id = address.id
where address.city = 'Worthing';


select orders.quantity, orders.price, orders.order_date, products.name, address.street, address.postcode from orders
inner join products on orders.product_id = products.id
inner join customers on customers.id = orders.customer_id
inner join address on address.id = customers.address_id;



select first_name, last_name from employees
Union
select first_name, last_name from employees;
