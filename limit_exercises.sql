SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT first_name, last_name
FROM employees
WHERE hire_date
      BETWEEN '1990-01-01'
      AND '1999-12-31'
      AND DATE_FORMAT(birth_date, '%m-%d') = DATE_FORMAT('2000-12-25', '%m-%d')
ORDER BY  birth_date, hire_date DESC
LIMIT 5 OFFSET 45;

