show databases;
use univ;
create table detail(
id int,
LastName varchar(255) not null,
firstName varchar(255) not null,
age int,
unique(ID)
);
insert into detail value 
(1,'Alluri','Sitaramaraju',40),
(2,'Komaram','Beemudu',29),
(3,'Subash','Chandrabose',49),
(4,'Rani','Rudramma',36);

alter table detail modify firstName varchar(255)  ;
alter table detail drop index id;
desc detail;
create table category(
cid int primary key,
cname varchar(50),
cdate date not null
);
insert into category values (1001,'Electric','12-01-13'),(1002,'Furniture','13-01-13');
select * from category;
create table products(
pid int primary key,
pname varchar(50) not null,
cid int not null,
foreign key (cid) references category(cid)
);
insert into products values (901,'switch',1001),(991,'Cusion',1002),(923,'bulb',1001);
select * from products;
select products.pid, products.pname,category.cname from products join category order by products.cid;