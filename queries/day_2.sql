-- EMPLOYEES TABLE --
SELECT *
FROM employees
WHERE emp_name = ''
   OR city = '';

-- DEPARTMENTS TABLE --
SELECT *
from departments
where dept_name = ''
or dept_id is null;

-- SALARIES TABLE --
select *
from salaries
where salary is null
OR salary_date is null;

-- PERFORMANCE TABLE --
select * 
from performance
where rating_2022 is null

-- ATTENDANCE TABLE --
SELECT *
FROM attendance
WHERE status = '' 
OR attendance_date is null
;

