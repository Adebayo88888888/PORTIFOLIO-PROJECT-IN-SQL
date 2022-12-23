select* from employee;
select * from bonus;
select  * from designation;

# Write a query to retrieve all details where first name starts witth 'a' on the employee table
select * from employee where first_name like 'a%';


# Write a query to retrieve all details where last name ends witth 'm' on the employee table
select * from employee where last_name like '%m';


# Write a query to retrieve all details where last name has'a' somewhere in  the middle on the employee table
select * from employee where last_name like '%a%';

# write a query to print all details of the employee whose salary is between 10000 and 40000
select * from employee where salary between 10000 and 40000;

## fetch employee name
select concat(first_name,' ', last_name) as Employee_name, salary 
from employee where employeeId in
(select employeeId from employee where salary between 10000 and 40000);

# write a sql query to retrieve all employeees who joined on a particular date
select *  from employee where joining_date = '2020';



# SQL query to fetch number of employee in every department
select count(*) from employee group by department_name;
# Or say
select count(*) from employee where department_name = 'HR';

# Intermidiate
# sql query to print details of the employee who are also execcutives

select  employee.first_name, employee.last_name,employee.salary  from employee 
inner join designation
on employee.employeeId= designation.employeeId
and designation.designation= 'executive' or 'manager';

# sql query to clone a new table from another table
select * into clone_employee from employee;
create table clone_employee like employee;


select * from clone_employee;
desc clone_employee;

# sql query to sho top n salary dfrom employee table
select * from employee order by salary asc limit 3;


# sql to find the 3rd hghest salary
select salary  from employee order by salary desc limit 2,1;
# the meaning of 2 in the above query is that 2nd highest value and 1 means that show only the first highest values