-- Union and Union All

-- Combines the results set of two SELECT statements

-- The SELECT statements must have the same number of columns
-- AND the columns must be the same data type

select * from customers;
select * from employees;

select first_name, last_name from customers
Union
select first_name, last_name from employees;


-- Union All doesn't remove duplicates
select first_name, last_name from customers
where first_name = 'John'
Union All
select first_name, last_name from employees;