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
where rating_2023 IS NOT NULL;

DESC PERFORMANCE

-- ATTENDANCE TABLE --
SELECT *
FROM attendance
WHERE status = '' 
OR attendance_date is null
;


SELECT COUNT(*)
FROM performance
WHERE rating_2023 IS NULL;


SELECT COUNT(*) AS total_rows
FROM performance;