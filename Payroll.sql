----Uc1 creating Database
create database Employee_pay
use Employee_pay
----UC2 creating table
create table Employee
(
empid int not null primary key,
ename varchar(50) not null,
salary int ,
start date not null,
)
----UC3 Creating data
insert into Employee values (1,'Azar',50000,'2023-12-21')
insert into Employee values (2,'Afridi',60000,'2023-02-21')
insert into Employee values (3,'Kousar',70000,'2023-12-11')
insert into Employee values (4,'Rafiq',70000,'2023-12-11')
---UC4Retreving data from table
select * from Employee
---UC5 selected data retrival
select salary from Employee where ename = 'Azar'

-----UC6 Alter Table
alter table Employee add Gender char(1)
update Employee set Gender = 'M' where ename = 'Azar'
update Employee set Gender = 'M' where ename = 'Afridi'
update Employee set Gender = 'M' where ename = 'Rafiq' 
update Employee set Gender = 'F' where ename = 'Kousar'

update Employee set salary = 1000 where empid = 1
---UC7 aggregate Function
select Max(salary) from Employee where Gender = 'M' group by Gender
select Max(salary) from Employee where Gender = 'F' group by Gender

select min(salary) from Employee where Gender = 'M' group by Gender
select min(salary) from Employee where Gender = 'F' group by Gender

select sum(salary) from Employee where Gender = 'M' group by Gender
select sum(salary) from Employee where Gender = 'F' group by Gender

select avg(salary) from Employee where Gender = 'M' group by Gender
select avg(salary) from Employee where Gender = 'F' group by Gender

select count(Gender) from Employee where Gender = 'M' group by Gender
select count(Gender) from Employee where Gender = 'F' group by Gender

----UC8 Extend Table
alter table Employee add PhoneNumber int
alter table Employee add Address varchar(100) 
alter table Employee add Department varchar(100) 
alter table Employee add CompanyAddress varchar(100) not null default 'not provided'

select * from Employee

-----UC9 Extend Table
alter table Employee add BasicPay decimal
alter table Employee add Deduction int
alter table Employee add TaxablePay int
alter table Employee add IncomeTax int
alter table Employee add NetPay int
