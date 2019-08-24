use sakila;

select * from film;

# Updating column value to another
update film
set language_id = 1
where film_id = 1;

select * from film;