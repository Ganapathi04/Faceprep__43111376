use univ;
create table students2(
sno int primary key auto_increment,
sname varchar(100),
age int,
dno int, 
foreign key (dno) references dept1(dno)
);
create table dept1(
dno int primary key auto_increment,
dname varchar(100) not null,
cid int ,
foreign key (cid) references college1(cid) 
);
select * from students1;
create table college1(
cid  int primary key auto_increment,
cname varchar(100) not null,
location varchar(100)
);
insert into college1(cname, location) values ('Sathyabama','Chennai'),('MIT','bengalore');
insert into dept1(dname,cid) values ('Computer Science',1),('ECE',2),('Mechanics',1),('AI',1);
insert into students2(sname,age,dno) value ('Vardhan',18,1),('Gopal',19,3),('Chandhan',18,4),('Karthik',19,2);
SELECT 
    s.sname AS students2,
    d.dname AS dept1,
    c.cname AS college1
FROM 
    dept1 d
JOIN 
    students2 s ON d.dno = s.dno
JOIN 
    college1 c ON d.cid = c.cid;
    
select 
    s.sname AS students2,
    d.dname AS dept1,
    c.cname AS college1
from 
    dept1 d
join 
    students2 s ON d.dno = s.dno
join 
    college1 c ON d.cid = c.cid
where
	d.dname like '_%c%_';
    
