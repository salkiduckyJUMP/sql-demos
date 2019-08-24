use sakila;
#and condition; both must be true to return
select address_id, address from address where address_id = 5 AND address = "1913 Hanoi Way";

#or condition; one must be true to return it
select * from address where address_id = 5 OR address = "53 Idfu Parkway";
 
 #not condition; returns everything except the condition after it
 select * from address where NOT address_id = 5;
 
 select * from address where NOT address_id = 5;