-- week 1: setup mysql and test

-- login to mysql server
mysql -u root -p

--  login on port 3307
mysql -u root -P3307 -p

source {url} -- pathname to classicmodels.sql

show databases;

create database pets;

use pets;

show tables;

database cat;

create table cat (id int(7), name text);

select userid, username from member;

insert into member (userid,username) values (1,'cloudserver');

quit;
