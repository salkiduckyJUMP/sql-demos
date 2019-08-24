use sakila;
# shows all tables of the database
show tables;
select * from actor;

#Projection -- selecting columns
select first_name, last_name from actor;

#Selection -- selecting rows
select * from sakila.actor where actor_id = 1;
select * from sakila.actor where first_name = 'Penelope';
select * from actor where actor_id =1 and first_name = 'Penelope';

#Joining
SELECT * FROM actor,actor_info WHERE actor.first_name = actor_info.first_name;

#Arithmetic Expressions
select actor_id*100+1, first_name, last_name from actor;

#Generates cells with the output in them, just to show you
select 2+00, 35*3, 3+8;