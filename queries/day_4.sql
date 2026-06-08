-- employees --
with cte as(
    select *,row_number() over(partition by emp_id,emp_name,city order by emp_id) rn
    from clean_employees                                
)
delete from clean_employees
where emp_id in (select emp_id from cte where rn>1);


-- salaries --
with cte as(
    select *,row_number() over(PARTITION BY emp_id,salary_id,salary order by emp_id) rn
    from clean_salaries
)
delete from clean_salaries
where emp_id in (select emp_id from cte where rn>1);
                                    

-- performance --
with cte as(
    select *,row_number() over(partition by emp_id,rating_2022,rating_2023,rating_2024 order by emp_id) rn
    from clean_performance
)
delete from clean_performance
where emp_id in (select emp_id from cte where rn>1);


select DISTINCT(city)
from clean_employees;

UPDATE clean_employees
SET city = CONCAT(LEFT(TRIM(city), 1), LOWER(SUBSTRING(TRIM(city), 2)))
WHERE city IS NOT NULL;

SELECT * FROM clean_employees
WHERE city IS NOT NULL;
UPDAT

--cleaning city names--

UPDATE clean_employees
SET city= case
when city in('Dlhi','Delhi ncr','New delhi')
then 'Delhi'
when city in('hydbd') then 'Hyderabad'
when city in('Bangalore') then 'Bengalore'
else city
end