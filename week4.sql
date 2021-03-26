-- 1
select *
from customers
where city in ('Nantes', 'Lyon');
-- where city = 'Nantes' or city = 'Lyon';

-- 2
select *
from orders
where orderDate between '2003-01-10' and '2003-03-10';

-- 3
select *
FROM products
where productLine like '%car%';

-- 4
select *
from products
order by quantityInStock
limit 10;

-- 5
select productCode,
       productName,
       ProductLine,
       quantityInStock,
       buyPrice,
       (quantityInStock * buyPrice) as moneyTotal
from products;