use sakila;

###Example 1###

select * from film;

select * from film where film_id = 1;

#get each actor from each film

select * from film_actor;
select * from actor;

#In the actor table, we have actor_id, checks if those actor_ids are in film_actor table where the film_id is 1
select * from actor where actor_id in (select actor_id from film_actor where film_id = 1);

###Example 2###

#Select actor who has first name Sissy
select * from actor;
select * from actor where first_name = 'Sissy';

#Find all films Sissy is in from the film_actor table
select * from film_actor where actor_id = (select actor_id from actor where first_name  = 'Sissy');

#Find info on all the movies Sissy is in
select * from film where film_id in (select film_id from film_actor where actor_id = (select actor_id from actor where first_name = 'Sissy') );