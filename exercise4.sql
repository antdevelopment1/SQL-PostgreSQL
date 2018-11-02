-- Exercise 4
select p.name, o.order_date from products p
inner join orders o on p.id = o.product_id;


select cust.first_name, cust.last_name, o.id from customers cust
inner join orders o on cust.id = o.customer_id
where order_date between '2017-02-01'AND '2017-02-28'
order by cust.last_name desc;


select cust.date_joined, ad.postcode from customers cust
inner join address ad on cust.address_id = ad.id
where ad.city = 'Brighton'
order by cust.first_name asc;
