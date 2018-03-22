USE employees;

SELECT d.dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE "9999-%";

/* Current Female Department Managers */
SELECT d.dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE "9999-%"
      AND e.gender = 'F';

/* Customer Service Employee Titles */
SELECT t.title AS 'Title',COUNT(t.title)
FROM titles AS t
  JOIN dept_emp AS de
    ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
      AND de.to_date LIKE '9999-%'
      AND t.to_date LIKE '9999-%'
GROUP BY t.title;

/* Current Manager Salaries */
SELECT d.dept_name AS 'Department',CONCAT(e.first_name, ' ', e.last_name) AS 'Name',s.salary AS 'Salary'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries as s
    ON s.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999-%'
      AND s.to_date LIKE '9999-%';


SELECT concat(e.last_name, ' ', e.first_name) AS Employee, manger.first_name Manager
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees manger ON dm.emp_no = manger.emp_no
WHERE de.to_date > curdate() AND dm.to_date > curdate()
ORDER BY  d.dept_name;

SELECT e.gender, avg(salary)
FROM salaries AS sal
JOIN employees AS e
ON sal.emp_no = e.emp_no
GROUP BY e.gender
