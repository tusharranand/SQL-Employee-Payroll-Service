--Welcome to Employee Payroll Service Problem

create database Payroll_Service
use Payroll_Service

create table Employee_Payroll(
Emp_ID int identity(1,1) not null Primary key,
Name varchar(50),
Salary bigint,
StartDate datetime
)

insert into Employee_Payroll (Name,Salary,StartDate) values 
('Bill',533500,'2017-05-15'),
('Charlie',350640,'2018-12-26')

select * from Employee_Payroll

select Salary from Employee_Payroll where Name = 'Bill'
select Name from Employee_Payroll where StartDate between '2018-01-01' and '2022-04-18'