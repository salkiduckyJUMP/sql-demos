create database prison;
use prison;

create table prisoner(id int, pname varchar(50), hashand bool);

insert into prisoner(id, pname, hashand) values(5, 'John Doe', false);
insert into prisoner(id, pname, hashand) values(4, 'Dojon', true);
insert into prisoner(pname) values('Harris');
select * from prisoner;
