USE employees;

SELECT * FROM employees;
# Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows

SELECT emp_no, hire_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_emp
  WHERE emp_no LIKE '101010'
);


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles


# Find all the current department managers that are female.

