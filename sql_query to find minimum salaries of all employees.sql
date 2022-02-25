/* Displaying the employees who all are earning lowest salary...*/
select * from employee;
select salary from employee 
where salary=(select min(salary) from employee);
/* displaying all the employees who are earning heighest salaries..*/
select salary from employee 
where salary=(select max(salary) from employee);
# we get employee salary with heighest salaries


