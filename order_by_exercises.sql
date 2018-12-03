USE employees;

SHOW TABLES;

DESCRIBE employees;

SELECT * FROM employees;

# select * from employees
# where first_name in ('Irena', 'Vidya', 'Maya');

#ANSWER#
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name asc;

# select * from employees
# where first_name is 'Irena'
#    or 'Vidya'
#    or 'Maya';

# Update the query to order by first name and then last name. The first result
# should now be Irena Acton and the last should be Vidya Zweizig
#ANSWER#
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name asc, last_name asc;

# select * from employees
# where hire_date <= '1990';

# Change the order by clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be
# Maya Zyda.
#ANSWER#
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name asc;

# select * from employees
# where birth_date = '-12-25';
#
# select * from employees
# where last_name LIKE '%q%';

# Update your queries for employees with 'E' in their last name to sort the results
# by their employee number. Your results should not change!
select last_name, emp_no from employees
where last_name like '%E%'
order by emp_no;

# Now reverse the sort order for both queries.
# ANSWER
select last_name, emp_no from employees
where last_name like '%E%'
order by emp_no desc;

# Change the query for employees hired in the 90s and born on Christmas such that
# the first result is the oldest employee who was hired last. It should be Khun Bernini.
# ANSWER
select * from employees
where hire_date like '%199%'
and birth_date like '%-12-25%'
order by hire_date desc;

SELECT * FROM employees where hire_date = '1987-02-03';
