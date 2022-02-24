/*1.Find the salary of employees whose salary is greater than the salary of employees whose emp_id=143*/
select emp_id,salary from employee
where emp_id=143;
select emp_id,salary from employee where salary >(select salary from employee where emp_id=143);
