#Ceiling-goes to next number -- 16
select ceil(15.8);

#Floor-goes to last number -- 15
select floor(15.8);

#power
select power(4,2);

#greatest of the numbers in the parantheses
select greatest(4,2,8,1);

use sakila;

select * from payment;

select payment_id, amount, ceil(amount) as high_amt from payment where payment_id between 1 and 10;

select payment_id, amount, floor(amount) as high_amt from payment where payment_id between 1 and 10;