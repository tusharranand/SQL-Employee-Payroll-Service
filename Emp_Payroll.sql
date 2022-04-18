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
('Rekha',697820,'2016-11-09'),
('Jaya',354339,'2018-03-18')

select * from Employee_Payroll

select Salary from Employee_Payroll where Name = 'Bill'
select Name from Employee_Payroll where StartDate between '2018-01-01' and '2022-04-18'

alter table Employee_Payroll add Gender varchar(1)

update Employee_Payroll set Gender = 'M'
update Employee_Payroll set Gender = 'F' where Name in ('Rekha','Jaya')

select Gender, sum(Salary) as Total_Salary from Employee_Payroll group by Gender
select Gender, avg(Salary) as Average_Salary from Employee_Payroll group by Gender
select Gender, min(Salary) as Minimum from Employee_Payroll group by Gender
select Gender, max(Salary) as Maximum from Employee_Payroll group by Gender
select Gender, count(*) as Male_or_Female from Employee_Payroll group by Gender

select Gender,
count(*) as Male_or_Female,
sum(Salary) as Total_Salary,
avg(Salary) as Average_Salary,
min(Salary) as Minimum,
max(Salary) as Maximum 
from Employee_Payroll group by Gender
