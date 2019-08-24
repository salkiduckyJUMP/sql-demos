use sakila;

#Returns sum of all amount values from payment table
select sum(amount) from payment;

#Returns average of all payment amounts
select avg(amount) from payment;

#Returns a count of all addresses
select count(address) address from address;

#Returns the maximum value of amount from the payment table
select max(amount) from payment;

#Returns minimum value of amount from the payment table
#select min(amount) from payment where > 5;