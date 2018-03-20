USE employees;

SELECT emp_no, concat(last_name, ' ', first_name) AS full_name, birth_date
FROM employees
GROUP BY emp_no
LIMIT 10;
