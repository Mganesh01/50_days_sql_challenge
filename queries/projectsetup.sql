use 50days_sql_challenge;

create table EMPLOYEES(
    emp_id int primary key,
    emp_name varchar(50) not null,
    age int not null,
    city varchar(50) not null,
    det_id int not null,
    hire_date date not null
)

describe employees;

alter table employees add column city varchar(50) not null;

create table DEPARTMENTS(
    dept_id int primary key,
    dept_name varchar(50) not null

)

describe departments;

ALTER TABLE EMPLOYEES RENAME COLUMN det_id to dept_id;

drop table employees;

select * from employees;

select e.emp_name,d.dept_name
from employees e
join departments d 
on e.dept_id=d.dept_id;

create table SALARIES(
    Salary_id INT PRIMARY KEY,
    emp_id int  not null,
    salary int not null,
    salary_date date not null,
    foreign key (emp_id) references employees(emp_id)
)


create table attendance(
    attendance_id int primary key,
    emp_id int not null,
    attendance_date date not null,
    status varchar(20) not null,
    foreign key (emp_id) references employees(emp_id)
)


create table performance(
    emp_id int primary key,
    rating_2022 int not null,
    rating_2023 int not null,
    rating_2024 int not null)

create table clean_EMPLOYEES
as select * from employees;

create table clean_DEPARTMENTS
as select * from departments;

create table clean_SALARIES
as select * from salaries;

create table clean_attendance
as select * from attendance;

create table clean_performance
as select * from performance;

select emp_name, age, city, dept_id, hire_date 
from clean_employees
where emp_name is NULL or age is NULL
or city is NULL or dept_id is NULL or hire_date is NULL;