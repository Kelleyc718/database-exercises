USE employees;

SELECT DISTINCT  title
FROM titles;

SELECT last_name, count(first_name)
FROM employees
WHERE last_name
LIKE 'E%e'
GROUP BY last_name, first_name;

SELECT last_name, count(*)
FROM employees
WHERE last_name
LIKE '%q%'
AND last_name
NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT count(*)
FROM employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

