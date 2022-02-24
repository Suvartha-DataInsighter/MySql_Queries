use my_db;
select salary from employee
order by salary desc;
## Subquery is used to reduce the query statements,and from the below inside queries will execute first and after outer query will execute...
select max(salary) from employee where salary<(select max(salary) from employee where salary<(select max(salary) from employee));
