create database pokedex;

use pokedex;
create table pokemon (
 pokemon_id int NOT NULL PRIMARY KEY,
 pokemon_name varchar(50),
 no_evolutions int
 );
select * from pokemon;