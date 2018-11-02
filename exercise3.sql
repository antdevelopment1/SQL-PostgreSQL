select * from orders
order by quantity desc;

select distinct first_name from customers
order by first_name;

select last_name from customers
where last_name like '%s%'
order by last_name asc
limit 5;


select first_name, last_name, pay as pay_per_hour from employees;