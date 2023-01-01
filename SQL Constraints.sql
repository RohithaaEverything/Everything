CREATE database key1;
use key1;
create table customers(cno int not null unique ,
cname varchar (10)not null,
address varchar(20),
phno int,
shopno int default(12),
primary key(cno,cname),
foreign key (phno)references customers(cno),
check (address in ("GNT","VIJ")));
DESC customers;