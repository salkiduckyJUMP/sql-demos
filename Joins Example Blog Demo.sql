#Create db
create database library;

#Select db for use
use library; 

#create our author table
create table author (
	author_id int NOT NULL PRIMARY KEY,
    first_name varchar(50),
    second_name varchar(50),
    favorite_genre varchar(50)
);

#Add records into our author table
insert into author (author_id, first_name, second_name, favorite_genre) values (1, 'Stephen', 'King', 'Horror');
insert into author (author_id, first_name, second_name, favorite_genre) values (2, 'J.K.', 'Rowling', 'Fantasy');
insert into author (author_id, first_name, second_name, favorite_genre) values (3, 'John', 'Grisham', 'Legal Thriller');
insert into author (author_id, first_name, second_name, favorite_genre) values (4, 'Danielle', 'Steele', 'Romance');
insert into author (author_id, first_name, second_name, favorite_genre) values (5, 'H.P.', 'Lovecraft', 'Science Fiction');
insert into author (author_id, first_name, second_name, favorite_genre) values (6, 'Nora', 'Roberts', 'Suspense');
insert into author (author_id, first_name, second_name, favorite_genre) values (7, 'Meg', 'Cabot', 'Young Adult Fiction');
insert into author (author_id, first_name, second_name, favorite_genre) values (8, 'James', 'Patterson', 'Mystery');

#View all records in our author table; use to make sure you added everything!
select * from author;

#Create our book table
create table book (
	book_id int NOT NULL PRIMARY KEY,
    title varchar(50),
    author_id int,
	FOREIGN KEY (author_id) REFERENCES author(author_id)
);

#Add records to our book table
insert into book(book_id, title, author_id) values (1, 'Princess Diaries', 7);
insert into book(book_id, title, author_id) values (2, 'Irish Rose', 6);
insert into book(book_id, title, author_id) values (3, 'IT', 1);
insert into book(book_id, title, author_id) values (4, 'Skipping Christmas', 3);
insert into book(book_id, title, author_id) values (5, 'Zoo', 8);
insert into book(book_id, title, author_id) values (6, 'Harry Potter and the Chamber of Secrets', 2);
insert into book(book_id, title, author_id) values (7, 'Cujo', 1);
insert into book(book_id, title, author_id) values (8, 'Seventh Heaven', 7);
insert into book(book_id, title, author_id) values (9, 'The Ring', 4);
insert into book(book_id, title, author_id) values (10, 'Christine', 1);
insert into book(book_id, title, author_id) values (11, 'Harry Potter and the Chamber of Secrets', 2);
insert into book(book_id, title, author_id) values (12, 'Along Came a Spider', 8);
insert into book(book_id, title, author_id) values (13, 'Of Mice and Men', null);
insert into book(book_id, title, author_id) values (14, 'Warriors: Into the Wild', null);
insert into book(book_id, title, author_id) values (15, 'Hunger Games', null);

#View all records in our book table; use to make sure you added everything!
select * from book;

#Inner Join
select book.book_id, author.first_name, author.second_name
from book
inner join author 
on book.author_id = author.author_id;

#Left Join
select book.book_id, author.first_name, author.second_name
from book
left join author
on book.author_id = author.author_id;

#Right Join
select book.book_id, author.first_name, author.second_name
from book
right join author
on book.author_id = author.author_id;

#Full Join
select book.book_id, author.first_name, author.second_name
from book
left join author
on book.author_id = author.author_id 
union all
select book.book_id, author.first_name, author.second_name
from book
right join author
on book.author_id = author.author_id;