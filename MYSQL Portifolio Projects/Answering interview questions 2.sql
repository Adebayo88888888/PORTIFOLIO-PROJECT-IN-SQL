 # Create a company database, an employee table in it with id, first name, last name, salary, joining date, department.
 # create a bonus  table with  employee id referencig to the above, inside the company DB. Add bonus date and bonus amount
 # Employee designation with employee id as a foreign key, also add dessignation and designation date
 
 
 
 drop schema customer;
 create database company;
 
 use company;
 create table Employee(
 employeeId int auto_increment,
 first_name varchar(15) not null,
 last_name varchar(15) not null,
 salary_in_$  int,
 joining_date  datetime,
 department_name varchar(25),
 primary key (employeeId)
 );
 
 select * from employee;
 desc employee;
 
 create table bonus(
 employeeId int,
 bonus_date datetime,
 bonus_amount int not null,
 foreign key (employeeId) references employee(employeeId)
 on delete cascade
 );
 
 desc bonus;
 
 create table designation(
 employeeId int,
 designation varchar(25) not null,
 designation_date datetime,
 foreign key(employeeId) references employee (employeeId));
 
desc designation;
 
 insert into employee values
 (0001, 'ade', 'sam', 30000, '2017', 'HR'),
 (0002, 'ola', 'gift', 20000, '2020', 'development'),
 (0003, 'john', 'mosh', 10000, '2018', 'accounting'),
 (0004, 'ayo', 'bayo', 50000, '2019', 'analytics'),
 (0005, 'blessing', 'tobi',40000,'2015', 'admin');
 
 drop table employee;
 
 select * from employee;
 
 select * from bonus;
 
 
 insert into bonus values
 (0001, '2015', 2000),
(0002, '2021', 3000),
(0003, '2022', 3000),
(0005, '2022', 10000);
 
 insert into designation values 
 (00001, 'execuitve', '2022'),
 (0002, 'manager', '2022'),
 (0005, 'executive', '2022');
select * from designation