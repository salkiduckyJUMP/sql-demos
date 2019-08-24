select * from actor;

#Returns range where actor_id is between 10 and 50, includes 10 and 50 as floor and ceiling
select * from sakila.actor where actor_id between 10 and 50;

#Returns range of only A names but no B-starting names, none are just 'b'
select * from sakila.actor where first_name between 'a' and 'b';

#Returns range of names between 'Al' and 'Bela' and 'Al' and 'Bela as the floor and cieling
select * from sakila.actor where first_name between 'Al' and 'Bela';