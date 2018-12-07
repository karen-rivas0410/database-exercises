USE employees;

SELECT * FROM employees;
# Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows

# SELECT CONCAT(first_name, ' ', last_name),hire_date
# FROM employees
# WHERE hire_date IN (
#     SELECT hire_date
#     FROM employees
#     WHERE emp_no = 101010
#     );

select * from employees
where hire_date IN (
   SELECT HIRE_DATE
   FROM employees
   WHERE emp_no = '101010');


select * from titles;
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select * from titles
where emp_no IN (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );

# Find all the current department managers that are female.

select first_name, last_name from employees
where emp_no IN (
select emp_no from dept_manager
where to_date > now()
                )
  and gender = 'f';

