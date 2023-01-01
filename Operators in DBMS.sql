#arithmetic
create database arithmetic_operator;
use arithmetic_operator;
create table employee(employee_id int,employee_name varchar(10),salary int);
insert into employee values(1,'Ajay',25000);
insert into employee values(2,'Greeshma',50000);
insert into employee values(3,'Pooja',75000);
insert into employee values(4,'Gowtham',100000);
select salary+100 from employee;
select employee_id,employee_name,salary,(employee_id+salary) from employee where (employee_id+salary)>25000;
select salary-100 from employee;
select employee_id,employee_name,salary,(salary-employee_id) from employee where (salary-employee_id)>25000;
select salary*employee_id from employee;
select salary%100 from employee;

#comparision
create database comparision_operator;
use comparision_operator;
create table contacts(id int,name varchar(50),website1 varchar(50),website2 varchar(50));
insert into contacts values(1,'Johnson','technet.com','techother.com');
insert into contacts values(2,'Anderson','checkyou.com','checkyours.com');
insert into contacts values(3,'Smith','tbd','tbd');
insert into contacts values(4,'Jackson','checkyourmath.com','digminecraft.com');
select id,name from contacts where website1=website2;
select id,name from contacts where name!='Johnson';
select id,name from contacts where contact_id>0;
select id,name from contacts where contact_id>=4;
select id,name from contacts where contact_id<2;
select id,name from contacts where contact_id<=2;

#logical
create database logical_opeartor3;
use logical_opeartor3;
CREATE TABLE employee (id INT, name VARCHAR(25),
                                  emp_city VARCHAR(25),
                                  emp_country VARCHAR(25),
                                  designation varchar(50),
                                  salary int,
                                  PRIMARY KEY (emp_id));
insert into employee values(1,'Sakshi','Mumbai','India','Project Manager',25000);
insert into employee values(2,'Tejaswi','UK','America','HR',50000);
insert into employee values(3,'Ram','Chennai','India','Software Engineer',75000);
insert into employee values(4,'Rani','Delhi','India','Manager',100000);
select id,name from employee where emp_city='UK' and designation='HR';
select id,name from employee where salary between 25000 and 100000;
select id,name from employee where designation='HR' or emp_city='Delhi';
select id,name from employee where emp_city in ('Mumbai','UK','Delhi');
select id,name from employee where not designation='HR';
select id,name from employee where salary like '5%';