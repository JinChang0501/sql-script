create table cars_03(
car_brand varchar(50) default "unknown",
car_color varchar(20)default "unknown" ,
car_sale_price int default 50000
);

desc cars_03;

insert into cars_03(car_color)
values(null,"balck",null);

insert into cars_03(car_brand,car_color,car_sale_price)
values(null,"black",null);

insert into cars_03(car_color)
values("black");

insert into cars_03(car_brand,car_color)
values
("Toyota",null),
("Honda",null);

select * from cars_03;