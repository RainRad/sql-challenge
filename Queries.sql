-- Question 1
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees as e
INNER JOIN salaries as s ON
	e.emp_no = s.emp_no
	
-- Question 2
SELECT
	last_name,
	first_name,
	hire_date
FROM employees
WHERE
	hire_date > '1986-1-1'
	
-- Question 3
SELECT
	e.first_name,
	e.last_name,
	e.emp_no,
	m.dept_no,
	d.dept_name
FROM dept_manager as m
INNER JOIN employees as e ON
	m.emp_no = e.emp_no
INNER JOIN departments as d ON
	d.dept_no = m.dept_no
	
-- Question 4
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	de.dept_no,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON
	de.emp_no = e.emp_no
INNER JOIN departments as d ON
	de.dept_no = d.dept_no

-- Question 5
SELECT
	e.first_name,
	e.last_name,
	e.sex
FROM
	employees as e
WHERE
	(e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%')
	
-- Question 6
SELECT
	e.first_name,
	e.last_name,
	d.dept_name,
	de.emp_no,
	de.dept_no
FROM
	employees as e
INNER JOIN dept_emp as de ON
	de.emp_no = e.emp_no
INNER JOIN departments as d ON
	d.dept_no = de.dept_no
WHERE
	dept_name = 'Sales'
	
-- Question 7
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
from employees as e
INNER JOIN dept_emp as de ON
	de.emp_no = e.emp_no
INNER JOIN departments as d ON
	d.dept_no = de.dept_no
WHERE
	d.dept_name = 'Sales'
OR 	d.dept_name = 'Development'


-- Question 8
SELECT
	e.last_name,
	COUNT(e.last_name)
FROM
	employees as e
GROUP BY
	e.last_name
ORDER BY 
	COUNT(e.last_name) DESC