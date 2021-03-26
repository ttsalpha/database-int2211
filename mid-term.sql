-- Mid-term: 25'

-- 1a
show databases;

-- 1b
use classicmodels;
show tables;

-- 2a
select distinct productCode
from orderdetails;

-- 2b
select orderNumber, datediff(shippedDate, orderDate) as diff
from orders
where datediff(shippedDate, orderDate) is not null
order by diff
limit 5;

-- 3
select concat(addressLine1, ' ', if(addressLine2 is null, 'N/A', addressLine2))
from customers;

-- 4
create table Partner
(
    partner_id     int         not null primary key,
    name           varchar(50) not null,
    address        varchar(50),
    employeeNumber int         not null,
    foreign key fk_partner_employees (employeeNumber) references employees (employeeNumber)
)