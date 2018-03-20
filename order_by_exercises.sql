use employees;

SELECT first_name, last_name
FROM employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name ASC;

SELECT last_name
FROM employees
WHERE last_name
LIKE 'E%';

SELECT first_name
FROM employees
WHERE hire_date
LIKE '199%';

SELECT first_name
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
AND gender = 'M';

SELECT last_name, first_name, emp_no
FROM employees
WHERE last_name
REGEXP '(^E).*e$'
ORDER BY last_name, emp_no DESC;

SELECT first_name, last_name
FROM employees
WHERE hire_date
BETWEEN '1990-01-01'
AND '1999-12-31'
AND DATE_FORMAT(birth_date, '%m-%d') = DATE_FORMAT('2000-12-25', '%m-%d')
ORDER BY  birth_date, hire_date DESC;

SELECT last_name
FROM employees
WHERE last_name
LIKE '%q'
AND last_name
NOT LIKE '%qu%';
