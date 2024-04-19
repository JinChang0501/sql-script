-- prepare the titanic passengers data
create database my_ship;
use my_ship;

create table ports(
id int(10),
embarked varchar(5),
city varchar(20),
primary key(id)
);

create table class(
id int(10),
class_number int(5),
class_level varchar(20),
primary key(id)
);

create table passengers(
id int(10), 
pclass int(10), 
pname varchar(100), 
sex varchar(6), 
age int(10), 
portId int(10),
foreign key(portId) references ports(id),
foreign key(pclass) references class(id)
);

INSERT INTO ports(id, embarked, city) VALUES (1, 'S', 'Southampton');
INSERT INTO ports(id, embarked, city) VALUES (2, 'C', 'Cherbourg');
INSERT INTO ports(id, embarked, city) VALUES (3, 'Q', 'Queenstown');

INSERT INTO class(id, class_number, class_level) VALUES (1, 1, 'First Class');
INSERT INTO class(id, class_number, class_level) VALUES (2, 2, 'Second Class');
INSERT INTO class(id, class_number, class_level) VALUES (3, 3, 'Third Class');

INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (1, 3, 'Braund, Mr. Owen Harris', 'male', 22, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (2, 1, 'Cumings, Mrs. John Bradley (Florence Briggs Thayer)', 'female', 38, 2);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (3, 3, 'Heikkinen, Miss. Laina', 'female', 26, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (4, 1, 'Futrelle, Mrs. Jacques Heath (Lily May Peel)', 'female', 35, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (5, 3, 'Allen, Mr. William Henry', 'male', 35, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (6, 3, 'Moran, Mr. James', 'male', NULL, 3);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (7, 1, 'McCarthy, Mr. Timothy J', 'male', 54, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (8, 3, 'Palsson, Master. Gosta Leonard', 'male', 2, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (9, 3, 'Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)', 'female', 27, 1);
INSERT INTO passengers(id, pclass, pname, sex, age, portId) VALUES (10, 2, 'Nasser, Mrs. Nicholas (Adele Achem)', 'female', 14, 2);

-- check table
select * from passengers;
select * from ports;
select * from class;

select pname, city from passengers
join ports on portid = ports.id;

select * from passengers join class on passengers.id = class.id;

-- 請利用passengers, class表格查詢出下表的結果
select pname as 乘客名稱, class_level as 船艙等級 from passengers
join class on passengers.pclass = class.id;


-- 請找出所有乘坐Second Class與Third Class客艙乘客的姓名，以及該客艙的class_level
select pname as 乘客名稱, class_level as 船艙等級 from passengers
join class on passengers.pclass = class.id
where class_level = "Second Class" or class_level = "Third Class";


