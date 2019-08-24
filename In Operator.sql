use testdb;

create table BLAZER_DAY(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
day char(10)
);

insert into BLAZER_DAY (day) values ('Sunday');
insert into BLAZER_DAY (day) values ('Monday');
insert into BLAZER_DAY (day) values ('Tuesday');
insert into BLAZER_DAY (day) values ('Wednesday');
insert into BLAZER_DAY (day) values ('Thursday');
insert into BLAZER_DAY (day) values ('Friday');
insert into BLAZER_DAY (day) values ('Saturday');

select * from BLAZER_DAY;

#Updating column value where id = 2 and id = 5
update BLAZER_DAY set day = 'Blazer Day' where id in (2);
update BLAZER_DAY set day = 'Blazer Day' where id in (5);

#Update two at once, cleaner
#update BLAZER_DAY set day = 'Weekend' where id in (1, 7);

select * from BLAZER_DAY;