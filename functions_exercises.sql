USE employees;

SHOW TABLES;

DESCRIBE employees;

SELECT * FROM employees;

-- Update your queries for employees whose names start
-- and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.



-- ANSWER
select CONCAT (first_name, ' ', last_name) as FirstName from employees
where last_name like '%E%'
order by emp_no desc;




-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many
-- days they have been working at the company (Hint: You will also need to use now() or curdate())

select * from employees
where hire_date like '%199%'
and birth_date like '%-12-25%'
order by hire_date desc;

select now();
select datediff
select curtime();


