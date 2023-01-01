#Views
create database views;
use views;
create table sailors(SID numeric primary key,sname varchar(20),rating int,age float);
insert into sailors values(1,'Dustin',7,45.0);
insert into sailors values(2,'Brutus',1,33.0);
insert into sailors values(3,'Laura',8,55.5);
insert into sailors values(4,'Andy',8,25.5);
insert into sailors values(5,'Rusty',10,35.0);
insert into sailors values(6,'Horatio',7,55.0);
insert into sailors values(7,'Zelda',10,48.0);
insert into sailors values(8,'Horatio',9,45.70);
insert into sailors values(9,'Amy',3,45.89);
insert into sailors values(10,'Bob',3,42.67);
create view Experts as select sname,rating from sailors where rating >7;
select * from Experts;
drop view Experts;