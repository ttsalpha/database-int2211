-- 1
select firstName, lastName
from employees
where reportsTo is null;

-- 2
select distinct customerNumber
from customers
where salesRepEmployeeNumber is not null;

-- 3
select *
from orders
where requiredDate = '2003-01-18';

-- 4
select *
from orders
where orderDate between '2005-04-01' and '2005-04-30'
  and status = 'Shipped';

-- 5
select *
from products
where productLine = 'Classic Cars';