use sai;

create table books(
books_id int primary key,
title varchar(30),
author varchar(30),
price decimal(5,2),
isbn varchar(20)
);

insert into books values
 (1,'to kill a mockingbird','harper lee',11.00,'1234567890'),
 (2,'1984','gerge orwell',10.99,'1234567890123'),
 (3,'Harry Potter','JK Rowling',12.00,'987654321');
select * from books;

create table orders(
orders_id int primary key,
books_id int not null,
order_date date,
quantity int,
total_price decimal(10,2)
);

insert into orders values
 (1,1,'25-01-04',2,22.00),
 (2,2,'25-01-09',1,10.99);
 
select * from orders;

select * from books
right join orders 
on books.books_id = orders.books_id;

select books.books_id,books.title,books.author,books.price,orders.books_id, orders.order_id,orders.total_price from books
inner join orders 
on books.books_id = orders.books_id;

select * from books;
select * from books
left join orders 
on books.books_id = orders.books_id;

select * from customers
join orders 
on customers.customers_id = orders.customers_id;

select * from customers
cross join orders 
on customers.customers_id = orders.customers_id;