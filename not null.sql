create table cars(
car_brand varchar(50) not null,
car_color varchar(20) not null,
car_sale_price int
);

desc cars;

insert into cars (car_brand,car_color,car_sale_price)
values
("BMW" , "white" , null),
("Benz" , "black", 2000000);

show warnings;

select * from cars;