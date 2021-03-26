-- table 'orders', similar to another

create table orders
(
    orderNumber    int(11)     not null,
    orderDate      datetime    not null,
    requiredDate   datetime    not null,
    shippedDate    datetime    not null,
    status         varchar(15) not null,
    comments       text        not null,
    customerNumber int(11)     not null,
    primary key (orderNumber)
) engine = INNODB;