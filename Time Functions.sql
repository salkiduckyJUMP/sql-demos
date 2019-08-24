use testdb;

create table TimeTable(

DateAndTime datetime 
);

#Adds a date
insert into TimeTable(DateAndTime) values (adddate('2018-12-04', 4));
select * from TimeTable;

#Gives the last day of that month
insert into TimeTable(DateAndTime) values (last_day('2018-12-04'));
select * from TimeTable;

#Returns current date
insert into TimeTable(DateAndTime) values (current_date());
select * from TimeTable;

#Extract data from a datetime value
select extract(day from '2018-12-04');

select extract(year from current_date());