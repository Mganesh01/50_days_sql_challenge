SELECT * FROM clean_employees;

update clean_employees
set emp_name ='unknow'
where emp_name is NULL or 
emp_name=''

update clean_employees
set city="delhi ncr"
where city is null
or city=''

-- finding duplicate --

select emp_id,emp_name,city,count(*) cnt
from clean_employees
group by
emp_id,emp_name,city
having count(*)>=1;

-- deptments --
select dept_id,dept_name
from clean_departments
group by
dept_id,dept_name
having count(*)>=1;

--performance--
select emp_id,rating_2022,rating_2023,rating_2024
from clean_performance
group by
emp_id,rating_2022,rating_2023,rating_2024
having count(*)>=1;

-- salaries --
select emp_id,salary,salary_date    
from clean_salaries
group by
emp_id,salary,salary_date
having count(*)>=1;

-- attendance --
select emp_id,attendance_date,status
from clean_attendance
group by
emp_id,attendance_date,status
having count(*)>=1;
