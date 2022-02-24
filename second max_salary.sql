use my_db;
select * from employee;
select max(salary) from employee where salary<(select max(salary) from employee);
