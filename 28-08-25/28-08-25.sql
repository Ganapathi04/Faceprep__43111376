use org123;

select* from worker;
#---------------------------------------------------- ORDERED -----------------------------------------------------------
select first_name, last_name, salary, department
 from worker
 order by salary desc;
 
 select * from worker
  where department = 'Admin'
  order by salary desc;
  
select department , count(department) as TotalMembers
 from worker
 group by department
 order by TotalMembers asc;
 
 select department , sum(salary) as TotalSalaries
 from worker
 group by department
 order by TotalSalaries asc;
 
  select department , avg(salary) as AverageSalaries
 from worker
 group by department
 order by department asc;
 select department , max(salary) as MaxSalaries
 from worker
 group by department
 order by MaxSalaries desc;
 
 select department , min(salary) as MinSalaries
 from worker
 group by department
 order by MinSalaries asc;
 #-------------------------------------------------------PROBLEMS-----------------------------------------------------------
 #Q1. Count employees not in HR or Admin.
 select department , count(department) as TotalEmployees
  from worker where department not in ('Admin','HR')
  group by department 
  order by TotalEmployees asc;
  
  #Q2. Find the highest salary in each department.
 select department , max(salary) as MaxSalaries
 from worker
 group by department
 order by MaxSalaries asc;
 #----------------------------------------------------- LIMIT & SKIPPING ----------------------------------------------------------
 select * from worker
 order by salary desc
 limit 2 offset 4 
 ;
 #-------------------------------------------------------- HAVE -----------------------------------------------------------------
#Q1. Find departments with average salary > 100000.
select department, avg(salary) as AverageSalaries
 from worker 
 group by department having avg(salary) >100000
 order by AverageSalaries asc;
 
 #Q2. Find departments where max salary is exactly 500000.
 select department, max(salary) as MaximumSalaries
 from worker 
 group by department
 having max(salary) =500000; 
 
 #Q3. Find departments with more than 1 employee and total salary > 100000.
 select department,count(department) as TotalEmployees,sum(salary) as TotalSalaries
 from worker 
 group by department
 having sum(salary) >100000
 and count(department)>1
 order by TotalSalaries asc; 
 
 #Q4. Find departments with avg salary between 50000 and 200000.
 select department, avg(salary) as AverageSalaries
 from worker 
 group by department
 having avg(salary) between 50000 and 200000
 order by AverageSalaries;
 
 #---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
