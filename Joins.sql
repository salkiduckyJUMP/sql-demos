use sakila;

###Inner Join###
select * from address;

#Common rows between address and customer
select address.address_id, customer.first_name from address inner join customer on address.address_id = customer.address_id;

###Left Join###
#Returns the left table matching value and the address.id; starts at 1 because address.id starts at 1 in customer
select address.address_id, customer.first_name from address left join customer on address.address_id = customer.address_id order by address_id asc;

###Right Join###
#Returns the right table matching value and the address.id; start at 5 because address.id starts at 5 in customer but not address!
select address.address_id, customer.first_name from address right join customer on address.address_id = customer.address_id order by address_id asc;

###Full Join###
select address.address_id, customer.first_name from address left join customer on address.address_id = customer.address_id
union all 
select address.address_id, customer.first_name from address right join customer on address.address_id = customer.address_id order by address_id asc;
