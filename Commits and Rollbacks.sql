use testdb;

#set session so no autocommits complete
set session autocommit = 0;

create table pet(pet_id int, pet_type varchar(100));

#first commit
commit;

insert into pet values (1, 'Dog');
insert into pet values (2, 'Cat');
insert into pet values (3, 'Rabbit');

select * from pet;

#Rollback to first commit; undo everything between last commit and now
rollback;

select * from pet;

#commit to database
commit;