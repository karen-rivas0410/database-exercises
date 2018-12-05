use employees;

show tables;

select * from  employees;

# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.

select concat(first_name, ' ', last_name) as full_name
from employees
limit 10;


# Add the date of birth for each employee as 'DOB' to the query.

select concat(first_name, ' ', last_name) as full_name, birth_date as DOB
from employees
limit 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'


select concat(emp_no, ' - ',first_name, ' ', last_name) as full_name, birth_date as DOB
from employees
limit 10;
