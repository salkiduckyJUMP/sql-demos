use sakila;

#No result
select last_name from actor where first_name = 'brick';

#Returns renee ball
select * from actor where last_name = 'ball';

#returns any last name except those that begins with the letter 'A'
select * from actor where last_name > 'b';

#Excludes names that begin with B entirely
select * from actor where last_name > 'bz';

#Returns names that comes before 'Ball' alphabetically and 'ball'
select * from actor where last_name <= 'ball';

#Returns names that comes before 'Ball' alphabetically and 'ball' in descending order
select * from actor where last_name <= 'ball' order by last_name desc;