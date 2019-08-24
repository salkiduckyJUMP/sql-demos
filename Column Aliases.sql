use sakila;
/*
Syntax:
select [column_1 | expression] as
'descriptive name' from table_name;
*/

select concat_ws(',', last_name, first_name) as 
'FULL NAME' from actor;