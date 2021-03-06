create database payroll_service
select * from sys.databases;
use payroll_service;
select db_name(); 

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start date not null
);

select * from employee_payroll;

insert into employee_payroll values
('Billi',100000.0,'2018-03-21'),
('Terisa',200000.0,'2019-04-16'),
('Tom',300000.0,'2021-01-20');

select salary from employee_payroll where name='Billi'
select * from employee_payroll where start between '2019-01-01' and GETDATE() 
select * from employee_payroll where gender='M'  

alter table employee_payroll add gender char(1);

update employee_payroll set gender = 'M' where name in ('Billi','Tom');
update employee_payroll set gender = 'F' where name = 'Terisa';

select * from employee_payroll;

select sum(salary) from employee_payroll where gender = 'M' group by gender;
select min(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary), name from employee_payroll where gender = 'F' group by name;
select max(salary) from employee_payroll where gender = 'M' group by Gender;
select count(salary) from employee_payroll where gender = 'M' group by Gender;
select count(salary) from employee_payroll where gender = 'F' group by Gender;

alter table employee_payroll add phone varchar(15)
alter table employee_payroll add address varchar(250)
alter table employee_payroll add department varchar(250) not null default 'CS'

select * from employee_payroll;

sp_rename 'employee_payroll.salary','basic_pay'

alter table employee_payroll add
deductions float,taxable_pay float,tax float,net_pay float

select * from employee_payroll;

update employee_payroll set department = 'Marketing' where name = 'Terisa'

insert into employee_payroll values
('Mark',250000.0,'2020-05-23','F','7755446633','MD Road','Sales',1000,2000,3000,4000)

SELECT SUM(basic_pay) FROM employee_payroll