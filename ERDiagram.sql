use payroll_service

create table employee
(
employeeID int identity(1,1) primary key,
Name varchar(200),
salary money not null,
StartDate Date,
Gender char(1),
Phone varchar(200),
Address varchar(200),
Department varchar(200),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
)

select * from employee

insert into employee values
('Billi',100000,'2018-05-21','F','1122336655','MG Road','Sales',1000,2000,3000,4000,5000),
('Tom',200000,'2019-02-4','M','7788994455','#112 Pune','Marketing',5000,4000,3000,2000,4000),
('Mark',300000,'2020-05-21','M','4455661122','RA Road Mumbai','Sales',4000,2000,1000,3000,6000)

create table Payroll
(
employeeID int primary key,
salary int,
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float
)

create table department
(
    departmentID int identity(1,1) primary key,
    department varchar(200)
)