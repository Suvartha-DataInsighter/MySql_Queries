/* Distinct Select statements */
/*The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set*/
## Selecting all the columns from table Employee
use my_db;
select * from employee;
## Selecting specific columns from table
select emp_id,first_name from employee
## selecting single column from the employee table 
select salary from employee;
/*The SELECT DISTINCT statement is used to return only distinct (different) values.*/
# selecting distinct columns from table employee
select distinct(emp_id) from employee
