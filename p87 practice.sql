use my_database;

create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);
desc player;

insert into player(player_name,player_position,player_age)
values
("Bobby","INF",23),
("Luis","P",30),
("Jonah","C",28),
("Framber","P",30),
("Pete","P",27),
("Matt","INF",29),
("Corbin","OF",23),
("Juan","OF",28);

select * from player;

select player_id,player_name,player_age from player
where player_name = "Corbin";


show warnings;

select player_id as 球員編號,player_name as 球員姓名,player_age as 球員年齡 from player;


select * from player;

update player set player_age = 26 
where player_name = "Bobby";

select player_name, player_age from player where player_name = "Bobby";

update player set player_name = "Jonathan" 
where player_name = "Jonah";

select player_name, player_age from player where player_name = "Bobby" or player_name =  "Jonathan";

select * from player;

delete from player
where player_name = "Jonathan";