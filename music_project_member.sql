use music_project;



create table members(
member_id int not null primary key auto_increment,
member_name varchar(50),
member_email varchar(100),
member_password int
);