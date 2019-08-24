use sakila;

#Return ascii value for 'B'
select ascii('B') from dual;

#Returns a full string from a series of strings
select concat('Life', ' is ', 'beautiful') from dual;

#Returns a full string from strings in a new column
select *, concat(first_name, ' ', last_name) as 'full_name' from actor;

#Returns length of the string
select length('Stanley');

select length('Stan-theman-lee');

#Returns the elements in the string as uppercase letters
select * , upper(first_name) from actor;
select upper('life');

#returns elements in the string as lowercase letters
select * , lower(first_name) from actor;

#Returns substring; first parameter string, second position and third is length of the string
select substr('Beautiful', 4, 8);

select substr('Beautiful', 3, 2);