--UC1-Creating DB
create Database Employee_Payroll
use Employee_Payroll
--UC2-Creating Table
CREATE TABLE Employee_Payroll (
    ID int  IDENTITY(1,1) primary key,
    Name varchar(50),
    Salary Float,
    Date Date,   
);
select * from Employee_Payroll;
--UC3-Inserting The values into Tables
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Sravani', '60000', '2019-11-13');
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Tejaswini', '75000', '2018-05-27');
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Akshay', '100000', '2018-02-13');

--UC4-Retriving The Values From Tables
select * from Employee_Payroll;

--UC5-Retriving The Values from particular Row
select * from Employee_Payroll WHERE Date BETWEEN CAST('2018-03-01' AS DATE) AND GETDATE();

--UC6-ADDing The Column to Table
Alter Table Employee_Payroll ADD Gender varchar(10);
UPDATE Employee_Payroll set Gender = 'F' WHERE Name = 'Sravani' or Name = 'Tejaswini';
UPDATE Employee_Payroll set Gender = 'M' WHERE Name = 'Akshay';

--UC7-Applying The Aggregation methods
select SUM(Salary),Gender FROM Employee_Payroll  GROUP BY Gender;
select SUM(Salary),Gender FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender;

select AVG(Salary),Gender FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender;
Select Name,Salary From Employee_Payroll WHERE Salary IN(select MIN(Salary) FROM Employee_Payroll);

Select Name,Salary From Employee_Payroll WHERE Salary IN(select MAX(Salary) FROM Employee_Payroll);

select COUNT(Name) From Employee_Payroll;




