use sakila;
select * from actor;

#Order By clause:
#First names in ABC order
select first_name from actor order by first_name asc;

#Distinct clause:
#Returns only one of each name; returns only distinct value
select distinct first_name from actor order by first_name asc;

#Where clause:
#returns only elements that meet a condition
# in this case only elements where Al is the actor name
select distinct first_name from actor where first_name = 'al' order by first_name asc;

#Group by Clause:
#returns rows with same value groups
select * from film;

select rating, count(*) from film group by rating;

#Having Clause:
#Created because where could not handle aggregate functions

select rating, count(*) from film group by rating having count(*)>200;