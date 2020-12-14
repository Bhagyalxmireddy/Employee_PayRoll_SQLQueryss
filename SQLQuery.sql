create Database Employee_Payroll

use Employee_Payroll
CREATE TABLE Employee_Payroll (
    ID int  IDENTITY(1,1) primary key,
    Name varchar(50),
    Salary Float,
    Date Date,   
);
select * from Employee_payroll;