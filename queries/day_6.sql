select * FROM clean_salaries

-- basic statistics about the salary column --

select max(salary),min(salary),avg(salary)
 from clean_salaries
 where salary > 0

--client salary should be between 20k and 200k--
alter table clean_salaries
rename column closers to outliers

update clean_salaries
set outliers=
case
when salary < 20000 then 0
when salary > 200000 then 1
else 
salary 
end

select emp_id,outliers
from clean_salaries
where outliers=1

-- salary updation on salary column for outliers --
update clean_salaries
set salary=
case  when 
emp_id= 35 then 65000
when emp_id= 262 then 97000
else salary
end
