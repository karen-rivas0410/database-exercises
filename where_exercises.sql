USE employees;

SHOW TABLES;

DESCRIBE employees;

SELECT * FROM employees;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select * from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya');

select * from employees
where hire_date <= '1990';


select * from employees
where birth_date = '-12-25';

select * from employees
where last_name LIKE '%q%';



SELECT * FROM employees where hire_date = '1987-02-03';
