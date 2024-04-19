create table my_product(
product_id int auto_increment,
product_name varchar(20),
product_price int,
primary key (product_id)
);

desc my_product;

select * from my_product;

alter table my_product auto_increment = 20;

insert into my_product(product_name,product_price)
values
("banana", 25),
("mango", 80),
("berry", 100),
("grape", 50),
("apple", 15);
