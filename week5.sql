-- 1
select substring(productDescription, 1, 50) as 'Title of products'
from products;

-- 2
select concat(firstName, ' ', lastName, ' ', jobTitle)
from employees;

-- 3
select productLine, replace(productLine, 'Cars', 'Automobiles')
from productlines;

-- 4
select *
from orders
order by datediff(requiredDate, shippedDate) desc
limit 5;

-- 5
select *
from orders
where requiredDate >= '2005/5/1'
  and requiredDate <= adddate('2005/5/1', interval 30 day)
  and shippedDate is null


select *
from orders
where extract(year from orderDate) = 2005
  and extract(month from orderDate) = 5
  and shippedDate is null;