create database pokedex;

use pokedex;
create table pokemon (
 pokemon_id varchar(15) NOT NULL PRIMARY KEY,
 pokemon_name varchar(50),
 no_evolutions int
 );
 
#describe pokemon;

#add a column
alter table pokemon 
add gender varchar(2);
#Drop primary key, add a new one
#drop PRIMARY KEY,
#add PRIMARY KEY (pokemon_id)

#modify a column
/*alter table pokemon
modify gender int;

#delete a column
alter table pokemon
drop gender;
*/

