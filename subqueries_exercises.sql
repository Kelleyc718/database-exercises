USE employees;

SELECT *
FROM employees
WHERE hire_date IN (
  SELECT hire_date FROM employees
  WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE titles.emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);




