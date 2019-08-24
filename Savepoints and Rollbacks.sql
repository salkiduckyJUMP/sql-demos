SET SQL_SAFE_UPDATES = 0;

use testdb;

drop table pet;

set session autocommit = 0;

create table pet(pet_id int, pet_type varchar(100));

select * from pet;

savepoint before_insert;

insert into pet values (1, 'Dog');
insert into pet values (2, 'Cat');
insert into pet values (3, 'Rabbit');

select * from pet;

savepoint before_delete;
delete from pet where pet_id = 1;

select * from pet;

savepoint before_update;
update pet set pet_type = 'fish' where pet_id = 2;

select * from pet;

#Rolls back to the last commit;
rollback;
select * from pet;

#Rollback before update
rollback to before_update;
select * from pet;

#Rollback before delete
rollback to before_delete;
select * from pet;

#Rollback before inserted values
rollback to before_insert;
select * from pet;

