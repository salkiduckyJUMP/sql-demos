use sakila;

#Returns names which end in C, only returns Alec
select * from actor where first_name like '%C';

#Returns only Alec
select * from actor where first_name like 'alec';

#returns all actors where their id ends in 5
select * from actor where actor_id like '%5';