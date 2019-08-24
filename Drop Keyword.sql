create database newtest;

use newtest;
create table people (
	person_name varchar(40),
    age int(3)
);

insert into people(person_name, age) values ("Guy Fieri", 40);

#drop key is a form of delete; removes it from the table
alter table people
drop age;

#remove a whole table from the database
drop table people;

select * from people;
