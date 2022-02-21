/* Difference between Drop and Delete command...*/
#DROP is used to delete the data presented in the table as well as table structure
use my_db;
select * from student2;
set autocommit=0; # this commit help us to it will take the permanent changes
set sql_safe_updates=0; #this statement allow us to update the table
delete from student2;
rollback; ## it is used to get back data after deleting the data from the table
