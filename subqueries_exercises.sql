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

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE dept_manager.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F' AND to_date > curdate()
    )
);

SELECT first_name FirstName, last_name LastName
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM salaries
  WHERE salary IN (
    SELECT max(salary)
    FROM salaries
  )
);
