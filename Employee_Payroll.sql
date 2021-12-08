create database Emp_Payroll --UC1

create table Employee_Payroll(EmpId int IDENTITY, EmpName varchar(200),Salary int,StartDate Date) --UC2

SET IDENTITY_INSERT Employee_Payroll ON
insert into Employee_Payroll(EmpId,EmpName,Salary,StartDate) --UC3
values(1, 'nazeela',10000,'2021-12-19')
insert into Employee_Payroll(EmpId,EmpName,Salary,StartDate)
values(2, 'shrimaj',25000,'2021-11-18')
insert into Employee_Payroll(EmpId,EmpName,Salary,StartDate)
values(3, 'sumit',15000,'2021-10-19')
insert into Employee_Payroll(EmpId,EmpName,Salary,StartDate)
values(4, 'varun',30000,'2021-12-15')
insert into Employee_Payroll(EmpId,EmpName,Salary,StartDate)
values(5, 'dipesh',20000,'2021-12-11')

select * from Employee_Payroll --UC4



SELECT *   --UC5
  FROM Employee_Payroll
 WHERE StartDate IN ('2021-11-19')

ALTER TABLE Employee_Payroll  --UC6
ADD Gender varchar;

update Employee_Payroll  --UC7
set Gender = 'F'
where EmpId=1

select SUM(Salary) from Employee_Payroll --UC7
where Gender = 'F' Group BY Gender

select SUM(Salary) from Employee_Payroll  --UC7
where Gender = 'M' Group BY Gender


select AVG(Salary) from Employee_Payroll  --UC7
where Gender = 'M' Group BY Gender

select MIN(Salary) from Employee_Payroll  --UC7
where Gender = 'M' Group BY Gender

select MAX(Salary) from Employee_Payroll  --UC7
where Gender = 'M' Group BY Gender

select COUNT(Salary) from Employee_Payroll  --UC7
where Gender = 'M' Group BY Gender





