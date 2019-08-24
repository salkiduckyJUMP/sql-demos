#Create a new user
create user 'testuser' identified by '123';

#Remove other user
#drop user 'testuser'

#Grants access to all databases, write, select, everything
#all databases.all tables
grant all on *.* to 'testuser';

#Revoke access to all databases, write, select, everything
revoke all on *.* from 'testuser';

#Grant access to sakila database only
#sakila database.all tables
grant all on sakila.* to 'testuser';

#Grant view-mode access on sakila only
grant select on sakila.* to 'testuser';

#Check grants for the current user
show grants for current_user();


