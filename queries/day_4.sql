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


select DISTINCT