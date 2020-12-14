
create Database Employee_Payroll
use Employee_Payroll
CREATE TABLE Employee_Payroll (
    ID int  IDENTITY(1,1) primary key,
    Name varchar(50),
    Salary Float,
    Date Date,   
);
select * from Employee_Payroll;
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Sravani', '60000', '2019-11-13');
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Tejaswini', '75000', '2018-05-27');
INSERT INTO Employee_Payroll(Name, Salary,Date)
VALUES ('Akshay', '100000', '2018-02-13');