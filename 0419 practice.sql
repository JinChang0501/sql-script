create table artists(
id int not null primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;

-- P.120 練習
select artist_name, count(songs.artist_id) as 'numbers of songs' from artists join songs on artists.id = songs.artist_id
group by artist_name;


-- having
select artist_name, count(songs.artist_id) as 'numbers of songs' from artists join songs on artists.id = songs.artist_id
group by artist_name
having count(songs.artist_id) > 1;

show warnings;


-- p.121
select city, count(city) as 'numbers of songs' from passengers join ports on passengers.portId = ports.id
group by ports.city
having count(city) > 100;


-- p.124
select * from passengers
order by -portId desc;

-- p.127 請從乘客資料中依照portid由小至大找出前15筆資料
select * from passengers
order by -portId desc limit 15;

-- p.129 Sebquery
select max(age) from passengers where pclass = 2;


select pclass, name , age from passengers where age > (select max(age) from passengers where pclass = 2);


-- p.131
select count(distinct pclass) as class_account from passengers;

show warnings;


-- p.132 double distinct
select distinct pclass, sex from passengers;

-- p.134 
select * from passengers where name like '%Williams,%';

-- p.136
select * from passengers where name like '% William %' and ticketId like '__' and sex = 'male';

select * from passengers;

-- p.138 in & not in
select * from passengers where sex != 'female' and portId not in (2,3);


-- p.140 Case
select id , name,
case 
	when portid = 1 then "Southampton" 
    when portid = 2 then "Cherbourg" 
    when portid = 3 then "Queenstown" 
    else 'unknown'
end boarding_place
from passengers;



