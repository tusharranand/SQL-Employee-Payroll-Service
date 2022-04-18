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
('Tushar',30450,'2022-02-03'),
('Hema',39781,'2021-08-21')