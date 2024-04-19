use my_train_titanic;

delimiter //
create procedure select_ports()
begin
	select * from ports;
end //
delimiter ;

call select_ports();
drop procedure select_ports;

show warnings;

-- p.147 practice
delimiter //
create procedure select_ports(in pname varchar(100))
begin
	select name,portId from passengers where name like pname ;
end //
delimiter ;

call select_ports('%william%');


-- select name,portId from passengers where name like '% william %' ;