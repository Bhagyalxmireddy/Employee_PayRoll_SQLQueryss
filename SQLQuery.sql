--UC1-Creating DB
create Database Employee_Payroll
use Employee_Payroll
--UC2-Creating Table
CREATE TABLE Employee (
    ID int  IDENTITY(1,1) primary key,
    Name varchar(50),
	Gender varchar(10),
	PhoneNumber varchar(10),
	address varchar(50),   
);
select * from Employee;
CREATE TABLE Department_Name (
    Dep_ID int  IDENTITY(1,1) primary key,
    Department_Name varchar(50),   
);
select * from Department_Name;

CREATE TABLE Employee_Department (
    Dep_ID int,
    ID int,
	constraint Employee_Department_fk Foreign key(ID) references Employee(ID),   
	constraint Employee_Department_fk1 Foreign key(Dep_ID) references Department_Name(Dep_ID), 
);
select * from Employee_Department;

CREATE TABLE Payroll (
	Payroll_ID int Identity(1,1) primary key,
    ID int,
	constraint Payroll_fk Foreign key(ID) references Employee(ID),  
    StartDate varchar(50),
	Basic_pay float(10),
	Deduction float(10),
	Taxable_Pay float(10),
	Income_Tax float(10),
	Netpay float(10),
);
select * from Payroll;

Insert into Employee(Name,Gender,PhoneNumber,address)
	values('sravani','F','8741025369','vijayawada'),
		('tejaswini','F','9874102563','Mumbai'),
		('Akshay','M','7801092129','Balnagar');

Insert into Department_Name(Department_Name)
	values('sales'),
	('Marketing'),
	('customerService'),
	('finace');

Insert into Employee_Department(Dep_ID,ID)
  values(1,1),
		(2,1),
		(3,2),
		(4,3);
select * from Employee_Department;


Insert into Payroll(ID,StartDate,Basic_pay,Deduction,Taxable_Pay,Income_Tax,Netpay)
values(1,'2017-05-12',100000,20000,5000,2000,850000),
	(2,'2018-07-25',60000,10000,2000,1000,50000),
	(3,'2020-11-13',90000,9000,1000,1000,70000);
select * from Payroll;
drop Table Employee_Payroll;
drop Table Payroll_Service;

--UC4-Retreving data 
select * from Employee;
select * from Department_Name;
select * from Employee_Department;
select * from Payroll;

--UC5--Retrevi The salary 
select Basic_Pay from Payroll WHERE ID IN (select ID from Employee Where Name = 'Sravani');

select * from Payroll Where StartDate = '2020-11-13';

select Gender,Avg(payroll.Basic_pay) as AVG_Pay from PayRoll payroll 
inner join Employee emp
on payroll.ID = emp.ID
group by Gender;

select Gender,SUM(payroll.Basic_pay) as Total_Pay from PayRoll payroll 
inner join Employee emp
on payroll.ID = emp.ID
group by Gender;

select MIN(Basic_Pay) from Payroll;
select Max(Basic_Pay) from Payroll;
select Count(Basic_Pay) from Payroll;