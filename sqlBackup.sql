create table users (
mail varchar(200) PRIMARY KEY ,
names varchar(max),
nameacc  varchar(max) ,
pass  varchar(max),
phone  varchar(max),
addres  varchar(max)
)
create table product(
id int PRIMARY KEY,
datas varchar(max),
title varchar(100),
price varchar(max),
sale int,
img varchar(max),
category varchar(100),
createdAt date default CURRENT_TIMESTAMP
)
create table libraryproduct (
ids int,
imgs varchar(max),
colors varchar(max),
FOREIGN KEY (ids) REFERENCES product(id)
)
create table cartUser (
idproduct varchar(max),
account varchar(200),
fullname varchar(max),
addres varchar(max),
phones varchar(max),
imgproduct varchar(max),
colorEn varchar(max),
colorVi varchar(max),
size varchar(max),
quatity int,
methodshipper varchar(max),
titleProduct varchar(max),
priceProduct varchar(max),
)
create table shippeStatus (
    product varchar(max),
    shipper nvarchar(max),
statusShip varchar(max)
)
select * from users
drop table cartUser

select *from libraryproduct
ALTER TABLE libraryproduct

ADD CONSTRAINT FK_libraryproduct_ids_product_id
FOREIGN KEY (ids) REFERENCES product(id)
ON DELETE CASCADE;