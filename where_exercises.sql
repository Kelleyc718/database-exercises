use employees;

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name FROM employees WHERE last_name LIKE 'E%';

SELECT first_name FROM employees WHERE hire_date LIKE '199%';

SELECT first_name FROM employees WHERE first_name = 'Irena'
                                       OR first_name = 'Vidya'
                                       OR first_name = 'Maya'
                                       AND gender = 'M';

SELECT last_name FROM employees WHERE last_name REGEXP '(^E).*e$';

SELECT first_name FROM employees WHERE hire_date
                                       BETWEEN '1990-01-01'
                                       AND '1999-12-31'
                                       AND DATE_FORMAT(birth_date,'%m-%d') = DATE_FORMAT('2000-12-25', '%m-%d');

SELECT last_name FROM employees WHERE last_name LIKE '%q'
                                      AND last_name NOT LIKE '%qu%';
