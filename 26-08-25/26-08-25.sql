show databases;
use org123;
create table marks(
sid int primary key auto_increment,
sname varchar(100) not null,
mpc_rank int not null,
bipc_rank int not null
);
insert into marks(sname,mpc_rank,bipc_rank) values 
('Karthik',9,41),
('Nanda Gopal',52,2),
('Vardhan',31,17),
('Chandan',12,37),
('Mallikarjun',1,4);
select * from marks;
---------------------------------------------------------
#Q1:Students who have mpc rank <=20 plus bipc rank <=30
select * from marks where mpc_rank<=20 and bipc_rank<=30;

#Q2:Students who have mpc rank <=10 plus bipc rank >30
select * from marks where mpc_rank<=10 and bipc_rank>30;

#Q3:Students who have mpc rank >20 plus bipc rank <=10
select * from marks where mpc_rank>20 and bipc_rank<=10;

#Q4:Students who have mpc rank >20 or bipc rank >=30
select * from marks where mpc_rank>20 or bipc_rank>=30;

#Q5:Students who have mpc rank <20 or bipc rank <30
select * from marks where mpc_rank<20 or bipc_rank<30;

#Q6:Students who have mpc rank >=20 or bipc rank >=30
select * from marks where not mpc_rank>=20 or bipc_rank>=30;
-------------------------------------------------------------
insert into marks(sname,mpc_rank,bipc_rank) values 
('Harshith',9,11),
('Manikantha',32,22),
('Deepu',21,29),
('Raju',2,3),
('Punith',41,14);
update marks set mpc_rank=8 where sid=6;

#Q1:Students who are in first 4 with mpc_rank <10
select * from marks where sid in (1,2,3,4) and mpc_rank<10;

#Q2:Students who are in first 4 with bipc_rank <10
select * from marks where sid in (1,2,3,4) and bipc_rank<10;

#Q3:Students who are not in first 4 with mpc_rank <10
select * from marks where not sid in (1,2,3,4) and mpc_rank<10;

#Q3:Students who are not in first 4 with bipc_rank <10
select * from marks where not sid in (1,2,3,4) and bipc_rank<10;
--------------------------------------------------------------------
#Q!:Students who are ranked in between 10 to 20 in mpc
SELECT * FROM marks where mpc_rank between 10 and 20;

#Q2:Students who are ranked in between 15 to 25 in bipc
SELECT * FROM marks where bipc_rank between 15 and 25;
-------------------------------------------------------------------
#Given Problems
select * from worker;
#Q1. Find workers not in HR or Admin with salary between 70000 and 300000.
select * from worker
 where not department in ('HR','Admin') 
 and salary between 70000 and 300000;

#Q2. Find workers with first name starting with 'V' and salary greater than or equal to 200000.
select * from worker
 where first_name like'V%'
 and salary >=200000;

#Q3. Find workers not in Admin with salary < 100000.
select * from worker
 where department not in ('Admin')
 and salary<100000;
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q1. Find the average salary in the Admin department.
 select avg(salary) as AdminAverageSalary from worker  where department='Admin' ;
 
 #Q2. Total salary for HR and Admin departments combined
 select sum(salary) as TotalSalary from worker where department in ('Admin','HR');
 
 #Q3. Count employees whose first name starts with 'V'.
 select count(first_name) as TotalNames from worker where first_name like 'V%';
 
 #Q4. Total salary of employees with salary between 50000 and 200000.
 select sum(salary) as TotalSalary from worker where salary between 50000 and 200000;
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 select department from worker
 union
 select first_name from worker;
 
 select first_name ,salary,
 case when salary> 300000 then 'Rich'
 else 'poor' end as Status
 from worker;