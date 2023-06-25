create table users (
names varchar(max),
nameacc  varchar(max) ,
pass  varchar(max),
mail varchar(max),
phone  varchar(max),
addres  varchar(max)
)

create table product(
id int,
datas varchar(max),
title varchar(100),
price int,
sale int,
img varchar(max),
category varchar(100),
createdAt date default CURRENT_TIMESTAMP
)
create table libraryproduct (
ids varchar(max),
imgs varchar(max),
colors varchar(max)
)
create table cartUser (
account varchar(max),
imgproduct varchar(max),
colors varchar(max),
size varchar(max)
)
select * from libraryproduct
delete from libraryproduct
select* from cartUser
drop table product
select *from product