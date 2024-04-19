create table cars_04(
car_id int,
car_brand varchar(20),
car_color varchar(20),
car_sale_price int,
primary key (car_id)
);

desc cars_04;



insert into cars_04(car_id,car_brand, car_color)
values("1","BMW", "Black");

insert into cars_04(car_id,car_brand, car_color)
values("2","Benz", "Black");

show warnings;
select * from cars_04;