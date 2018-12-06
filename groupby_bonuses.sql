use employees;

explain titles;

select * from titles;

-- # what are the top three most common job titles?
SELECT title, count(*) FROM titles
GROUP BY title
ORDER BY count(*) DESC
LIMIT 3;

-- # what is the lowest employee number for the first senior engineers in the company?
# SELECT emp_no, title FROM titles
# where title LIKE 'S%'
# AND title like '%r'
# AND emp_no;

-- # what is the most common 'from date' for job titles? for staff only?
# SELECT from_date, title FROM titles;
# SELECT from_date, title FROM titles
# WHERE title LIKE 'st%'
# AND title LIKE '%FF';
# GROUP BY from_date
# ORDER BY count(title) DESC
# LIMIT 1;

-- # what is the highest employee number for an engineer?
SELECT emp_no, title, COUNT(*) FROM titles
WHERE title LIKE 'en%'
GROUP BY emp_no, title
ORDER BY emp_no DESC
LIMIT 1;

-- # what are the names of the 10 most recently hired females in the company? the first 10?
select hire_date, first_name, last_name, count(gender) from employees
WHERE gender = 'f'
group by hire_date, first_name, last_name
order by hire_date DESC
limit 10;

-- # what is the most common birthday?
SELECT birth_date, COUNT(*) FROM employees
GROUP BY birth_date
ORDER BY COUNT(*) desc
LIMIT 1;

-- # what is the most common female birthday? male?
SELECT birth_date, gender, COUNT(*) FROM employees
where gender = 'f'
GROUP BY birth_date, gender
ORDER BY COUNT(*) desc
LIMIT 1;

#       MALE

SELECT birth_date, gender, COUNT(*) FROM employees
where gender = 'M'
GROUP BY birth_date, gender
ORDER BY COUNT(*) desc
LIMIT 1;

-- # what is the most common hire date for female and male employees?

SELECT hire_date, gender, COUNT(*) from employees
group by hire_date, gender
order by count(*) desc
limit 1;
-- # what is the longest last name of someone born on March 8, 1952?
