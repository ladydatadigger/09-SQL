
-- 1. List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.

SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date >= DATE'1986-01-01'
  AND hire_date <  DATE'1987-01-01';
  
-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM departments AS d
INNER JOIN dept_manager AS dm ON
d.dept_no = dm.dept_no
INNER JOIN employees AS e ON
dm.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp ON
dept_emp.emp_no = e.emp_no
INNER JOIN departments AS d ON
dept_emp.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Hercules'  AND last_name LIKE 'B%'
;

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d on
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
FULL JOIN dept_emp AS de ON
de.emp_no = e.emp_no
FULL JOIN departments AS d on
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name ='Development';

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


SELECT * FROM employees
WHERE emp_no = '499942';