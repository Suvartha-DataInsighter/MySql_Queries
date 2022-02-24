use my_db;
/* fetching records in the ascending order to get salary in ascending order,so that we can know that second min salary..*/
select salary from employee
order by salary;
select min(salary) from employee where salary>(select min(salary) from employee);
