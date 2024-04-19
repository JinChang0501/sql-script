create table phone(
phone_name varchar(50),
phone_price int,
stocking_time timestamp not null
);

insert into phone (phone_name,phone_price,stocking_time)
values('iphone15 pro max 1TB', 58000, '2024-04-11 14:12:20');

select * from phone;

-- timestamp + now()

create table phone_02(
phone_name varchar(50),
phone_price int,
stocking_time timestamp not null default now()
);

insert into phone_02 (phone_name,phone_price)
values('iphone15 pro max 1TB', 59000);

select * from phone_02;

