use employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each
# department along with the name of the current manager for that department

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager' FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW() #or could use
ORDER BY `Department Name`;


# Find the name of all departments currently managed by women.

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager' FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
AND gender = 'f'
ORDER BY `Department Name`;


# Find the current titles of employees currently working in the Customer Service department.

SELECT departments.dept_name AS 'Department Name'