use salkia;

#Create View
create view customer_fullname as select concat(customer.first_name, ' ', customer.last_name) from customer;

#Alter View
alter view customer_fullname as select concat(customer.first_name, '   ', customer.last_name) from customer;